COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Tuesday, May 19, 2020)*

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
19)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10
days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-05-19 |     29432 |   1247 |      6431 | 298501 |          629 |    101 |                 271 |                 260 |                 432 |                 497 |                1622 |                2044 |                1853 |                2460 |                1998 |                2962 |                1962 |                3001 |                1515 |                1756 |                1138 |                1292 |              1413 |              2956 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              74 |              38 |             141 |             102 |           356 |           482 |
| Portugal | 2020-05-18 |     29209 |   1231 |      6430 | 295449 |          628 |    105 |                 269 |                 259 |                 429 |                 493 |                1600 |                2027 |                1832 |                2431 |                1977 |                2930 |                1957 |                2985 |                1509 |                1741 |                1132 |                1287 |              1409 |              2942 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              73 |              38 |             140 |             102 |           349 |           475 |
| Portugal | 2020-05-17 |     29036 |   1218 |      4636 | 294009 |          649 |    108 |                 263 |                 255 |                 426 |                 490 |                1582 |                2009 |                1808 |                2416 |                1959 |                2917 |                1948 |                2965 |                1500 |                1734 |                1132 |                1285 |              1407 |              2940 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              72 |              38 |             139 |             100 |           347 |           468 |
| Portugal | 2020-05-16 |     28810 |   1203 |      3822 | 292249 |          657 |    115 |                 259 |                 253 |                 421 |                 484 |                1565 |                1986 |                1796 |                2393 |                1941 |                2887 |                1931 |                2932 |                1494 |                1726 |                1127 |                1281 |              1406 |              2928 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              69 |              38 |             136 |              99 |           344 |           463 |
| Portugal | 2020-05-15 |     28583 |   1190 |      3328 | 289309 |          673 |    112 |                 251 |                 248 |                 418 |                 475 |                1547 |                1962 |                1781 |                2376 |                1926 |                2870 |                1914 |                2910 |                1481 |                1714 |                1125 |                1277 |              1394 |              2914 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              12 |              67 |              38 |             136 |              99 |           337 |           459 |
| Portugal | 2020-05-14 |     28319 |   1184 |      3198 | 286285 |          680 |    108 |                 246 |                 245 |                 411 |                 469 |                1519 |                1931 |                1753 |                2348 |                1905 |                2853 |                1895 |                2897 |                1469 |                1706 |                1116 |                1272 |              1383 |              2901 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               7 |               6 |              28 |              11 |              67 |              37 |             136 |              99 |           337 |           455 |
| Portugal | 2020-05-13 |     28132 |   1175 |      3182 | 282961 |          692 |    103 |                 245 |                 239 |                 406 |                 466 |                1501 |                1910 |                1741 |                2331 |                1887 |                2841 |                1876 |                2870 |                1463 |                1704 |                1111 |                1271 |              1378 |              2892 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               6 |               6 |              28 |              10 |              67 |              37 |             136 |              96 |           335 |           453 |
| Portugal | 2020-05-12 |     27913 |   1163 |      3013 | 279933 |          709 |    113 |                 242 |                 236 |                 401 |                 463 |                1489 |                1883 |                1717 |                2310 |                1865 |                2828 |                1857 |                2853 |                1455 |                1704 |                1107 |                1258 |              1364 |              2881 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               6 |               6 |              28 |              10 |              66 |              35 |             136 |              95 |           332 |           448 |
| Portugal | 2020-05-11 |     27679 |   1144 |      2549 | 276153 |          805 |    112 |                 237 |                 236 |                 394 |                 455 |                1474 |                1860 |                1700 |                2289 |                1839 |                2810 |                1835 |                2838 |                1448 |                1694 |                1105 |                1253 |              1349 |              2863 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               5 |               6 |              27 |               9 |              64 |              35 |             134 |              94 |           326 |           443 |
| Portugal | 2020-05-10 |     27581 |   1135 |      2549 | 274536 |          797 |    112 |                 233 |                 235 |                 390 |                 452 |                1467 |                1848 |                1695 |                2288 |                1831 |                2809 |                1827 |                2830 |                1447 |                1687 |                1102 |                1251 |              1344 |              2845 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               5 |               6 |              27 |               9 |              63 |              34 |             133 |              94 |           324 |           439 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous
day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2018 | continentExp |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- |
| 20/05/2020 |  20 |     5 | 2020 |   223 |     16 | Portugal                | PT    | PRT                  |    10281762 | NA           |
| 19/05/2020 |  19 |     5 | 2020 |   173 |     13 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 18/05/2020 |  18 |     5 | 2020 |   226 |     15 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 17/05/2020 |  17 |     5 | 2020 |   227 |     13 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 16/05/2020 |  16 |     5 | 2020 |   264 |      6 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 15/05/2020 |  15 |     5 | 2020 |   187 |      9 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 14/05/2020 |  14 |     5 | 2020 |   219 |     12 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 13/05/2020 |  13 |     5 | 2020 |   234 |     19 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 12/05/2020 |  12 |     5 | 2020 |    98 |      9 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 11/05/2020 |  11 |     5 | 2020 |   175 |      9 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
