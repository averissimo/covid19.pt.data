COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Saturday, May 02, 2020)*

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
02)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10
days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-05-02 |     25190 |   1023 |      1671 | 252728 |          855 |    150 |                 199 |                 212 |                 337 |                 418 |                1245 |                1675 |                1497 |                2040 |                1654 |                2568 |                1670 |                2599 |                1342 |                1567 |                1052 |                1155 |              1283 |              2677 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              23 |               9 |              57 |              32 |             119 |              82 |           299 |           392 |
| Portugal | 2020-05-01 |     25351 |   1007 |      1647 | 251269 |          892 |    154 |                 196 |                 210 |                 340 |                 421 |                1250 |                1687 |                1504 |                2040 |                1681 |                2581 |                1673 |                2634 |                1360 |                1580 |                1068 |                1159 |              1296 |              2671 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              22 |               9 |              56 |              32 |             116 |              81 |           294 |           387 |
| Portugal | 2020-04-30 |     25045 |    989 |      1519 | 247685 |          968 |    172 |                 192 |                 210 |                 334 |                 414 |                1223 |                1669 |                1482 |                2006 |                1649 |                2559 |                1655 |                2598 |                1346 |                1573 |                1064 |                1153 |              1285 |              2633 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              21 |               8 |              56 |              31 |             114 |              81 |           288 |           380 |
| Portugal | 2020-04-29 |     24505 |    973 |      1470 | 243655 |          980 |    169 |                 192 |                 209 |                 322 |                 407 |                1168 |                1620 |                1445 |                1965 |                1608 |                2511 |                1612 |                2524 |                1335 |                1562 |                1045 |                1144 |              1275 |              2561 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              21 |               7 |              55 |              31 |             113 |              78 |           283 |           375 |
| Portugal | 2020-04-28 |     24322 |    948 |      1389 | 239065 |          936 |    172 |                 192 |                 207 |                 320 |                 403 |                1164 |                1610 |                1427 |                1953 |                1598 |                2493 |                1594 |                2506 |                1329 |                1550 |                1040 |                1134 |              1265 |              2537 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              20 |               7 |              53 |              30 |             112 |              75 |           279 |           362 |
| Portugal | 2020-04-27 |     24027 |    928 |      1357 | 237571 |          995 |    176 |                 187 |                 198 |                 319 |                 399 |                1147 |                1590 |                1413 |                1939 |                1573 |                2463 |                1584 |                2485 |                1318 |                1524 |                1026 |                1114 |              1238 |              2510 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              20 |               6 |              52 |              28 |             111 |              73 |           272 |           356 |
| Portugal | 2020-04-26 |     23864 |    903 |      1329 | 236410 |         1005 |    182 |                 186 |                 197 |                 315 |                 395 |                1141 |                1583 |                1407 |                1930 |                1563 |                2448 |                1568 |                2475 |                1313 |                1508 |                1022 |                1105 |              1227 |              2481 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              18 |               6 |              52 |              26 |             109 |              73 |           264 |           345 |
| Portugal | 2020-04-25 |     23392 |    880 |      1277 | 231737 |         1040 |    186 |                 180 |                 193 |                 306 |                 385 |                1121 |                1551 |                1390 |                1885 |                1545 |                2400 |                1547 |                2432 |                1295 |                1487 |                1008 |                1078 |              1197 |              2392 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              18 |               6 |              52 |              25 |             107 |              71 |           259 |           332 |
| Portugal | 2020-04-24 |     22797 |    854 |      1228 | 227393 |         1068 |    188 |                 171 |                 189 |                 299 |                 372 |                1097 |                1511 |                1347 |                1842 |                1498 |                2332 |                1517 |                2363 |                1273 |                1450 |                 990 |                1057 |              1167 |              2322 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               4 |               5 |              17 |               5 |              51 |              24 |             103 |              71 |           251 |           323 |
| Portugal | 2020-04-23 |     22353 |    820 |      1201 | 219848 |         1095 |    204 |                 171 |                 189 |                 297 |                 362 |                1058 |                1473 |                1321 |                1809 |                1468 |                2317 |                1490 |                2328 |                1236 |                1421 |                 963 |                1036 |              1135 |              2279 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               4 |               5 |              16 |               5 |              48 |              23 |              98 |              70 |           240 |           311 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous
day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2018 | continentExp |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- |
| 03/05/2020 |   3 |     5 | 2020 | \-161 |     16 | Portugal                | PT    | PRT                  |    10281762 | NA           |
| 02/05/2020 |   2 |     5 | 2020 |   295 |     18 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 01/05/2020 |   1 |     5 | 2020 |   551 |     16 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 30/04/2020 |  30 |     4 | 2020 |   183 |     25 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 29/04/2020 |  29 |     4 | 2020 |   295 |     20 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 28/04/2020 |  28 |     4 | 2020 |   163 |     25 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 27/04/2020 |  27 |     4 | 2020 |   472 |     23 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 26/04/2020 |  26 |     4 | 2020 |   595 |     26 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 25/04/2020 |  25 |     4 | 2020 |   444 |     34 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 24/04/2020 |  24 |     4 | 2020 |   371 |     35 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
