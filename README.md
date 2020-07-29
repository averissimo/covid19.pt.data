COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Wednesday, July 29, 2020)*

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

Only showing 1 day *(July 29)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-07-29 |     50613 |   1725 |     35875 | 437976 |          403 |     43 |                 962 |                 821 |                1073 |                1222 |                3586 |                4168 |                3934 |                4324 |                3742 |                4628 |                3294 |                4384 |                2402 |                2678 |                1657 |                1865 |              1882 |              3917 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             105 |              48 |             203 |             130 |           502 |           657 |
| Portugal | 2020-07-28 |     50410 |   1722 |     35626 | 435789 |          402 |     41 |                 953 |                 808 |                1070 |                1216 |                3560 |                4144 |                3924 |                4312 |                3726 |                4607 |                3278 |                4364 |                2393 |                2677 |                1653 |                1860 |              1879 |              3914 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             105 |              48 |             203 |             130 |           501 |           655 |
| Portugal | 2020-07-27 |     50299 |   1719 |     35375 | 433461 |          414 |     45 |                 949 |                 804 |                1068 |                1213 |                3551 |                4131 |                3922 |                4305 |                3720 |                4601 |                3272 |                4356 |                2386 |                2667 |                1647 |                1858 |              1869 |              3912 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             203 |             129 |           501 |           654 |
| Portugal | 2020-07-26 |     50164 |   1717 |     35217 | 432390 |          403 |     48 |                 949 |                 800 |                1063 |                1207 |                3543 |                4117 |                3907 |                4292 |                3706 |                4588 |                3265 |                4345 |                2385 |                2656 |                1643 |                1857 |              1868 |              3905 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             203 |             129 |           500 |           653 |
| Portugal | 2020-07-25 |     49955 |   1716 |     35010 | 431111 |          410 |     50 |                 936 |                 791 |                1060 |                1203 |                3521 |                4096 |                3887 |                4280 |                3690 |                4573 |                3249 |                4329 |                2380 |                2645 |                1640 |                1850 |              1865 |              3893 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             202 |             129 |           500 |           653 |
| Portugal | 2020-07-24 |     49692 |   1712 |     34687 | 429254 |          420 |     52 |                 929 |                 784 |                1048 |                1195 |                3496 |                4072 |                3851 |                4259 |                3668 |                4551 |                3237 |                4312 |                2366 |                2633 |                1632 |                1842 |              1861 |              3889 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             201 |             129 |           499 |           651 |
| Portugal | 2020-07-23 |     49379 |   1705 |     34369 | 427203 |          431 |     59 |                 922 |                 773 |                1036 |                1183 |                3471 |                4043 |                3811 |                4234 |                3645 |                4525 |                3216 |                4299 |                2345 |                2623 |                1626 |                1837 |              1856 |              3867 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             199 |             128 |           497 |           649 |
| Portugal | 2020-07-22 |     49150 |   1702 |     33999 | 425124 |          439 |     59 |                 912 |                 770 |                1028 |                1172 |                3447 |                4024 |                3798 |                4214 |                3618 |                4507 |                3198 |                4291 |                2335 |                2616 |                1618 |                1827 |              1852 |              3858 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             199 |             128 |           495 |           648 |
| Portugal | 2020-07-21 |     48898 |   1697 |     33769 | 423040 |          439 |     62 |                 902 |                 758 |                1021 |                1155 |                3434 |                3995 |                3777 |                4191 |                3595 |                4482 |                3184 |                4282 |                2325 |                2607 |                1608 |                1815 |              1848 |              3855 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             103 |              48 |             199 |             128 |           492 |           647 |
| Portugal | 2020-07-20 |     48771 |   1691 |     33547 | 420635 |          454 |     61 |                 898 |                 756 |                1018 |                1152 |                3423 |                3979 |                3768 |                4175 |                3589 |                4473 |                3174 |                4276 |                2316 |                2601 |                1605 |                1809 |              1846 |              3849 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             198 |             128 |           492 |           643 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp | Cumulative\_number\_for\_14\_days\_of\_COVID-19\_cases\_per\_100000 |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- | ------------------------------------------------------------------: |
| 30/07/2020 |  30 |     7 | 2020 |   203 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                                  NA |
| 29/07/2020 |  29 |     7 | 2020 |   111 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            32.68585 |
| 28/07/2020 |  28 |     7 | 2020 |   135 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            33.87301 |
| 27/07/2020 |  27 |     7 | 2020 |   209 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            35.53699 |
| 26/07/2020 |  26 |     7 | 2020 |   263 |      4 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            36.33491 |
| 25/07/2020 |  25 |     7 | 2020 |   313 |      7 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            39.04982 |
| 24/07/2020 |  24 |     7 | 2020 |   229 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            39.91586 |
| 23/07/2020 |  23 |     7 | 2020 |   252 |      5 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            41.75499 |
| 22/07/2020 |  22 |     7 | 2020 |   127 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            43.61357 |
| 21/07/2020 |  21 |     7 | 2020 |   135 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            45.17051 |
