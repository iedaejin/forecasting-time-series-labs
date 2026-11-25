# Lab 16 — Time Series, Machine Learning and Finance (extra, not examined)

Optional session notebook for the extra Session 16. There is no tutorial or submission for this lab.

- **Part A:** forecasting as supervised learning, with a random forest on lag features (`ranger`), compared against SNAIVE, ETS and ARIMA on one split and on rolling origins.
- **Part B:** stock returns, volatility clustering, and ARCH/GARCH models (`fGarch`).

```r
install.packages(c("fpp3", "ranger", "fGarch"))
```

Open `16-ml-and-finance.Rmd` and Knit. Chunks that need `ranger` or `fGarch` are skipped if those packages are missing.
