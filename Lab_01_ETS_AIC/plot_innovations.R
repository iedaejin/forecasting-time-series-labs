# Residual plots without feasts::ACF or gg_tsresiduals.
# On some Posit Cloud stacks those helpers receive an empty innovation
# series and ts() stops the knit. stats::acf does not.

stored_resid <- function(m) {
  e <- numeric(0)
  est <- tryCatch(m$fit$est, error = function(err) NULL)
  if (!is.null(est) && ".resid" %in% names(est)) e <- as.numeric(est$.resid)
  e[is.finite(e)]
}

arima_resid <- function(y, m, xreg = NULL) {
  e <- stored_resid(m)
  if (length(e) >= 2) return(e)
  y <- as.numeric(y)
  ok <- is.finite(y)
  if (!is.null(xreg)) {
    xreg <- as.matrix(xreg)
    ok <- ok & apply(xreg, 1, function(r) all(is.finite(r)))
    xreg <- xreg[ok, , drop = FALSE]
  }
  y <- y[ok]
  if (length(y) < 3) return(numeric(0))
  sp <- tryCatch(as.data.frame(m$fit$spec), error = function(err) NULL)
  grab <- function(nm, default) {
    if (!is.null(sp) && nm %in% names(sp)) sp[[nm]][[1]] else default
  }
  p <- grab("p", 0)
  d <- grab("d", 0)
  q <- grab("q", 0)
  P <- grab("P", 0)
  D <- grab("D", 0)
  Q <- grab("Q", 0)
  per <- grab("period", 1)
  use_mean <- d == 0 && D == 0
  if (!is.null(sp) && "constant" %in% names(sp)) {
    use_mean <- isTRUE(sp$constant[[1]]) && d == 0 && D == 0
  }
  args <- list(x = y, order = c(p, d, q), include.mean = use_mean)
  if (is.finite(per) && per > 1 && (P + D + Q) > 0) {
    args$seasonal <- list(order = c(P, D, Q), period = per)
  }
  if (!is.null(xreg)) args$xreg <- xreg
  fit_s <- tryCatch(do.call(stats::arima, args), error = function(err) NULL)
  if (is.null(fit_s)) return(numeric(0))
  e <- as.numeric(stats::residuals(fit_s))
  e[is.finite(e)]
}

ets_resid <- function(y, m, frequency = 1) {
  e <- stored_resid(m)
  if (length(e) >= 2) return(e)
  y <- as.numeric(y)
  y <- y[is.finite(y)]
  if (length(y) < 3) return(numeric(0))
  # stats has HoltWinters, not ets. Used only when fable stored no residuals.
  y_ts <- stats::ts(y, frequency = frequency)
  fit_s <- tryCatch(
    if (frequency > 1) {
      stats::HoltWinters(y_ts)
    } else {
      stats::HoltWinters(y_ts, gamma = FALSE)
    },
    error = function(err) NULL
  )
  if (is.null(fit_s)) return(numeric(0))
  e <- as.numeric(stats::residuals(fit_s))
  e[is.finite(e)]
}

snaive_resid <- function(y, lag) {
  e <- as.numeric(diff(as.numeric(y), lag = lag))
  e[is.finite(e)]
}

lm_resid <- function(formula, data, m) {
  e <- stored_resid(m)
  if (length(e) >= 2) return(e)
  fit_s <- tryCatch(stats::lm(formula, data = data), error = function(err) NULL)
  if (is.null(fit_s)) return(numeric(0))
  e <- as.numeric(stats::residuals(fit_s))
  e[is.finite(e)]
}

plot_innovations <- function(time, e, title) {
  e <- as.numeric(e)
  e <- e[is.finite(e)]
  if (length(e) < 2) {
    message("No residuals to plot: ", title)
    return(invisible(NULL))
  }
  n <- min(length(time), length(e))
  time <- tail(time, n)
  e <- tail(e, n)
  innov <- tibble::tibble(time = time, e = e)
  print(
    ggplot2::ggplot(innov, ggplot2::aes(time, e)) +
      ggplot2::geom_hline(yintercept = 0, colour = "grey70") +
      ggplot2::geom_line() +
      ggplot2::labs(title = title, x = NULL, y = NULL)
  )
  acf_obj <- stats::acf(e, plot = FALSE, na.action = na.omit)
  acf_df <- tibble::tibble(
    lag = as.numeric(acf_obj$lag),
    acf = as.numeric(acf_obj$acf)
  )
  acf_df <- acf_df[acf_df$lag > 0, ]
  band <- 2 / sqrt(length(e))
  print(
    ggplot2::ggplot(acf_df, ggplot2::aes(lag, acf)) +
      ggplot2::geom_hline(
        yintercept = c(-band, 0, band),
        linetype = c(2, 1, 2),
        colour = "steelblue"
      ) +
      ggplot2::geom_col(width = 0.25) +
      ggplot2::labs(title = paste("ACF:", title), x = "lag", y = "acf")
  )
  invisible(e)
}
