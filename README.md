COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Thursday, August 06, 2020)*

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

Only showing 1 day *(August 06)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-08-06 |     52061 |   1743 |     37840 | 452453 |          369 |     42 |                1013 |                 880 |                1128 |                1282 |                3703 |                4264 |                4041 |                4467 |                3861 |                4753 |                3387 |                4473 |                2460 |                2754 |                1701 |                1911 |              1920 |              3985 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             107 |              48 |             208 |             131 |           506 |           660 |
| Portugal | 2020-08-05 |     51848 |   1740 |     37565 | 450524 |          384 |     41 |                1010 |                 873 |                1121 |                1270 |                3685 |                4244 |                4026 |                4445 |                3852 |                4737 |                3372 |                4457 |                2453 |                2744 |                1696 |                1900 |              1912 |              3973 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              39 |              17 |             107 |              48 |             207 |             131 |           505 |           660 |
| Portugal | 2020-08-04 |     51681 |   1739 |     37318 | 448517 |          401 |     44 |                1003 |                 868 |                1112 |                1263 |                3671 |                4236 |                4011 |                4433 |                3838 |                4726 |                3357 |                4444 |                2442 |                2735 |                1690 |                1896 |              1910 |              3968 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              38 |              17 |             107 |              48 |             207 |             131 |           505 |           660 |
| Portugal | 2020-08-03 |     51569 |   1738 |     37111 | 446342 |          390 |     42 |                1000 |                 864 |                1106 |                1260 |                3664 |                4228 |                4002 |                4425 |                3827 |                4715 |                3353 |                4440 |                2431 |                2729 |                1686 |                1893 |              1906 |              3964 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              38 |              17 |             107 |              48 |             207 |             130 |           505 |           660 |
| Portugal | 2020-08-02 |     51463 |   1738 |     36984 | 445193 |          378 |     41 |                 999 |                 856 |                1104 |                1257 |                3653 |                4224 |                3993 |                4412 |                3819 |                4705 |                3345 |                4436 |                2427 |                2723 |                1681 |                1886 |              1905 |              3962 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              38 |              17 |             107 |              48 |             207 |             130 |           505 |           660 |
| Portugal | 2020-08-01 |     51310 |   1737 |     36783 | 443975 |          375 |     40 |                 989 |                 850 |                1094 |                1249 |                3640 |                4211 |                3978 |                4397 |                3809 |                4698 |                3336 |                4426 |                2426 |                2716 |                1679 |                1882 |              1902 |              3952 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              38 |              17 |             106 |              48 |             207 |             130 |           505 |           660 |
| Portugal | 2020-07-31 |     51072 |   1735 |     36483 | 442088 |          381 |     41 |                 977 |                 838 |                1088 |                1236 |                3623 |                4196 |                3959 |                4379 |                3792 |                4679 |                3322 |                4413 |                2419 |                2700 |                1671 |                1877 |              1892 |              3935 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              38 |              17 |             106 |              48 |             207 |             130 |           504 |           659 |
| Portugal | 2020-07-30 |     50868 |   1727 |     36140 | 440046 |          403 |     42 |                 966 |                 830 |                1079 |                1227 |                3606 |                4187 |                3956 |                4356 |                3771 |                4657 |                3305 |                4404 |                2412 |                2690 |                1664 |                1870 |              1889 |              3925 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             105 |              48 |             204 |             130 |           503 |           657 |
| Portugal | 2020-07-29 |     50613 |   1725 |     35875 | 437976 |          403 |     43 |                 962 |                 821 |                1073 |                1222 |                3586 |                4168 |                3934 |                4324 |                3742 |                4628 |                3294 |                4384 |                2402 |                2678 |                1657 |                1865 |              1882 |              3917 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             105 |              48 |             203 |             130 |           502 |           657 |
| Portugal | 2020-07-28 |     50410 |   1722 |     35626 | 435789 |          402 |     41 |                 953 |                 808 |                1070 |                1216 |                3560 |                4144 |                3924 |                4312 |                3726 |                4607 |                3278 |                4364 |                2393 |                2677 |                1653 |                1860 |              1879 |              3914 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             105 |              48 |             203 |             130 |           501 |           655 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp | Cumulative\_number\_for\_14\_days\_of\_COVID-19\_cases\_per\_100000 |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- | ------------------------------------------------------------------: |
| 07/08/2020 |   7 |     8 | 2020 |   213 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                                  NA |
| 06/08/2020 |   6 |     8 | 2020 |   167 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            26.25378 |
| 05/08/2020 |   5 |     8 | 2020 |   112 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            27.08090 |
| 04/08/2020 |   4 |     8 | 2020 |   106 |      0 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            27.22686 |
| 03/08/2020 |   3 |     8 | 2020 |   153 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            27.50905 |
| 02/08/2020 |   2 |     8 | 2020 |   238 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            28.41402 |
| 01/08/2020 |   1 |     8 | 2020 |   204 |      8 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            29.14383 |
| 31/07/2020 |  31 |     7 | 2020 |   255 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            30.19476 |
| 30/07/2020 |  30 |     7 | 2020 |   203 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            31.01215 |
| 29/07/2020 |  29 |     7 | 2020 |   111 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            32.68585 |
