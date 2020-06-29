COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, June 29, 2020)*

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

Only showing 1 day *(June 29)*

![](README_files/figure-gfm/unnamed-chunk-10-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-10-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-11-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-11-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-06-29 |     41912 |   1568 |     27205 | 378073 |          489 |     71 |                 653 |                 564 |                 791 |                 920 |                2814 |                3288 |                3150 |                3527 |                3080 |                3902 |                2755 |                3835 |                2016 |                2298 |                1419 |                1605 |              1704 |              3563 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |               8 |              35 |              15 |              97 |              46 |             182 |             120 |           456 |           595 |
| Portugal | 2020-06-28 |     41646 |   1564 |     27066 | 376815 |          458 |     75 |                 643 |                 559 |                 782 |                 908 |                2792 |                3260 |                3120 |                3506 |                3047 |                3885 |                2747 |                3817 |                2006 |                2293 |                1413 |                1598 |              1693 |              3549 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |               8 |              35 |              15 |              97 |              46 |             182 |             119 |           455 |           593 |
| Portugal | 2020-06-27 |     41189 |   1561 |     26864 | 375490 |          442 |     70 |                 625 |                 549 |                 764 |                 888 |                2758 |                3213 |                3077 |                3464 |                3022 |                3847 |                2722 |                3789 |                1996 |                2273 |                1410 |                1585 |              1675 |              3503 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |               8 |              35 |              15 |              97 |              46 |             181 |             119 |           455 |           591 |
| Portugal | 2020-06-26 |     40866 |   1555 |     26633 | 373293 |          457 |     67 |                 610 |                 536 |                 758 |                 877 |                2730 |                3181 |                3050 |                3431 |                3000 |                3821 |                2708 |                3763 |                1977 |                2258 |                1400 |                1580 |              1669 |              3488 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |               8 |              34 |              15 |              97 |              46 |             180 |             119 |           452 |           590 |
| Portugal | 2020-06-25 |     40415 |   1549 |     26382 | 371024 |          436 |     67 |                 596 |                 520 |                 738 |                 860 |                2700 |                3145 |                3001 |                3389 |                2980 |                3789 |                2678 |                3745 |                1957 |                2238 |                1390 |                1562 |              1652 |              3446 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |               8 |              34 |              15 |              96 |              46 |             180 |             119 |           448 |           589 |
| Portugal | 2020-06-24 |     40104 |   1543 |     26083 | 368967 |          429 |     73 |                 581 |                 509 |                 723 |                 846 |                2678 |                3112 |                2970 |                3359 |                2957 |                3763 |                2665 |                3724 |                1945 |                2234 |                1387 |                1552 |              1641 |              3428 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               1 |              10 |               8 |              34 |              15 |              95 |              46 |             179 |             119 |           446 |           587 |
| Portugal | 2020-06-23 |     39737 |   1540 |     25829 | 366777 |          441 |     72 |                 568 |                 501 |                 711 |                 839 |                2644 |                3080 |                2946 |                3323 |                2928 |                3731 |                2639 |                3706 |                1929 |                2216 |                1372 |                1535 |              1630 |              3411 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              95 |              45 |             179 |             119 |           446 |           587 |
| Portugal | 2020-06-22 |     39392 |   1534 |     25548 | 364305 |          424 |     72 |                 561 |                 491 |                 695 |                 827 |                2611 |                3046 |                2911 |                3289 |                2900 |                3697 |                2614 |                3685 |                1920 |                2199 |                1365 |                1530 |              1625 |              3395 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              94 |              44 |             178 |             118 |           446 |           585 |
| Portugal | 2020-06-21 |     39133 |   1530 |     25376 | 363133 |          407 |     69 |                 554 |                 490 |                 684 |                 820 |                2600 |                3028 |                2897 |                3269 |                2884 |                3680 |                2609 |                3672 |                1912 |                2173 |                1354 |                1520 |              1615 |              3342 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              94 |              44 |             178 |             118 |           443 |           584 |
| Portugal | 2020-06-20 |     38841 |   1528 |     24906 | 361848 |          422 |     70 |                 542 |                 478 |                 670 |                 812 |                2586 |                2993 |                2867 |                3246 |                2852 |                3657 |                2596 |                3643 |                1905 |                2162 |                1351 |                1512 |              1609 |              3332 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               1 |              10 |               7 |              34 |              15 |              94 |              44 |             177 |             117 |           444 |           583 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- |
| 30/06/2020 |  30 |     6 | 2020 |   266 |      4 | Portugal                | PT    | PRT                  |    10276617 | NA           |
| 29/06/2020 |  29 |     6 | 2020 |   457 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 28/06/2020 |  28 |     6 | 2020 |   323 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 27/06/2020 |  27 |     6 | 2020 |   451 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 26/06/2020 |  26 |     6 | 2020 |   311 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 25/06/2020 |  25 |     6 | 2020 |   367 |      3 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 24/06/2020 |  24 |     6 | 2020 |   345 |      6 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 23/06/2020 |  23 |     6 | 2020 |   259 |      4 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 22/06/2020 |  22 |     6 | 2020 |   292 |      2 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
| 21/06/2020 |  21 |     6 | 2020 |   377 |      1 | Portugal                | PT    | PRT                  |    10276617 | Europe       |
