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

    #> # A tibble: 10 x 5
    #>    country  date       confirmed deaths recoveries
    #>    <chr>    <date>         <int>  <int>      <int>
    #>  1 Portugal 2020-04-02      9034    209         68
    #>  2 Portugal 2020-04-01      8251    187         43
    #>  3 Portugal 2020-03-31      7443    160         43
    #>  4 Portugal 2020-03-30      6408    140         43
    #>  5 Portugal 2020-03-29      5962    119         43
    #>  6 Portugal 2020-03-28      5170    100         43
    #>  7 Portugal 2020-03-27      4268     76         43
    #>  8 Portugal 2020-03-26      3544     60         43
    #>  9 Portugal 2020-03-25      2995     43         22
    #> 10 Portugal 2020-03-24      2362     33         22

## Data from EU CDC updated

``` r
covid19.pt.new
#> # A tibble: 32 x 10
#>    dateRep   day month  year cases deaths countryterritor… geoId popData2018
#>    <chr>   <dbl> <dbl> <dbl> <dbl>  <dbl> <chr>            <chr>       <dbl>
#>  1 03/04/…     3     4  2020   783     22 PRT              PT       10281762
#>  2 02/04/…     2     4  2020   808     27 PRT              PT       10281762
#>  3 01/04/…     1     4  2020  1035     20 PRT              PT       10281762
#>  4 31/03/…    31     3  2020   446     21 PRT              PT       10281762
#>  5 30/03/…    30     3  2020   792     19 PRT              PT       10281762
#>  6 29/03/…    29     3  2020   902     24 PRT              PT       10281762
#>  7 28/03/…    28     3  2020   724     16 PRT              PT       10281762
#>  8 27/03/…    27     3  2020   549     17 PRT              PT       10281762
#>  9 26/03/…    26     3  2020   633     10 PRT              PT       10281762
#> 10 25/03/…    25     3  2020   302     10 PRT              PT       10281762
#> # … with 22 more rows, and 1 more variable: countriesAndTerritories <chr>
```
