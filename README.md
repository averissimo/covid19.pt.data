COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, June 01, 2020)*

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

Only showing 1 day *(June
01)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10
days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-06-01 |     32700 |   1424 |     19552 |     NA |          471 |     64 |                 356 |                 335 |                 512 |                 596 |                1973 |                2371 |                2222 |                2731 |                2299 |                3180 |                2185 |                3202 |                1668 |                1901 |                1243 |                1367 |              1480 |              3079 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               6 |              31 |              14 |              83 |              43 |             165 |             111 |           410 |           548 |
| Portugal | 2020-05-31 |     32500 |   1410 |     19409 | 325026 |          474 |     64 |                 348 |                 325 |                 506 |                 592 |                1953 |                2343 |                2208 |                2710 |                2288 |                3171 |                2175 |                3190 |                1657 |                1889 |                1241 |                1359 |              1480 |              3065 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |               9 |               6 |              31 |              14 |              82 |              43 |             163 |             111 |           407 |           541 |
| Portugal | 2020-05-30 |     32203 |   1396 |     19186 | 323663 |          514 |     63 |                 339 |                 315 |                 497 |                 584 |                1921 |                2313 |                2178 |                2679 |                2262 |                3148 |                2158 |                3165 |                1649 |                1875 |                1237 |                1354 |              1474 |              3055 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               1 |               9 |               6 |              31 |              14 |              82 |              43 |             162 |             111 |           403 |           533 |
| Portugal | 2020-05-29 |     31946 |   1383 |     18911 | 321290 |          529 |     66 |                 334 |                 312 |                 489 |                 576 |                1895 |                2283 |                2145 |                2653 |                2239 |                3129 |                2138 |                3149 |                1642 |                1865 |                1230 |                1344 |              1472 |              3051 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               1 |               9 |               6 |              30 |              13 |              81 |              43 |             160 |             110 |           400 |           529 |
| Portugal | 2020-05-28 |     31596 |   1369 |     18637 | 318810 |          512 |     65 |                 320 |                 306 |                 485 |                 567 |                1858 |                2256 |                2114 |                2622 |                2213 |                3102 |                2125 |                3128 |                1630 |                1854 |                1216 |                1321 |              1458 |              3021 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               1 |               9 |               6 |              29 |              13 |              79 |              43 |             159 |             110 |           393 |           526 |
| Portugal | 2020-05-27 |     31292 |   1356 |     18349 | 316364 |          510 |     66 |                 310 |                 297 |                 478 |                 559 |                1828 |                2221 |                2082 |                2597 |                2189 |                3076 |                2100 |                3112 |                1619 |                1844 |                1204 |                1316 |              1446 |              3014 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               9 |               6 |              29 |              13 |              78 |              43 |             156 |             109 |           391 |           521 |
| Portugal | 2020-05-26 |     31007 |   1342 |     18096 | 313886 |          513 |     71 |                 305 |                 293 |                 469 |                 549 |                1800 |                2201 |                2037 |                2568 |                2155 |                3057 |                2069 |                3093 |                1607 |                1833 |                1198 |                1316 |              1445 |              3012 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               9 |               6 |              28 |              13 |              77 |              43 |             153 |             108 |           388 |           516 |
| Portugal | 2020-05-25 |     30788 |   1330 |     17822 | 311223 |          531 |     72 |                 298 |                 287 |                 463 |                 540 |                1779 |                2178 |                2023 |                2549 |                2134 |                3051 |                2061 |                3084 |                1589 |                1820 |                1189 |                1312 |              1439 |              2992 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               9 |               6 |              28 |              13 |              76 |              42 |             151 |             107 |           384 |           513 |
| Portugal | 2020-05-24 |     30623 |   1316 |     17549 | 309966 |          536 |     78 |                 295 |                 284 |                 458 |                 535 |                1745 |                2162 |                2000 |                2545 |                2119 |                3042 |                2054 |                3069 |                1577 |                1820 |                1186 |                1312 |              1429 |              2991 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               9 |               6 |              27 |              12 |              75 |              40 |             148 |             105 |           383 |           510 |
| Portugal | 2020-05-23 |     30471 |   1302 |      7705 | 308584 |          550 |     80 |                 288 |                 279 |                 456 |                 529 |                1730 |                2146 |                1980 |                2535 |                2108 |                3039 |                2036 |                3064 |                1566 |                1810 |                1177 |                1311 |              1428 |              2989 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               9 |               6 |              27 |              12 |              75 |              40 |             147 |             105 |           377 |           503 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous
day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2018 | continentExp |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- |
| 02/06/2020 |   2 |     6 | 2020 |   200 |     14 | Portugal                | PT    | PRT                  |    10281762 | NA           |
| 01/06/2020 |   1 |     6 | 2020 |   297 |     14 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 31/05/2020 |  31 |     5 | 2020 |   257 |     13 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 30/05/2020 |  30 |     5 | 2020 |   350 |     14 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 29/05/2020 |  29 |     5 | 2020 |   304 |     13 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 28/05/2020 |  28 |     5 | 2020 |   285 |     14 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 27/05/2020 |  27 |     5 | 2020 |   219 |     12 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 26/05/2020 |  26 |     5 | 2020 |   165 |     14 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 25/05/2020 |  25 |     5 | 2020 |   152 |     14 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 24/05/2020 |  24 |     5 | 2020 |   271 |     13 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
