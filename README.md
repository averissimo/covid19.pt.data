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

# EU CDC
covid19.pt <- tibble()
tryCatch(covid19.pt <- covid19.pt.data::covid19.pt, error = function(err) { })

if (nrow(covid19.pt.new) != nrow(covid19.pt)) {
  covid19.pt <- covid19.pt.new
  usethis::use_data(covid19.pt, overwrite = TRUE)
  readr::write_csv(covid19.pt, path = '../data/covid19_pt.csv')
}
```

## Data from DGS

| country  | date       | confirmed | deaths | recoveries |
| :------- | :--------- | --------: | -----: | ---------: |
| Portugal | 2020-04-02 |      9034 |    209 |         68 |
| Portugal | 2020-04-01 |      8251 |    187 |         43 |
| Portugal | 2020-03-31 |      7443 |    160 |         43 |
| Portugal | 2020-03-30 |      6408 |    140 |         43 |
| Portugal | 2020-03-29 |      5962 |    119 |         43 |
| Portugal | 2020-03-28 |      5170 |    100 |         43 |
| Portugal | 2020-03-27 |      4268 |     76 |         43 |
| Portugal | 2020-03-26 |      3544 |     60 |         43 |
| Portugal | 2020-03-25 |      2995 |     43 |         22 |
| Portugal | 2020-03-24 |      2362 |     33 |         22 |

## Data from EU CDC updated

| dateRep    | day | month | year | cases | deaths | countryterritoryCode | geoId | popData2018 | countriesAndTerritories |
| :--------- | --: | ----: | ---: | ----: | -----: | :------------------- | :---- | ----------: | :---------------------- |
| 03/04/2020 |   3 |     4 | 2020 |   783 |     22 | PRT                  | PT    |    10281762 | NA                      |
| 02/04/2020 |   2 |     4 | 2020 |   808 |     27 | PRT                  | PT    |    10281762 | Portugal                |
| 01/04/2020 |   1 |     4 | 2020 |  1035 |     20 | PRT                  | PT    |    10281762 | Portugal                |
| 31/03/2020 |  31 |     3 | 2020 |   446 |     21 | PRT                  | PT    |    10281762 | Portugal                |
| 30/03/2020 |  30 |     3 | 2020 |   792 |     19 | PRT                  | PT    |    10281762 | Portugal                |
| 29/03/2020 |  29 |     3 | 2020 |   902 |     24 | PRT                  | PT    |    10281762 | Portugal                |
| 28/03/2020 |  28 |     3 | 2020 |   724 |     16 | PRT                  | PT    |    10281762 | Portugal                |
| 27/03/2020 |  27 |     3 | 2020 |   549 |     17 | PRT                  | PT    |    10281762 | Portugal                |
| 26/03/2020 |  26 |     3 | 2020 |   633 |     10 | PRT                  | PT    |    10281762 | Portugal                |
| 25/03/2020 |  25 |     3 | 2020 |   302 |     10 | PRT                  | PT    |    10281762 | Portugal                |
| 24/03/2020 |  24 |     3 | 2020 |   460 |      9 | PRT                  | PT    |    10281762 | Portugal                |
| 23/03/2020 |  23 |     3 | 2020 |   320 |      2 | PRT                  | PT    |    10281762 | Portugal                |
| 22/03/2020 |  22 |     3 | 2020 |   260 |      6 | PRT                  | PT    |    10281762 | Portugal                |
| 21/03/2020 |  21 |     3 | 2020 |   235 |      3 | PRT                  | PT    |    10281762 | Portugal                |
| 20/03/2020 |  20 |     3 | 2020 |   143 |      1 | PRT                  | PT    |    10281762 | Portugal                |
| 19/03/2020 |  19 |     3 | 2020 |   194 |      1 | PRT                  | PT    |    10281762 | Portugal                |
| 18/03/2020 |  18 |     3 | 2020 |   117 |      1 | PRT                  | PT    |    10281762 | Portugal                |
| 17/03/2020 |  17 |     3 | 2020 |    86 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 16/03/2020 |  16 |     3 | 2020 |    76 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 15/03/2020 |  15 |     3 | 2020 |    57 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 14/03/2020 |  14 |     3 | 2020 |    34 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 13/03/2020 |  13 |     3 | 2020 |    19 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 12/03/2020 |  12 |     3 | 2020 |    18 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 11/03/2020 |  11 |     3 | 2020 |     2 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 10/03/2020 |  10 |     3 | 2020 |     9 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 09/03/2020 |   9 |     3 | 2020 |     9 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 08/03/2020 |   8 |     3 | 2020 |     8 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 07/03/2020 |   7 |     3 | 2020 |     4 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 06/03/2020 |   6 |     3 | 2020 |     4 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 05/03/2020 |   5 |     3 | 2020 |     1 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 04/03/2020 |   4 |     3 | 2020 |     2 |      0 | PRT                  | PT    |    10281762 | Portugal                |
| 03/03/2020 |   3 |     3 | 2020 |     2 |      0 | PRT                  | PT    |    10281762 | Portugal                |
