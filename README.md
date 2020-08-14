COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Friday, August 14, 2020)*

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

Only showing 1 day *(August 14)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-08-14 |     53783 |   1772 |     39374 | 466096 |          348 |     41 |                1059 |                 927 |                1187 |                1346 |                3873 |                4434 |                4187 |                4616 |                3987 |                4878 |                3490 |                4583 |                2534 |                2830 |                1757 |                1961 |              1976 |              4083 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             109 |              49 |             212 |             135 |           518 |           666 |
| Portugal | 2020-08-13 |     53548 |   1770 |     39177 | 464365 |          358 |     39 |                1044 |                 917 |                1174 |                1341 |                3836 |                4404 |                4170 |                4590 |                3971 |                4860 |                3480 |                4572 |                2524 |                2824 |                1754 |                1958 |              1972 |              4081 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             109 |              48 |             212 |             135 |           517 |           666 |
| Portugal | 2020-08-12 |     53223 |   1764 |     38940 | 462450 |          367 |     40 |                1040 |                 915 |                1166 |                1326 |                3811 |                4377 |                4140 |                4570 |                3946 |                4839 |                3459 |                4545 |                2510 |                2808 |                1743 |                1946 |              1959 |              4047 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             109 |              48 |             211 |             134 |           515 |           664 |
| Portugal | 2020-08-11 |     52945 |   1761 |     38760 | 460663 |          365 |     35 |                1033 |                 906 |                1159 |                1315 |                3789 |                4343 |                4114 |                4546 |                3924 |                4824 |                3444 |                4527 |                2497 |                2796 |                1731 |                1941 |              1948 |              4029 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             109 |              48 |             211 |             134 |           515 |           661 |
| Portugal | 2020-08-10 |     52825 |   1759 |     38600 | 458607 |          374 |     29 |                1030 |                 904 |                1156 |                1313 |                3773 |                4335 |                4097 |                4534 |                3913 |                4818 |                3437 |                4524 |                2495 |                2790 |                1726 |                1941 |              1942 |              4019 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             109 |              48 |             211 |             134 |           513 |           661 |
| Portugal | 2020-08-09 |     52668 |   1756 |     38511 | 457462 |          366 |     33 |                1024 |                 898 |                1152 |                1309 |                3757 |                4316 |                4087 |                4521 |                3900 |                4800 |                3423 |                4514 |                2490 |                2782 |                1723 |                1938 |              1941 |              4015 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             108 |              48 |             211 |             134 |           511 |           661 |
| Portugal | 2020-08-08 |     52537 |   1750 |     38364 | 456256 |          357 |     33 |                1022 |                 895 |                1145 |                1306 |                3746 |                4303 |                4078 |                4509 |                3893 |                4786 |                3412 |                4502 |                2482 |                2778 |                1717 |                1929 |              1941 |              4015 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             108 |              48 |             209 |             134 |           508 |           660 |
| Portugal | 2020-08-07 |     52351 |   1746 |     38087 | 454380 |          356 |     36 |                1016 |                 885 |                1141 |                1289 |                3729 |                4290 |                4061 |                4499 |                3874 |                4772 |                3400 |                4495 |                2469 |                2767 |                1712 |                1926 |              1936 |              4012 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             107 |              48 |             208 |             133 |           507 |           660 |
| Portugal | 2020-08-06 |     52061 |   1743 |     37840 | 452453 |          369 |     42 |                1013 |                 880 |                1128 |                1282 |                3703 |                4264 |                4041 |                4467 |                3861 |                4753 |                3387 |                4473 |                2460 |                2754 |                1701 |                1911 |              1920 |              3985 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             107 |              48 |             208 |             131 |           506 |           660 |
| Portugal | 2020-08-05 |     51848 |   1740 |     37565 | 450524 |          384 |     41 |                1010 |                 873 |                1121 |                1270 |                3685 |                4244 |                4026 |                4445 |                3852 |                4737 |                3372 |                4457 |                2453 |                2744 |                1696 |                1900 |              1912 |              3973 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              39 |              17 |             107 |              48 |             207 |             131 |           505 |           660 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp | Cumulative\_number\_for\_14\_days\_of\_COVID-19\_cases\_per\_100000 |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- | ------------------------------------------------------------------: |
| 15/08/2020 |  15 |     8 | 2020 |   235 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                                  NA |
| 14/08/2020 |  14 |     8 | 2020 |   325 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            26.07862 |
| 13/08/2020 |  13 |     8 | 2020 |   278 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            25.39746 |
| 12/08/2020 |  12 |     8 | 2020 |   120 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            24.66765 |
| 11/08/2020 |  11 |     8 | 2020 |   157 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            24.58007 |
| 10/08/2020 |  10 |     8 | 2020 |   131 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            24.36600 |
| 09/08/2020 |   9 |     8 | 2020 |   186 |      4 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            25.12500 |
| 08/08/2020 |   8 |     8 | 2020 |   290 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            25.87427 |
| 07/08/2020 |   7 |     8 | 2020 |   213 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            26.09808 |
| 06/08/2020 |   6 |     8 | 2020 |   167 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            26.25378 |
