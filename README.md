# Forecasting for Time Series — R Labs (PPLEDBA)

**Student GitHub repo:** https://github.com/iedaejin/forecasting-time-series-labs

This repository is **for students only**. Do not add instructor keys, graders, answer banks, or private notes here.

These are the student R labs for **Forecasting for Time Series** (PPLEDBA). Use **Posit Cloud** or local RStudio.

## Workflow
1. Open one lab folder (e.g. `Lab_00_TSA_Review`).
2. Open the `.Rmd` file, work through it, and **Knit** to HTML.
3. Submit the knitted HTML (or `.Rmd` + HTML) per LMS instructions.

**Lab 0 interactive:** `Lab_00_TSA_Review/00-tsa-review-learnr.Rmd` — open in RStudio and **Run Document** (needs `learnr` + `gradethis` + `fpp3`).

## Packages
```r
install.packages("fpp3")
install.packages(c("learnr", "remotes"))
# install.packages("remotes")
remotes::install_github("rstudio/gradethis")
install.packages("fable.prophet")  # Lab 13 / Session 13 (needs Stan toolchain)
library(fpp3)
```

## Lab sequence
| Folder | File | Session |
|--------|------|--------:|
| `Lab_00_TSA_Review` | `00-tsa-review.Rmd` | 0 |
| `Lab_01_ETS_AIC` | `01-ets-aic.Rmd` | 1 |
| `Lab_02_Stationarity_Differencing` | `02-stationarity-differencing.Rmd` | 2 |
| `Lab_03_ARMA` | `03-arma.Rmd` | 3 |
| `Lab_04_Nonseasonal_ARIMA` | `04-nonseasonal-arima.Rmd` | 4 |
| `Lab_05_Seasonal_ARIMA` | `05-seasonal-arima.Rmd` | 5 |
| `Lab_06_Practice_ETS_ARIMA` | `06-practice-ets-arima.Rmd` | 6 |
| `Lab_07_Mock_Prep` | `07-practice-mock-prep.Rmd` | 7 |
| `Lab_08_Mock_Day` | `08-mock-setup.Rmd` | 8 |
| `Lab_09_TS_Regression_1` | `09-ts-regression-1.Rmd` | 9 |
| `Lab_10_TS_Regression_2` | `10-ts-regression-2.Rmd` | 10 |
| `Lab_11_Fourier_Seasonality` | `11-fourier-seasonality.Rmd` | 11 |
| `Lab_12_ARIMA_Regressors` | `12-arima-regressors.Rmd` | 12 |
| `Lab_13_Prophet_vs_ARIMA` | `13-prophet-vs-arima.Rmd` | 13 |
| `Lab_14_Final_Review` | `14-final-review.Rmd` | 14 |

Session **15** (final exam) has no student lab here.

## AI policy
Do not submit GenAI-written lab solutions. You may ask AI to explain class code or help debug *your* code.

**Faculty:** Prof. Dae-Jin Lee (`daelee@faculty.ie.edu`)
