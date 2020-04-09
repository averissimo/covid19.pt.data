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
#> ● Document your data (see 'https://r-pkgs.org/data.html')

# EU CDC
covid19.pt <- tibble()
tryCatch(covid19.pt <- covid19.pt.data::covid19.pt, error = function(err) { })

if (nrow(covid19.pt.new) != nrow(covid19.pt)) {
  covid19.pt <- covid19.pt.new
  usethis::use_data(covid19.pt, overwrite = TRUE)
  readr::write_csv(covid19.pt, path = '../data/covid19_pt.csv')
}
#> ✔ Saving 'covid19.pt' to 'data/covid19.pt.rda'
#> ● Document your data (see 'https://r-pkgs.org/data.html')
```

## Data for Portugal

![](README_files/figure-gfm/unnamed-chunk-4-1.svg)<!-- -->

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recoveries |
| :------- | :--------- | --------: | -----: | ---------: |
| Portugal | 2020-04-09 |     13956 |    409 |        205 |
| Portugal | 2020-04-08 |     13141 |    380 |        196 |
| Portugal | 2020-04-07 |     12442 |    345 |        184 |
| Portugal | 2020-04-06 |     11730 |    311 |        140 |
| Portugal | 2020-04-05 |     11278 |    295 |         75 |
| Portugal | 2020-04-04 |     10524 |    266 |         75 |
| Portugal | 2020-04-03 |      9886 |    246 |         68 |
| Portugal | 2020-04-02 |      9034 |    209 |         68 |
| Portugal | 2020-04-01 |      8251 |    187 |         43 |
| Portugal | 2020-03-31 |      7443 |    160 |         43 |

## Data from EU CDC updated

Only showing last 10
days

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2018 |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: |
| 10/04/2020 |  10 |     4 | 2020 |   815 |     29 | Portugal                | PT    | PRT                  |    10281762 |
| 09/04/2020 |   9 |     4 | 2020 |   699 |     35 | Portugal                | PT    | PRT                  |    10281762 |
| 08/04/2020 |   8 |     4 | 2020 |   712 |     34 | Portugal                | PT    | PRT                  |    10281762 |
| 07/04/2020 |   7 |     4 | 2020 |   452 |     16 | Portugal                | PT    | PRT                  |    10281762 |
| 06/04/2020 |   6 |     4 | 2020 |   754 |     29 | Portugal                | PT    | PRT                  |    10281762 |
| 05/04/2020 |   5 |     4 | 2020 |   638 |     20 | Portugal                | PT    | PRT                  |    10281762 |
| 04/04/2020 |   4 |     4 | 2020 |   852 |     37 | Portugal                | PT    | PRT                  |    10281762 |
| 03/04/2020 |   3 |     4 | 2020 |   783 |     22 | Portugal                | PT    | PRT                  |    10281762 |
| 02/04/2020 |   2 |     4 | 2020 |   808 |     27 | Portugal                | PT    | PRT                  |    10281762 |
| 01/04/2020 |   1 |     4 | 2020 |  1035 |     20 | Portugal                | PT    | PRT                  |    10281762 |
