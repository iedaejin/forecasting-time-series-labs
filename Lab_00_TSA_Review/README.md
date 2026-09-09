# Lab 0 — TSA review

| File | Use |
|------|-----|
| [`00-tsa-review.Rmd`](00-tsa-review.Rmd) | Static lab (Knit to HTML) |
| [`00-tsa-review-learnr.Rmd`](00-tsa-review-learnr.Rmd) | Interactive **learnr** tutorial |

## Run the learnr locally

```r
install.packages(c("learnr", "remotes", "fpp3"))
# install.packages("remotes")
remotes::install_github("rstudio/gradethis")

# In RStudio: open 00-tsa-review-learnr.Rmd → Run Document
rmarkdown::run("00-tsa-review-learnr.Rmd")
```

## Submit to Blackboard Ultra

On **Done**, click **Save .txt to Downloads**, then upload `Lab00_TSA_Review_<name>.txt`.

Do **not** submit HTML (`00-tsa-review-learnr.html` or a failed `dl_lab00.html` download from the RStudio Viewer).
