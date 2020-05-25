COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, May 25, 2020)*

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

Only showing 1 day *(May
25)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10
days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-05-25 |     30788 |   1330 |     17822 | 311223 |          531 |     72 |                 298 |                 287 |                 463 |                 540 |                1779 |                2178 |                2023 |                2549 |                2134 |                3051 |                2061 |                3084 |                1589 |                1820 |                1189 |                1312 |              1439 |              2992 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               9 |               6 |              28 |              13 |              76 |              42 |             151 |             107 |           384 |           513 |
| Portugal | 2020-05-24 |     30623 |   1316 |     17549 | 309966 |          536 |     78 |                 295 |                 284 |                 458 |                 535 |                1745 |                2162 |                2000 |                2545 |                2119 |                3042 |                2054 |                3069 |                1577 |                1820 |                1186 |                1312 |              1429 |              2991 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               9 |               6 |              27 |              12 |              75 |              40 |             148 |             105 |           383 |           510 |
| Portugal | 2020-05-23 |     30471 |   1302 |      7705 | 308584 |          550 |     80 |                 288 |                 279 |                 456 |                 529 |                1730 |                2146 |                1980 |                2535 |                2108 |                3039 |                2036 |                3064 |                1566 |                1810 |                1177 |                1311 |              1428 |              2989 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               9 |               6 |              27 |              12 |              75 |              40 |             147 |             105 |           377 |           503 |
| Portugal | 2020-05-22 |     30200 |   1289 |      7590 | 306171 |          576 |     84 |                 281 |                 274 |                 451 |                 524 |                1693 |                2113 |                1951 |                2526 |                2087 |                3019 |                2020 |                3044 |                1554 |                1793 |                1172 |                1302 |              1425 |              2971 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               9 |               6 |              28 |              12 |              77 |              39 |             146 |             105 |           369 |           497 |
| Portugal | 2020-05-21 |     29912 |   1277 |      6452 | 303811 |          608 |     92 |                 278 |                 269 |                 442 |                 513 |                1668 |                2084 |                1918 |                2498 |                2060 |                2999 |                2005 |                3025 |                1540 |                1783 |                1153 |                1298 |              1417 |              2962 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              75 |              38 |             144 |             102 |           369 |           495 |
| Portugal | 2020-05-20 |     29660 |   1263 |      6452 | 301225 |          609 |     93 |                 272 |                 265 |                 436 |                 507 |                1639 |                2068 |                1884 |                2480 |                2034 |                2971 |                1985 |                3014 |                1526 |                1769 |                1142 |                1294 |              1415 |              2959 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              75 |              38 |             144 |             102 |           362 |           488 |
| Portugal | 2020-05-19 |     29432 |   1247 |      6431 | 298501 |          629 |    101 |                 271 |                 260 |                 432 |                 497 |                1622 |                2044 |                1853 |                2460 |                1998 |                2962 |                1962 |                3001 |                1515 |                1756 |                1138 |                1292 |              1413 |              2956 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              74 |              38 |             141 |             102 |           356 |           482 |
| Portugal | 2020-05-18 |     29209 |   1231 |      6430 | 295449 |          628 |    105 |                 269 |                 259 |                 429 |                 493 |                1600 |                2027 |                1832 |                2431 |                1977 |                2930 |                1957 |                2985 |                1509 |                1741 |                1132 |                1287 |              1409 |              2942 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              73 |              38 |             140 |             102 |           349 |           475 |
| Portugal | 2020-05-17 |     29036 |   1218 |      4636 | 294009 |          649 |    108 |                 263 |                 255 |                 426 |                 490 |                1582 |                2009 |                1808 |                2416 |                1959 |                2917 |                1948 |                2965 |                1500 |                1734 |                1132 |                1285 |              1407 |              2940 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              72 |              38 |             139 |             100 |           347 |           468 |
| Portugal | 2020-05-16 |     28810 |   1203 |      3822 | 292249 |          657 |    115 |                 259 |                 253 |                 421 |                 484 |                1565 |                1986 |                1796 |                2393 |                1941 |                2887 |                1931 |                2932 |                1494 |                1726 |                1127 |                1281 |              1406 |              2928 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              69 |              38 |             136 |              99 |           344 |           463 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous
day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2018 | continentExp |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- |
| 26/05/2020 |  26 |     5 | 2020 |   165 |     14 | Portugal                | PT    | PRT                  |    10281762 | NA           |
| 25/05/2020 |  25 |     5 | 2020 |   152 |     14 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 24/05/2020 |  24 |     5 | 2020 |   271 |     13 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 23/05/2020 |  23 |     5 | 2020 |   288 |     12 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 22/05/2020 |  22 |     5 | 2020 |   252 |     14 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 21/05/2020 |  21 |     5 | 2020 |   228 |     16 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 20/05/2020 |  20 |     5 | 2020 |   223 |     16 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 19/05/2020 |  19 |     5 | 2020 |   173 |     13 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 18/05/2020 |  18 |     5 | 2020 |   226 |     15 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 17/05/2020 |  17 |     5 | 2020 |   227 |     13 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
