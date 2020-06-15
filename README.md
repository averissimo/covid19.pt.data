COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Tuesday, July 07, 2020)*

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

Only showing 1 day *(July
07)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10
days

| country  | date       | confirmed | deaths | recovered | tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | ----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-07-07 |     34693 |   1479 |     20995 |    NA |          398 |     58 |                 412 |                 379 |                 546 |                 661 |                2181 |                2568 |                2445 |                2916 |                2497 |                3340 |                2313 |                3343 |                1730 |                1977 |                1272 |                1429 |              1517 |              3134 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              32 |              15 |              87 |              43 |             170 |             112 |           430 |           570 |
| Portugal | 2020-06-15 |     37036 |   1520 |     22852 |    NA |          431 |     73 |                 493 |                 435 |                 615 |                 738 |                2424 |                2790 |                2701 |                3103 |                2697 |                3517 |                2473 |                3522 |                1834 |                2081 |                1320 |                1476 |              1564 |              3228 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              93 |              43 |             175 |             117 |           442 |           581 |
| Portugal | 2020-06-14 |     36690 |   1517 |     22669 |    NA |          419 |     73 |                 485 |                 432 |                 610 |                 728 |                2385 |                2749 |                2672 |                3075 |                2674 |                3484 |                2456 |                3491 |                1818 |                2073 |                1313 |                1466 |              1549 |              3200 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              93 |              43 |             175 |             116 |           440 |           581 |
| Portugal | 2020-06-13 |     36463 |   1512 |     22438 |    NA |          428 |     77 |                 478 |                 423 |                 605 |                 719 |                2365 |                2723 |                2643 |                3056 |                2655 |                3465 |                2441 |                3471 |                1814 |                2066 |                1306 |                1460 |              1548 |              3200 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              91 |              44 |             175 |             115 |           440 |           578 |
| Portugal | 2020-06-12 |     36180 |   1505 |     22200 |    NA |          440 |     73 |                 473 |                 424 |                 603 |                 711 |                2332 |                2698 |                2620 |                3037 |                2620 |                3438 |                2417 |                3456 |                1801 |                2052 |                1301 |                1450 |              1535 |              3187 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              33 |              15 |              90 |              43 |             173 |             115 |           439 |           577 |
| Portugal | 2020-06-11 |     35910 |   1504 |     22002 |    NA |          415 |     70 |                 459 |                 414 |                 592 |                 695 |                2305 |                2663 |                2596 |                3017 |                2605 |                3413 |                2399 |                3439 |                1792 |                2039 |                1293 |                1446 |              1535 |              3182 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              33 |              15 |              90 |              43 |             172 |             115 |           439 |           577 |
| Portugal | 2020-06-10 |     35600 |   1497 |     21742 |    NA |          417 |     70 |                 447 |                 403 |                 581 |                 681 |                2277 |                2650 |                2530 |                2983 |                2582 |                3400 |                2383 |                3412 |                1774 |                2028 |                1291 |                1443 |              1532 |              3178 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              33 |              15 |              88 |              43 |             171 |             114 |           437 |           576 |
| Portugal | 2020-06-09 |     35306 |   1492 |     21339 |    NA |          394 |     65 |                 436 |                 391 |                 562 |                 672 |                2244 |                2630 |                2502 |                2957 |                2559 |                3370 |                2367 |                3386 |                1760 |                2011 |                1284 |                1440 |              1531 |              3168 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              33 |              15 |              88 |              43 |             171 |             113 |           434 |           575 |
| Portugal | 2020-06-08 |     34885 |   1485 |     21156 |    NA |          366 |     55 |                 422 |                 386 |                 559 |                 666 |                2200 |                2590 |                2455 |                2925 |                2508 |                3352 |                2326 |                3361 |                1740 |                1989 |                1276 |                1432 |              1521 |              3144 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              32 |              15 |              88 |              43 |             171 |             112 |           434 |           570 |
| Portugal | 2020-06-07 |     34693 |   1479 |     20995 |    NA |          398 |     58 |                 412 |                 379 |                 546 |                 661 |                2181 |                2568 |                2445 |                2916 |                2497 |                3340 |                2313 |                3343 |                1730 |                1977 |                1272 |                1429 |              1517 |              3134 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              32 |              15 |              87 |              43 |             170 |             112 |           430 |           570 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous
day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2018 | continentExp |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- |
| 16/06/2020 |  16 |     6 | 2020 |   346 |      3 | Portugal                | PT    | PRT                  |    10281762 | NA           |
| 15/06/2020 |  15 |     6 | 2020 |   227 |      5 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 14/06/2020 |  14 |     6 | 2020 |   283 |      7 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 13/06/2020 |  13 |     6 | 2020 |   270 |      1 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 12/06/2020 |  12 |     6 | 2020 |   310 |      9 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 11/06/2020 |  11 |     6 | 2020 |   294 |      3 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 10/06/2020 |  10 |     6 | 2020 |   421 |      7 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 09/06/2020 |   9 |     6 | 2020 |   392 |      6 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 08/06/2020 |   8 |     6 | 2020 |   142 |      5 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
| 07/06/2020 |   7 |     6 | 2020 |   382 |      9 | Portugal                | PT    | PRT                  |    10281762 | Europe       |
