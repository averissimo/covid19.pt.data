COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, June 22, 2020)*

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

Only showing 1 day *(June 22)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-06-22 |     39392 |   1534 |     25548 | 364305 |          424 |     72 |                 561 |                 491 |                 695 |                 827 |                2611 |                3046 |                2911 |                3289 |                2900 |                3697 |                2614 |                3685 |                1920 |                2199 |                1365 |                1530 |              1625 |              3395 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              94 |              44 |             178 |             118 |           446 |           585 |
| Portugal | 2020-06-21 |     39133 |   1530 |     25376 | 363133 |          407 |     69 |                 554 |                 490 |                 684 |                 820 |                2600 |                3028 |                2897 |                3269 |                2884 |                3680 |                2609 |                3672 |                1912 |                2173 |                1354 |                1520 |              1615 |              3342 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              94 |              44 |             178 |             118 |           443 |           584 |
| Portugal | 2020-06-20 |     38841 |   1528 |     24906 | 361848 |          422 |     70 |                 542 |                 478 |                 670 |                 812 |                2586 |                2993 |                2867 |                3246 |                2852 |                3657 |                2596 |                3643 |                1905 |                2162 |                1351 |                1512 |              1609 |              3332 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              94 |              44 |             177 |             117 |           444 |           583 |
| Portugal | 2020-06-19 |     38464 |   1527 |     24477 | 359579 |          422 |     67 |                 530 |                 463 |                 657 |                 795 |                2554 |                2956 |                2836 |                3209 |                2820 |                3628 |                2578 |                3619 |                1898 |                2151 |                1346 |                1510 |              1595 |              3291 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              94 |              44 |             176 |             118 |           443 |           583 |
| Portugal | 2020-06-18 |     38089 |   1524 |     24010 | 357291 |          416 |     67 |                 519 |                 450 |                 640 |                 776 |                2519 |                2906 |                2799 |                3180 |                2802 |                3604 |                2552 |                3595 |                1879 |                2127 |                1342 |                1506 |              1588 |              3278 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              93 |              44 |             176 |             117 |           443 |           582 |
| Portugal | 2020-06-17 |     37672 |   1523 |     23580 | 355207 |          435 |     69 |                 508 |                 440 |                 629 |                 756 |                2472 |                2850 |                2759 |                3152 |                2775 |                3575 |                2522 |                3577 |                1866 |                2109 |                1328 |                1492 |              1580 |              3257 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              93 |              44 |             176 |             117 |           442 |           582 |
| Portugal | 2020-06-16 |     37336 |   1522 |     23212 | 353178 |          423 |     71 |                 503 |                 435 |                 619 |                 749 |                2451 |                2809 |                2727 |                3127 |                2733 |                3551 |                2489 |                3545 |                1849 |                2097 |                1324 |                1484 |              1571 |              3248 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              93 |              44 |             176 |             117 |           442 |           581 |
| Portugal | 2020-06-15 |     37036 |   1520 |     22852 | 351057 |          431 |     73 |                 493 |                 435 |                 615 |                 738 |                2424 |                2790 |                2701 |                3103 |                2697 |                3517 |                2473 |                3522 |                1834 |                2081 |                1320 |                1476 |              1564 |              3228 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              93 |              43 |             175 |             117 |           442 |           581 |
| Portugal | 2020-06-14 |     36690 |   1517 |     22669 | 349997 |          419 |     73 |                 485 |                 432 |                 610 |                 728 |                2385 |                2749 |                2672 |                3075 |                2674 |                3484 |                2456 |                3491 |                1818 |                2073 |                1313 |                1466 |              1549 |              3200 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              93 |              43 |             175 |             116 |           440 |           581 |
| Portugal | 2020-06-13 |     36463 |   1512 |     22438 | 348837 |          428 |     77 |                 478 |                 423 |                 605 |                 719 |                2365 |                2723 |                2643 |                3056 |                2655 |                3465 |                2441 |                3471 |                1814 |                2066 |                1306 |                1460 |              1548 |              3200 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              91 |              44 |             175 |             115 |           440 |           578 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- |
| 23/06/2020 |  23 |     6 | 2020 |   259 |      4 | Portugal                | PT    | PRT                  |    10276617 | NA           |
| 22/06/2020 |  22 |     6 | 2020 |   292 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 21/06/2020 |  21 |     6 | 2020 |   377 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 20/06/2020 |  20 |     6 | 2020 |   375 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 19/06/2020 |  19 |     6 | 2020 |   417 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 18/06/2020 |  18 |     6 | 2020 |   336 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 17/06/2020 |  17 |     6 | 2020 |   300 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 16/06/2020 |  16 |     6 | 2020 |   346 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 15/06/2020 |  15 |     6 | 2020 |   227 |      5 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 14/06/2020 |  14 |     6 | 2020 |   283 |      7 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
