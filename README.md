COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Tuesday, July 21, 2020)*

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

Only showing 1 day *(July 21)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-07-21 |     48898 |   1697 |     33769 | 423040 |          439 |     62 |                 902 |                 758 |                1021 |                1155 |                3434 |                3995 |                3777 |                4191 |                3595 |                4482 |                3184 |                4282 |                2325 |                2607 |                1608 |                1815 |              1848 |              3855 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             103 |              48 |             199 |             128 |           492 |           647 |
| Portugal | 2020-07-20 |     48771 |   1691 |     33547 | 420635 |          454 |     61 |                 898 |                 756 |                1018 |                1152 |                3423 |                3979 |                3768 |                4175 |                3589 |                4473 |                3174 |                4276 |                2316 |                2601 |                1605 |                1809 |              1846 |              3849 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             198 |             128 |           492 |           643 |
| Portugal | 2020-07-19 |     48636 |   1689 |     33369 | 419408 |          439 |     61 |                 891 |                 755 |                1014 |                1148 |                3410 |                3968 |                3760 |                4159 |                3578 |                4464 |                3165 |                4269 |                2308 |                2593 |                1602 |                1805 |              1840 |              3843 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             198 |             128 |           491 |           642 |
| Portugal | 2020-07-18 |     48390 |   1684 |     33153 | 417996 |          452 |     65 |                 883 |                 744 |                1004 |                1139 |                3403 |                3938 |                3733 |                4141 |                3561 |                4437 |                3143 |                4254 |                2296 |                2585 |                1596 |                1797 |              1837 |              3835 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             197 |             128 |           489 |           640 |
| Portugal | 2020-07-17 |     48077 |   1682 |     32790 | 415851 |          447 |     67 |                 869 |                 735 |                 995 |                1129 |                3376 |                3904 |                3715 |                4112 |                3539 |                4406 |                3123 |                4233 |                2282 |                2567 |                1586 |                1788 |              1833 |              3821 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             197 |             128 |           488 |           639 |
| Portugal | 2020-07-16 |     47765 |   1679 |     32476 | 413498 |          476 |     72 |                 853 |                 727 |                 984 |                1122 |                3353 |                3861 |                3691 |                4076 |                3520 |                4376 |                3103 |                4212 |                2273 |                2555 |                1579 |                1779 |              1828 |              3815 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             197 |             128 |           487 |           637 |
| Portugal | 2020-07-15 |     47426 |   1676 |     32110 | 411293 |          478 |     68 |                 843 |                 715 |                 975 |                1105 |                3320 |                3833 |                3659 |                4036 |                3494 |                4345 |                3084 |                4191 |                2259 |                2548 |                1567 |                1770 |              1824 |              3802 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             196 |             128 |           486 |           636 |
| Portugal | 2020-07-14 |     47051 |   1668 |     31550 | 408951 |          472 |     69 |                 827 |                 707 |                 964 |                1090 |                3284 |                3813 |                3627 |                3996 |                3455 |                4303 |                3060 |                4168 |                2248 |                2534 |                1553 |                1762 |              1813 |              3798 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             196 |             128 |           484 |           630 |
| Portugal | 2020-07-13 |     46818 |   1662 |     31065 | 406412 |          467 |     63 |                 822 |                 702 |                 959 |                1084 |                3255 |                3785 |                3604 |                3983 |                3428 |                4284 |                3047 |                4151 |                2235 |                2524 |                1548 |                1757 |              1811 |              3791 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             195 |             126 |           484 |           627 |
| Portugal | 2020-07-12 |     46512 |   1660 |     30907 | 405110 |          462 |     64 |                 809 |                 690 |                 947 |                1080 |                3219 |                3758 |                3573 |                3958 |                3402 |                4269 |                3022 |                4133 |                2218 |                2509 |                1540 |                1749 |              1807 |              3781 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |              10 |              38 |              17 |             102 |              48 |             194 |             126 |           484 |           627 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp | Cumulative\_number\_for\_14\_days\_of\_COVID-19\_cases\_per\_100000 |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- | ------------------------------------------------------------------: |
| 22/07/2020 |  22 |     7 | 2020 |   127 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                                  NA |
| 21/07/2020 |  21 |     7 | 2020 |   135 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            45.17051 |
| 20/07/2020 |  20 |     7 | 2020 |   246 |      5 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            46.11440 |
| 19/07/2020 |  19 |     7 | 2020 |   313 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            46.91233 |
| 18/07/2020 |  18 |     7 | 2020 |   312 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            47.88541 |
| 17/07/2020 |  17 |     7 | 2020 |   339 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            48.48872 |
| 16/07/2020 |  16 |     7 | 2020 |   375 |      8 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            48.38168 |
| 15/07/2020 |  15 |     7 | 2020 |   233 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            47.77837 |
| 14/07/2020 |  14 |     7 | 2020 |   306 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            47.73945 |
| 13/07/2020 |  13 |     7 | 2020 |   291 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            47.35021 |
