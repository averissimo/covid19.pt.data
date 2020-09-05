COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Wednesday, September 02, 2020)*

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

(removed as it was removed from official data)

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-09-02 |     58633 |   1827 |     42233 |     NA |          337 |     41 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-09-01 |     58243 |   1824 |     42104 |     NA |          350 |     44 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-31 |     58012 |   1822 |     41961 |     NA |          349 |     41 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-30 |     57768 |   1819 |     41885 |     NA |          341 |     41 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-29 |     57448 |   1818 |     41766 |     NA |          324 |     40 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-28 |     57074 |   1815 |     41556 |     NA |          334 |     NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-27 |     56673 |   1809 |     41357 |     NA |          317 |     35 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-26 |     56274 |   1807 |     41184 |     NA |          311 |     NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-25 |     55912 |   1805 |     41021 |     NA |          325 |     41 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-24 |     55720 |   1801 |     40880 |     NA |          321 |     44 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-23 |     55597 |   1796 |     40774 |     NA |          317 |     47 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-22 |     55452 |   1794 |     40652 |     NA |          316 |     42 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-21 |     55211 |   1792 |     40473 |     NA |          321 |     41 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-20 |     54992 |   1788 |     40264 |     NA |          334 |     39 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-19 |     54701 |   1786 |     40129 |     NA |          329 |     38 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-18 |     54448 |   1784 |     39936 |     NA |          336 |     38 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-17 |     54234 |   1779 |     39800 |     NA |          336 |     39 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-08-16 |     54102 |   1778 |     39697 | 468937 |          325 |     39 |                1073 |                 932 |                1199 |                1357 |                3897 |                4467 |                4214 |                4640 |                4028 |                4904 |                3515 |                4601 |                2550 |                2842 |                1761 |                1972 |              1982 |              4092 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              11 |              10 |              40 |              17 |             110 |              49 |             212 |             135 |           520 |           668 |
| Portugal | 2020-08-15 |     53981 |   1775 |     39585 | 467868 |          320 |     37 |                1069 |                 929 |                1195 |                1354 |                3888 |                4457 |                4200 |                4632 |                4017 |                4897 |                3503 |                4594 |                2542 |                2836 |                1759 |                1966 |              1979 |              4088 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             109 |              49 |             212 |             135 |           519 |           668 |
| Portugal | 2020-08-14 |     53783 |   1772 |     39374 | 466096 |          348 |     41 |                1059 |                 927 |                1187 |                1346 |                3873 |                4434 |                4187 |                4616 |                3987 |                4878 |                3490 |                4583 |                2534 |                2830 |                1757 |                1961 |              1976 |              4083 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               3 |              10 |              10 |              40 |              17 |             109 |              49 |             212 |             135 |           518 |           666 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp | Cumulative\_number\_for\_14\_days\_of\_COVID-19\_cases\_per\_100000 |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- | ------------------------------------------------------------------: |
| 05/09/2020 |   5 |     9 | 2020 |   406 |      4 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            41.31710 |
| 04/09/2020 |   4 |     9 | 2020 |   418 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            39.49743 |
| 03/09/2020 |   3 |     9 | 2020 |   390 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            38.26162 |
| 02/09/2020 |   2 |     9 | 2020 |   231 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            36.92850 |
| 01/09/2020 |   1 |     9 | 2020 |   244 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            36.76307 |
| 31/08/2020 |  31 |     8 | 2020 |   320 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            35.67322 |
| 30/08/2020 |  30 |     8 | 2020 |   374 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            33.73678 |
| 29/08/2020 |  29 |     8 | 2020 |   401 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            32.02416 |
| 28/08/2020 |  28 |     8 | 2020 |   399 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            30.40884 |
| 27/08/2020 |  27 |     8 | 2020 |   362 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            29.68876 |
