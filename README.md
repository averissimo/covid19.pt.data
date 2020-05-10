COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, May 10, 2020)*

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
10)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10
days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-05-10 |     27581 |   1135 |      2549 | 274536 |          797 |    112 |                 233 |                 235 |                 390 |                 452 |                1467 |                1848 |                1695 |                2288 |                1831 |                2809 |                1827 |                2830 |                1447 |                1687 |                1102 |                1251 |              1344 |              2845 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               5 |               6 |              27 |               9 |              63 |              34 |             133 |              94 |           324 |           439 |
| Portugal | 2020-05-09 |     27406 |   1126 |      2499 | 272443 |          815 |    120 |                 230 |                 235 |                 386 |                 445 |                1443 |                1839 |                1679 |                2273 |                1816 |                2798 |                1806 |                2815 |                1434 |                1683 |                1095 |                1244 |              1342 |              2843 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               5 |               6 |              27 |               9 |              63 |              34 |             133 |              93 |           323 |           432 |
| Portugal | 2020-05-08 |     27268 |   1114 |      2422 | 269266 |          842 |    127 |                 229 |                 235 |                 381 |                 438 |                1439 |                1831 |                1668 |                2264 |                1807 |                2791 |                1801 |                2804 |                1429 |                1668 |                1090 |                1228 |              1337 |              2828 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               5 |               5 |              24 |               9 |              61 |              34 |             133 |              93 |           321 |           428 |
| Portugal | 2020-05-07 |     26715 |   1105 |      2258 | 265572 |          874 |    135 |                 223 |                 231 |                 373 |                 431 |                1397 |                1796 |                1626 |                2191 |                1757 |                2736 |                1769 |                2746 |                1396 |                1638 |                1079 |                1210 |              1327 |              2789 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               5 |               5 |              24 |               9 |              61 |              34 |             132 |              91 |           320 |           423 |
| Portugal | 2020-05-06 |     26182 |   1089 |      2076 | 262041 |          838 |    136 |                 216 |                 223 |                 359 |                 423 |                1338 |                1756 |                1583 |                2128 |                1720 |                2668 |                1730 |                2701 |                1372 |                1616 |                1073 |                1202 |              1320 |              2754 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               5 |               5 |              24 |               9 |              61 |              34 |             128 |              90 |           315 |           417 |
| Portugal | 2020-05-05 |     25702 |   1074 |      1743 | 258488 |          818 |    134 |                 215 |                 221 |                 351 |                 423 |                1288 |                1706 |                1538 |                2077 |                1668 |                2608 |                1693 |                2650 |                1357 |                1598 |                1068 |                1196 |              1316 |              2729 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               5 |               5 |              24 |               9 |              59 |              34 |             127 |              89 |           313 |           408 |
| Portugal | 2020-05-04 |     25524 |   1063 |      1712 | 254510 |          813 |    143 |                 208 |                 217 |                 348 |                 422 |                1271 |                1702 |                1533 |                2067 |                1667 |                2594 |                1690 |                2642 |                1349 |                1581 |                1061 |                1172 |              1302 |              2698 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              23 |               9 |              59 |              33 |             126 |              89 |           312 |           402 |
| Portugal | 2020-05-03 |     25282 |   1043 |      1689 | 252889 |          856 |    144 |                 199 |                 212 |                 337 |                 418 |                1245 |                1677 |                1497 |                2041 |                1654 |                2569 |                1670 |                2602 |                1342 |                1567 |                1052 |                1155 |              1286 |              2678 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              23 |               9 |              58 |              33 |             123 |              84 |           307 |           396 |
| Portugal | 2020-05-02 |     25190 |   1023 |      1671 | 252728 |          855 |    150 |                 199 |                 212 |                 337 |                 418 |                1245 |                1675 |                1497 |                2040 |                1654 |                2568 |                1670 |                2599 |                1342 |                1567 |                1052 |                1155 |              1283 |              2677 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              23 |               9 |              57 |              32 |             119 |              82 |           299 |           392 |
| Portugal | 2020-05-01 |     25351 |   1007 |      1647 | 251269 |          892 |    154 |                 196 |                 210 |                 340 |                 421 |                1250 |                1687 |                1504 |                2040 |                1681 |                2581 |                1673 |                2634 |                1360 |                1580 |                1068 |                1159 |              1296 |              2671 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               5 |               5 |              22 |               9 |              56 |              32 |             116 |              81 |           294 |           387 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous
day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2018 | continentExp |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- |
| 11/05/2020 |  11 |     5 | 2020 |   175 |      9 | Portugal                | PT    | PRT                  |    10281762 | NA           |
| 10/05/2020 |  10 |     5 | 2020 |   138 |     12 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 09/05/2020 |   9 |     5 | 2020 |   553 |      9 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 08/05/2020 |   8 |     5 | 2020 |   533 |     16 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 07/05/2020 |   7 |     5 | 2020 |   480 |     15 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 06/05/2020 |   6 |     5 | 2020 |   178 |     11 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 05/05/2020 |   5 |     5 | 2020 |     0 |      0 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 04/05/2020 |   4 |     5 | 2020 |   334 |     40 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 03/05/2020 |   3 |     5 | 2020 | \-161 |     16 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 02/05/2020 |   2 |     5 | 2020 |   364 |      0 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
