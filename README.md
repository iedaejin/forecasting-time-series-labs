# Forecasting for Time Series — R Labs (PPLEDBA)

**Student GitHub repo:** https://github.com/iedaejin/forecasting-time-series-labs

This repository is **for students only**. Do not add instructor keys, graders, answer banks, or private notes here.

These are the student R labs for **Forecasting for Time Series** (PPLEDBA). Use **Posit Cloud** or local RStudio.

## Posit Cloud workflow
1. Create one Posit Cloud assignment per lab folder.
2. Students open `tutorial.Rmd` and click **Run Document** (needs `learnr` and `fpp3`).
3. They answer the questions, type their name, and download the `.txt`.
4. They upload that text file. It contains their name, the date, and each answer.

The longer session `.Rmd` in the same folder is the optional guided analysis. The file to submit is the `.txt` from the tutorial. Do not Knit the whole session notebook on Posit Cloud if a chunk fails; the tutorial runs one exercise at a time.

```r
install.packages(c("learnr", "fpp3"))
# From the lab folder:
rmarkdown::run("tutorial.Rmd")
```

Every `Lab_00` … `Lab_14` folder has `tutorial.Rmd` and `lab_submission.R`.

## Packages
```r
install.packages(c("learnr", "fpp3"))
install.packages("fable.prophet")  # optional, Lab 13 session notebook
library(fpp3)
```

## Lab sequence
Open `tutorial.Rmd` in each folder. The session notebook is optional.

| Folder | Tutorial | Session |
|--------|----------|--------:|
| `Lab_00_TSA_Review` | `tutorial.Rmd` | 0 |
| `Lab_01_ETS_AIC` | `tutorial.Rmd` | 1 |
| `Lab_02_Stationarity_Differencing` | `tutorial.Rmd` | 2 |
| `Lab_03_ARMA` | `tutorial.Rmd` | 3 |
| `Lab_04_Nonseasonal_ARIMA` | `tutorial.Rmd` | 4 |
| `Lab_05_Seasonal_ARIMA` | `tutorial.Rmd` | 5 |
| `Lab_06_Practice_ETS_ARIMA` | `tutorial.Rmd` | 6 |
| `Lab_07_Mock_Prep` | `tutorial.Rmd` | 7 |
| `Lab_08_Mock_Day` | `tutorial.Rmd` | 8 |
| `Lab_09_TS_Regression_1` | `tutorial.Rmd` | 9 |
| `Lab_10_TS_Regression_2` | `tutorial.Rmd` | 10 |
| `Lab_11_Fourier_Seasonality` | `tutorial.Rmd` | 11 |
| `Lab_12_ARIMA_Regressors` | `tutorial.Rmd` | 12 |
| `Lab_13_Prophet_vs_ARIMA` | `tutorial.Rmd` | 13 |
| `Lab_14_Final_Review` | `tutorial.Rmd` | 14 |

Session **15** (final exam) has no student lab here.

## AI policy
Do not submit GenAI-written lab solutions. You may ask AI to explain class code or help debug *your* code.

**Faculty:** Prof. Dae-Jin Lee (`daelee@faculty.ie.edu`)
