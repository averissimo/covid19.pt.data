COVID-19 Portugal data
================

> R package with latest data scrapped from official sources

It downloads the [daily
report](https://covid19.min-saude.pt/relatorio-de-situacao/) from DGS
and stores this in data-friendly format under `/data` directory.

## Check for new reports

``` r
dat <- download.updated.pt()

dgs.pt.new     <- dat$dgs.pt
covid19.pt.new <- dat$cdc.eu
```

## Stores in the package

``` r
# DGS PT
if (nrow(dgs.pt.new) != nrow(dgs.pt)) {
  dgs.pt <- dgs.pt.new
  usethis::use_data(dgs.pt, overwrite = TRUE)
  readr::write_csv(dgs.pt, path = '../data/dgs_pt.csv')
}
#> ✔ Setting active project to '/github/workspace/repo'
#> ✔ Saving 'dgs.pt' to 'data/dgs.pt.rda'

# EU CDC
covid19.pt <- tibble()
tryCatch(covid19.pt <- covid19.pt.data::covid19.pt, error = function(err) { })

if (nrow(covid19.pt.new) != nrow(covid19.pt)) {
  covid19.pt <- covid19.pt.new
  usethis::use_data(covid19.pt, overwrite = TRUE)
  readr::write_csv(covid19.pt, path = '../data/covid19_pt.csv')
}
#> ✔ Saving 'covid19.pt' to 'data/covid19.pt.rda'
```

## Data from DGS

| country  | date       | confirmed | deaths | recoveries |
| :------- | :--------- | --------: | -----: | ---------: |
| Portugal | 2020-04-08 |     13141 |    380 |        196 |
| Portugal | 2020-04-07 |     12442 |    345 |        184 |
| Portugal | 2020-04-07 |     12442 |    345 |        184 |
| Portugal | 2020-04-06 |     11730 |    311 |        140 |
| Portugal | 2020-04-06 |     11730 |    311 |        140 |
| Portugal | 2020-04-06 |     11730 |    311 |        140 |
| Portugal | 2020-04-05 |     11278 |    295 |         75 |
| Portugal | 2020-04-05 |     11278 |    295 |         75 |
| Portugal | 2020-04-05 |     11278 |    295 |         75 |
| Portugal | 2020-04-05 |     11278 |    295 |         75 |
| Portugal | 2020-04-04 |     10524 |    266 |         75 |
| Portugal | 2020-04-04 |     10524 |    266 |         75 |
| Portugal | 2020-04-04 |     10524 |    266 |         75 |
| Portugal | 2020-04-04 |     10524 |    266 |         75 |
| Portugal | 2020-04-04 |     10524 |    266 |         75 |
| Portugal | 2020-04-03 |      9886 |    246 |         68 |
| Portugal | 2020-04-03 |      9886 |    246 |         68 |
| Portugal | 2020-04-03 |      9886 |    246 |         68 |
| Portugal | 2020-04-03 |      9886 |    246 |         68 |
| Portugal | 2020-04-03 |      9886 |    246 |         68 |
| Portugal | 2020-04-03 |      9886 |    246 |         68 |
| Portugal | 2020-04-02 |      9034 |    209 |         68 |
| Portugal | 2020-04-02 |      9034 |    209 |         68 |
| Portugal | 2020-04-02 |      9034 |    209 |         68 |
| Portugal | 2020-04-02 |      9034 |    209 |         68 |
| Portugal | 2020-04-02 |      9034 |    209 |         68 |
| Portugal | 2020-04-02 |      9034 |    209 |         68 |
| Portugal | 2020-04-02 |      9034 |    209 |         68 |
| Portugal | 2020-04-01 |      8251 |    187 |         43 |
| Portugal | 2020-04-01 |      8251 |    187 |         43 |
| Portugal | 2020-04-01 |      8251 |    187 |         43 |
| Portugal | 2020-04-01 |      8251 |    187 |         43 |
| Portugal | 2020-04-01 |      8251 |    187 |         43 |
| Portugal | 2020-04-01 |      8251 |    187 |         43 |
| Portugal | 2020-04-01 |      8251 |    187 |         43 |
| Portugal | 2020-03-31 |      7443 |    160 |         43 |
| Portugal | 2020-03-31 |      7443 |    160 |         43 |
| Portugal | 2020-03-31 |      7443 |    160 |         43 |
| Portugal | 2020-03-31 |      7443 |    160 |         43 |
| Portugal | 2020-03-31 |      7443 |    160 |         43 |
| Portugal | 2020-03-31 |      7443 |    160 |         43 |
| Portugal | 2020-03-31 |      7443 |    160 |         43 |
| Portugal | 2020-03-30 |      6408 |    140 |         43 |
| Portugal | 2020-03-30 |      6408 |    140 |         43 |
| Portugal | 2020-03-30 |      6408 |    140 |         43 |
| Portugal | 2020-03-30 |      6408 |    140 |         43 |
| Portugal | 2020-03-30 |      6408 |    140 |         43 |
| Portugal | 2020-03-30 |      6408 |    140 |         43 |
| Portugal | 2020-03-30 |      6408 |    140 |         43 |
| Portugal | 2020-03-29 |      5962 |    119 |         43 |
| Portugal | 2020-03-29 |      5962 |    119 |         43 |
| Portugal | 2020-03-29 |      5962 |    119 |         43 |
| Portugal | 2020-03-29 |      5962 |    119 |         43 |
| Portugal | 2020-03-29 |      5962 |    119 |         43 |
| Portugal | 2020-03-29 |      5962 |    119 |         43 |
| Portugal | 2020-03-29 |      5962 |    119 |         43 |
| Portugal | 2020-03-28 |      5170 |    100 |         43 |
| Portugal | 2020-03-28 |      5170 |    100 |         43 |
| Portugal | 2020-03-28 |      5170 |    100 |         43 |
| Portugal | 2020-03-28 |      5170 |    100 |         43 |
| Portugal | 2020-03-28 |      5170 |    100 |         43 |
| Portugal | 2020-03-28 |      5170 |    100 |         43 |
| Portugal | 2020-03-28 |      5170 |    100 |         43 |
| Portugal | 2020-03-27 |      4268 |     76 |         43 |
| Portugal | 2020-03-27 |      4268 |     76 |         43 |
| Portugal | 2020-03-27 |      4268 |     76 |         43 |
| Portugal | 2020-03-27 |      4268 |     76 |         43 |
| Portugal | 2020-03-27 |      4268 |     76 |         43 |
| Portugal | 2020-03-27 |      4268 |     76 |         43 |
| Portugal | 2020-03-27 |      4268 |     76 |         43 |
| Portugal | 2020-03-26 |      3544 |     60 |         43 |
| Portugal | 2020-03-26 |      3544 |     60 |         43 |
| Portugal | 2020-03-26 |      3544 |     60 |         43 |
| Portugal | 2020-03-26 |      3544 |     60 |         43 |
| Portugal | 2020-03-26 |      3544 |     60 |         43 |
| Portugal | 2020-03-26 |      3544 |     60 |         43 |
| Portugal | 2020-03-26 |      3544 |     60 |         43 |
| Portugal | 2020-03-25 |      2995 |     43 |         22 |
| Portugal | 2020-03-25 |      2995 |     43 |         22 |
| Portugal | 2020-03-25 |      2995 |     43 |         22 |
| Portugal | 2020-03-25 |      2995 |     43 |         22 |
| Portugal | 2020-03-25 |      2995 |     43 |         22 |
| Portugal | 2020-03-25 |      2995 |     43 |         22 |
| Portugal | 2020-03-25 |      2995 |     43 |         22 |
| Portugal | 2020-03-24 |      2362 |     33 |         22 |
| Portugal | 2020-03-24 |      2362 |     33 |         22 |
| Portugal | 2020-03-24 |      2362 |     33 |         22 |
| Portugal | 2020-03-24 |      2362 |     33 |         22 |
| Portugal | 2020-03-24 |      2362 |     33 |         22 |
| Portugal | 2020-03-24 |      2362 |     33 |         22 |
| Portugal | 2020-03-24 |      2362 |     33 |         22 |

## Data from EU CDC updated

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2018 |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: |
| 09/04/2020 |   9 |     4 | 2020 |   699 |     35 | Portugal                | PT    | PRT                  |    10281762 |
| 08/04/2020 |   8 |     4 | 2020 |   712 |     34 | Portugal                | PT    | PRT                  |    10281762 |
| 07/04/2020 |   7 |     4 | 2020 |   452 |     16 | Portugal                | PT    | PRT                  |    10281762 |
| 06/04/2020 |   6 |     4 | 2020 |   754 |     29 | Portugal                | PT    | PRT                  |    10281762 |
| 05/04/2020 |   5 |     4 | 2020 |   638 |     20 | Portugal                | PT    | PRT                  |    10281762 |
| 04/04/2020 |   4 |     4 | 2020 |   852 |     37 | Portugal                | PT    | PRT                  |    10281762 |
| 03/04/2020 |   3 |     4 | 2020 |   783 |     22 | Portugal                | PT    | PRT                  |    10281762 |
| 02/04/2020 |   2 |     4 | 2020 |   808 |     27 | Portugal                | PT    | PRT                  |    10281762 |
| 01/04/2020 |   1 |     4 | 2020 |  1035 |     20 | Portugal                | PT    | PRT                  |    10281762 |
| 31/03/2020 |  31 |     3 | 2020 |   446 |     21 | Portugal                | PT    | PRT                  |    10281762 |
| 30/03/2020 |  30 |     3 | 2020 |   792 |     19 | Portugal                | PT    | PRT                  |    10281762 |
| 29/03/2020 |  29 |     3 | 2020 |   902 |     24 | Portugal                | PT    | PRT                  |    10281762 |
| 28/03/2020 |  28 |     3 | 2020 |   724 |     16 | Portugal                | PT    | PRT                  |    10281762 |
| 27/03/2020 |  27 |     3 | 2020 |   549 |     17 | Portugal                | PT    | PRT                  |    10281762 |
| 26/03/2020 |  26 |     3 | 2020 |   633 |     10 | Portugal                | PT    | PRT                  |    10281762 |
| 25/03/2020 |  25 |     3 | 2020 |   302 |     10 | Portugal                | PT    | PRT                  |    10281762 |
| 24/03/2020 |  24 |     3 | 2020 |   460 |      9 | Portugal                | PT    | PRT                  |    10281762 |
| 23/03/2020 |  23 |     3 | 2020 |   320 |      2 | Portugal                | PT    | PRT                  |    10281762 |
| 22/03/2020 |  22 |     3 | 2020 |   260 |      6 | Portugal                | PT    | PRT                  |    10281762 |
| 21/03/2020 |  21 |     3 | 2020 |   235 |      3 | Portugal                | PT    | PRT                  |    10281762 |
| 20/03/2020 |  20 |     3 | 2020 |   143 |      1 | Portugal                | PT    | PRT                  |    10281762 |
| 19/03/2020 |  19 |     3 | 2020 |   194 |      1 | Portugal                | PT    | PRT                  |    10281762 |
| 18/03/2020 |  18 |     3 | 2020 |   117 |      1 | Portugal                | PT    | PRT                  |    10281762 |
| 17/03/2020 |  17 |     3 | 2020 |    86 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 16/03/2020 |  16 |     3 | 2020 |    76 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 15/03/2020 |  15 |     3 | 2020 |    57 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 14/03/2020 |  14 |     3 | 2020 |    34 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 13/03/2020 |  13 |     3 | 2020 |    19 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 12/03/2020 |  12 |     3 | 2020 |    18 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 11/03/2020 |  11 |     3 | 2020 |     2 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 10/03/2020 |  10 |     3 | 2020 |     9 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 09/03/2020 |   9 |     3 | 2020 |     9 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 08/03/2020 |   8 |     3 | 2020 |     8 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 07/03/2020 |   7 |     3 | 2020 |     4 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 06/03/2020 |   6 |     3 | 2020 |     4 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 05/03/2020 |   5 |     3 | 2020 |     1 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 04/03/2020 |   4 |     3 | 2020 |     2 |      0 | Portugal                | PT    | PRT                  |    10281762 |
| 03/03/2020 |   3 |     3 | 2020 |     2 |      0 | Portugal                | PT    | PRT                  |    10281762 |
