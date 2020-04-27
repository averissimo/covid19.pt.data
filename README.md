COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, April 27, 2020)*

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

Only showing 1 day *(April
27)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10
days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-04-27 |     24027 |    928 |      1357 | 237571 |          995 |    176 |                 187 |                 198 |                 319 |                 399 |                1147 |                1590 |                1413 |                1939 |                1573 |                2463 |                1584 |                2485 |                1318 |                1524 |                1026 |                1114 |              1238 |              2510 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              20 |               6 |              52 |              28 |             111 |              73 |           272 |           356 |
| Portugal | 2020-04-26 |     23864 |    903 |      1329 | 236410 |         1005 |    182 |                 186 |                 197 |                 315 |                 395 |                1141 |                1583 |                1407 |                1930 |                1563 |                2448 |                1568 |                2475 |                1313 |                1508 |                1022 |                1105 |              1227 |              2481 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              18 |               6 |              52 |              26 |             109 |              73 |           264 |           345 |
| Portugal | 2020-04-25 |     23392 |    880 |      1277 | 231737 |         1040 |    186 |                 180 |                 193 |                 306 |                 385 |                1121 |                1551 |                1390 |                1885 |                1545 |                2400 |                1547 |                2432 |                1295 |                1487 |                1008 |                1078 |              1197 |              2392 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              18 |               6 |              52 |              25 |             107 |              71 |           259 |           332 |
| Portugal | 2020-04-24 |     22797 |    854 |      1228 | 227393 |         1068 |    188 |                 171 |                 189 |                 299 |                 372 |                1097 |                1511 |                1347 |                1842 |                1498 |                2332 |                1517 |                2363 |                1273 |                1450 |                 990 |                1057 |              1167 |              2322 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               4 |               5 |              17 |               5 |              51 |              24 |             103 |              71 |           251 |           323 |
| Portugal | 2020-04-23 |     22353 |    820 |      1201 | 219848 |         1095 |    204 |                 171 |                 189 |                 297 |                 362 |                1058 |                1473 |                1321 |                1809 |                1468 |                2317 |                1490 |                2328 |                1236 |                1421 |                 963 |                1036 |              1135 |              2279 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               4 |               5 |              16 |               5 |              48 |              23 |              98 |              70 |           240 |           311 |
| Portugal | 2020-04-22 |     21982 |    785 |      1143 | 210302 |         1146 |    207 |                 171 |                 189 |                 295 |                 353 |                1022 |                1437 |                1296 |                1777 |                1439 |                2302 |                1466 |                2303 |                1220 |                1401 |                 936 |                1025 |              1108 |              2242 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               4 |               5 |              15 |               5 |              45 |              22 |              93 |              68 |           233 |           295 |
| Portugal | 2020-04-21 |     21379 |    762 |       917 | 202769 |         1172 |    213 |                 170 |                 189 |                 266 |                 321 |                 988 |                1390 |                1271 |                1713 |                1418 |                2202 |                1439 |                2231 |                1173 |                1384 |                 927 |                 978 |              1097 |              2222 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               4 |               5 |              15 |               5 |              45 |              22 |              91 |              68 |           225 |           282 |
| Portugal | 2020-04-20 |     20863 |    735 |       610 | 198353 |         1208 |    215 |                 170 |                 189 |                 262 |                 319 |                 933 |                1367 |                1237 |                1694 |                1417 |                2181 |                1391 |                2191 |                1171 |                1332 |                 905 |                 972 |              1041 |              2091 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               3 |               5 |              15 |               5 |              43 |              22 |              89 |              66 |           218 |           269 |
| Portugal | 2020-04-19 |     20206 |    714 |       610 | 187604 |         1243 |    224 |                 164 |                 181 |                 246 |                 290 |                 856 |                1293 |                1181 |                1650 |                1361 |                2112 |                1377 |                2133 |                1123 |                1321 |                 891 |                 935 |              1030 |              2062 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               3 |               5 |              15 |               5 |              43 |              22 |              88 |              63 |           209 |           261 |
| Portugal | 2020-04-18 |     19685 |    687 |       610 | 162711 |         1253 |    228 |                 157 |                 171 |                 231 |                 277 |                 828 |                1269 |                1150 |                1601 |                1332 |                2056 |                1349 |                2073 |                1107 |                1300 |                 876 |                 909 |              1000 |              1999 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               3 |               5 |              14 |               5 |              43 |              21 |              87 |              58 |           201 |           250 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous
day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2018 | continentExp |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- |
| 28/04/2020 |  28 |     4 | 2020 |   163 |     25 | Portugal                | PT    | PRT                  |    10281762 | NA           |
| 27/04/2020 |  27 |     4 | 2020 |   472 |     23 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 26/04/2020 |  26 |     4 | 2020 |   595 |     26 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 25/04/2020 |  25 |     4 | 2020 |   444 |     34 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 24/04/2020 |  24 |     4 | 2020 |   371 |     35 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 23/04/2020 |  23 |     4 | 2020 |   603 |     23 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 22/04/2020 |  22 |     4 | 2020 |   516 |     27 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 21/04/2020 |  21 |     4 | 2020 |   657 |     21 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 20/04/2020 |  20 |     4 | 2020 |   521 |     27 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 19/04/2020 |  19 |     4 | 2020 |   663 |     30 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
