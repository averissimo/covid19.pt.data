COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, July 12, 2020)*

It downloads the [daily
report](https://covid19.min-saude.pt/relatorio-de-situacao/) from DGS
and stores this in data-friendly format under `/data` directory.

If you are here just for the data, this is what you want:

  - [dgs\_pt.csv](raw/master/data/dgs_pt.csv) *(raw data from Portugal’s
    DGS)*
  - [covid19\_pt.csv](raw/master/data/covid19_pt.csv) *(updated EU CDC
    dataset only featuring Portugal)*

A more detailed analysis of this data is [available
here](https://averissimo.github.io/covid19-analysis/portugal.html)

# Check for new reports

``` r
download.updated.pt()
```

## Data for Portugal

![](README_files/figure-gfm/unnamed-chunk-7-1.svg)<!-- -->

![](README_files/figure-gfm/unnamed-chunk-8-1.svg)<!-- -->

# New cases / deaths by age groups

Only showing 1 day *(July 12)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-07-12 |     46512 |   1660 |     30907 | 405110 |          462 |     64 |                 809 |                 690 |                 947 |                1080 |                3219 |                3758 |                3573 |                3958 |                3402 |                4269 |                3022 |                4133 |                2218 |                2509 |                1540 |                1749 |              1807 |              3781 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |              10 |              38 |              17 |             102 |              48 |             194 |             126 |           484 |           627 |
| Portugal | 2020-07-11 |     46221 |   1654 |     30655 | 403748 |          459 |     68 |                 802 |                 676 |                 938 |                1068 |                3200 |                3737 |                3538 |                3940 |                3380 |                4244 |                2997 |                4129 |                2198 |                2492 |                1534 |                1738 |              1802 |              3770 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |              10 |              38 |              17 |             102 |              47 |             193 |             125 |           481 |           627 |
| Portugal | 2020-07-10 |     45679 |   1646 |     30350 | 401296 |          471 |     66 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |              10 |              38 |              17 |             102 |              46 |             190 |             125 |           478 |           626 |
| Portugal | 2020-07-09 |     45277 |   1644 |     30049 | 398922 |          487 |     73 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |              10 |              38 |              17 |             102 |              46 |             190 |             125 |           477 |           625 |
| Portugal | 2020-07-08 |     44859 |   1631 |     29714 | 396521 |          512 |     74 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |              10 |              38 |              16 |             102 |              46 |             190 |             125 |           472 |           618 |
| Portugal | 2020-07-07 |     44416 |   1629 |     29445 | 394134 |          511 |     76 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |              10 |              38 |              15 |             102 |              46 |             189 |             125 |           472 |           618 |
| Portugal | 2020-07-06 |     44129 |   1620 |     29166 | 391651 |          513 |     74 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |              10 |              38 |              15 |             102 |              46 |             187 |             123 |           469 |           616 |
| Portugal | 2020-07-05 |     43897 |   1614 |     29017 | 390400 |          504 |     73 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |              10 |              37 |              15 |             100 |              46 |             187 |             123 |           467 |           615 |
| Portugal | 2020-07-04 |     43569 |   1605 |     28772 | 388969 |          489 |     73 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |              10 |              37 |              15 |             100 |              46 |             187 |             122 |           466 |           608 |
| Portugal | 2020-07-03 |     43156 |   1598 |     28424 | 386926 |          495 |     72 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |               9 |              37 |              15 |              99 |              46 |             187 |             122 |           464 |           605 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp | Cumulative\_number\_for\_14\_days\_of\_COVID-19\_cases\_per\_100000 |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- | ------------------------------------------------------------------: |
| 13/07/2020 |  13 |     7 | 2020 |   291 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                                  NA |
| 12/07/2020 |  12 |     7 | 2020 |   542 |      8 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            48.96553 |
| 11/07/2020 |  11 |     7 | 2020 |   402 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            46.83448 |
| 10/07/2020 |  10 |     7 | 2020 |   418 |     13 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            47.31129 |
| 09/07/2020 |   9 |     7 | 2020 |   443 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            46.27009 |
| 08/07/2020 |   8 |     7 | 2020 |   287 |      9 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            45.53055 |
| 07/07/2020 |   7 |     7 | 2020 |   232 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            46.09494 |
| 06/07/2020 |   6 |     7 | 2020 |   328 |      9 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            46.35767 |
| 05/07/2020 |   5 |     7 | 2020 |   413 |      7 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            46.00736 |
| 04/07/2020 |   4 |     7 | 2020 |   374 |     11 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            45.65705 |
