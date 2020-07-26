COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, July 26, 2020)*

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

Only showing 1 day *(July 26)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-07-26 |     50164 |   1717 |     35217 | 432390 |          403 |     48 |                 949 |                 800 |                1063 |                1207 |                3543 |                4117 |                3907 |                4292 |                3706 |                4588 |                3265 |                4345 |                2385 |                2656 |                1643 |                1857 |              1868 |              3905 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             203 |             129 |           500 |           653 |
| Portugal | 2020-07-25 |     49955 |   1716 |     35010 | 431111 |          410 |     50 |                 936 |                 791 |                1060 |                1203 |                3521 |                4096 |                3887 |                4280 |                3690 |                4573 |                3249 |                4329 |                2380 |                2645 |                1640 |                1850 |              1865 |              3893 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             202 |             129 |           500 |           653 |
| Portugal | 2020-07-24 |     49692 |   1712 |     34687 | 429254 |          420 |     52 |                 929 |                 784 |                1048 |                1195 |                3496 |                4072 |                3851 |                4259 |                3668 |                4551 |                3237 |                4312 |                2366 |                2633 |                1632 |                1842 |              1861 |              3889 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             201 |             129 |           499 |           651 |
| Portugal | 2020-07-23 |     49379 |   1705 |     34369 | 427203 |          431 |     59 |                 922 |                 773 |                1036 |                1183 |                3471 |                4043 |                3811 |                4234 |                3645 |                4525 |                3216 |                4299 |                2345 |                2623 |                1626 |                1837 |              1856 |              3867 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             199 |             128 |           497 |           649 |
| Portugal | 2020-07-22 |     49150 |   1702 |     33999 | 425124 |          439 |     59 |                 912 |                 770 |                1028 |                1172 |                3447 |                4024 |                3798 |                4214 |                3618 |                4507 |                3198 |                4291 |                2335 |                2616 |                1618 |                1827 |              1852 |              3858 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             104 |              48 |             199 |             128 |           495 |           648 |
| Portugal | 2020-07-21 |     48898 |   1697 |     33769 | 423040 |          439 |     62 |                 902 |                 758 |                1021 |                1155 |                3434 |                3995 |                3777 |                4191 |                3595 |                4482 |                3184 |                4282 |                2325 |                2607 |                1608 |                1815 |              1848 |              3855 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             103 |              48 |             199 |             128 |           492 |           647 |
| Portugal | 2020-07-20 |     48771 |   1691 |     33547 | 420635 |          454 |     61 |                 898 |                 756 |                1018 |                1152 |                3423 |                3979 |                3768 |                4175 |                3589 |                4473 |                3174 |                4276 |                2316 |                2601 |                1605 |                1809 |              1846 |              3849 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             198 |             128 |           492 |           643 |
| Portugal | 2020-07-19 |     48636 |   1689 |     33369 | 419408 |          439 |     61 |                 891 |                 755 |                1014 |                1148 |                3410 |                3968 |                3760 |                4159 |                3578 |                4464 |                3165 |                4269 |                2308 |                2593 |                1602 |                1805 |              1840 |              3843 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             198 |             128 |           491 |           642 |
| Portugal | 2020-07-18 |     48390 |   1684 |     33153 | 417996 |          452 |     65 |                 883 |                 744 |                1004 |                1139 |                3403 |                3938 |                3733 |                4141 |                3561 |                4437 |                3143 |                4254 |                2296 |                2585 |                1596 |                1797 |              1837 |              3835 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             197 |             128 |           489 |           640 |
| Portugal | 2020-07-17 |     48077 |   1682 |     32790 | 415851 |          447 |     67 |                 869 |                 735 |                 995 |                1129 |                3376 |                3904 |                3715 |                4112 |                3539 |                4406 |                3123 |                4233 |                2282 |                2567 |                1586 |                1788 |              1833 |              3821 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               2 |              10 |              10 |              38 |              17 |             102 |              48 |             197 |             128 |           488 |           639 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp | Cumulative\_number\_for\_14\_days\_of\_COVID-19\_cases\_per\_100000 |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- | ------------------------------------------------------------------: |
| 27/07/2020 |  27 |     7 | 2020 |   209 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                                  NA |
| 26/07/2020 |  26 |     7 | 2020 |   263 |      4 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            36.33491 |
| 25/07/2020 |  25 |     7 | 2020 |   313 |      7 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            39.04982 |
| 24/07/2020 |  24 |     7 | 2020 |   229 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            39.91586 |
| 23/07/2020 |  23 |     7 | 2020 |   252 |      5 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            41.75499 |
| 22/07/2020 |  22 |     7 | 2020 |   127 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            43.61357 |
| 21/07/2020 |  21 |     7 | 2020 |   135 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            45.17051 |
| 20/07/2020 |  20 |     7 | 2020 |   246 |      5 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            46.11440 |
| 19/07/2020 |  19 |     7 | 2020 |   313 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            46.91233 |
| 18/07/2020 |  18 |     7 | 2020 |   312 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |                                                            47.88541 |
