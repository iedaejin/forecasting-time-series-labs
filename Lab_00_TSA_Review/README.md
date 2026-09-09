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

On **Done**: download `Lab00_TSA_Review_<name>.txt` and upload it to the Lab 0 assignment.

That `.txt` is **completion evidence** (who you are + which steps you submitted). It is not an auto-graded score sheet.
