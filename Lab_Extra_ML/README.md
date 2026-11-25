# Session Extra — Time Series and Machine Learning (not examined)

Optional session notebook. There is no tutorial or submission for this lab.

Forecasting as supervised learning: a random forest on lag features (`ranger`), compared against SNAIVE, ETS and ARIMA on one split and on rolling origins. Data: monthly turnover (sales) of Australian cafes, restaurants and takeaway food services (`aus_retail`).

```r
install.packages(c("fpp3", "ranger"))
```

Open `16-extra-ml.Rmd` and Knit. Chunks that need `ranger` are skipped if it is missing.
