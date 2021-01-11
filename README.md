COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, January 11, 2021)*

It downloads the [daily
report](https://covid19.min-saude.pt/relatorio-de-situacao/) from DGS
and stores this in data-friendly format under `/data` directory.

If you are here just for the data, this is what you want:

  - [dgs\_pt.csv](raw/master/data/dgs_pt.csv) *(raw data from Portugal’s
    DGS)*
  - [covid19\_pt.csv](raw/master/data/covid19_pt.csv) *(updated EU CDC
    dataset only featuring Portugal)*

A mortality analysis of Portugal is [available
here](https://averissimo.github.io/covid19-analysis/mortality.html)

# Check for new reports

``` r
download.updated.pt()
```

## Data for Portugal

![](README_files/figure-gfm/unnamed-chunk-7-1.svg)<!-- -->

![](README_files/figure-gfm/unnamed-chunk-8-1.svg)<!-- -->

![](README_files/figure-gfm/unnamed-chunk-9-1.svg)<!-- -->

# New cases / deaths by age groups

Age data may show different numbers from absolutes in the daily report.
This is out of our control and dependent on the data source *(DGS
covid19 dashboard)*.

![](README_files/figure-gfm/unnamed-chunk-12-1.svg)<!-- -->

    #> Warning in x + params$x: longer object length is not a multiple of shorter
    #> object length

![](README_files/figure-gfm/unnamed-chunk-12-2.svg)<!-- -->

# All cases / deaths by age groups

Age data may show different numbers from absolutes in the daily report.
This is out of our control and dependent on the data source *(DGS
covid19 dashboard)*.

![](README_files/figure-gfm/unnamed-chunk-13-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-13-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered | tests | hospitalized |  in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | ----: | -----------: | ------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2021-01-11 |      2775 |      0 |      2948 |    NA |          213 |     567 |               13047 |               12551 |               21875 |               22477 |               34851 |               39947 |               33094 |               39700 |               35330 |               45504 |               31217 |               40522 |               23007 |               24937 |               14644 |               16701 |             12974 |             26751 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              46 |              26 |             147 |              63 |             469 |             189 |            1035 |             597 |          2422 |          2907 |
| Portugal | 2021-01-10 |      2728 |     25 |      3028 |    NA |          215 | 3770558 |               12880 |               12414 |               21620 |               22205 |               34458 |               39500 |               32757 |               39266 |               34935 |               45014 |               30872 |               40073 |               22735 |               24621 |               14479 |               16506 |             12802 |             26387 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              45 |              26 |             145 |              63 |             459 |             185 |            1018 |             583 |          2392 |          2863 |
| Portugal | 2021-01-09 |      2689 |   7701 |      5899 |    NA |          104 | 3555540 |               12647 |               12217 |               21262 |               21849 |               33921 |               38926 |               32264 |               38695 |               34407 |               44397 |               30384 |               39470 |               22375 |               24202 |               14251 |               16237 |             12611 |             25908 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              44 |              26 |             144 |              61 |             455 |             183 |            1001 |             577 |          2358 |          2828 |
| Portugal | 2021-01-08 |      2645 |   7590 |      4480 |    NA |           22 | 3451536 |               12415 |               11994 |               20815 |               21370 |               33240 |               38182 |               31634 |               37996 |               33764 |               43539 |               29790 |               38746 |               21907 |               23678 |               13945 |               15886 |             12330 |             25320 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              44 |              24 |             143 |              60 |             447 |             179 |             982 |             569 |          2328 |          2790 |
| Portugal | 2021-01-07 |      2601 |   7472 |      3476 |    NA |            1 |     514 |               12156 |               11738 |               20316 |               20856 |               32460 |               37329 |               30926 |               37213 |               33050 |               42658 |               29139 |               37923 |               21406 |               23143 |               13666 |               15529 |             12089 |             24777 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              41 |              22 |             141 |              58 |             441 |             179 |             963 |             563 |          2294 |          2746 |
| Portugal | 2021-01-06 |      2563 |   7377 |      3115 |    NA |           33 | 3293513 |               11918 |               11504 |               19820 |               20354 |               31750 |               36512 |               30272 |               36412 |               32352 |               41737 |               28524 |               37106 |               20951 |               22640 |               13405 |               15167 |             11806 |             24219 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              40 |              22 |             139 |              58 |             437 |             178 |             945 |             556 |          2270 |          2708 |
| Portugal | 2021-01-05 |      2536 |      0 |      4691 |    NA |            2 |    3260 |               11692 |               11243 |               19328 |               19859 |               31047 |               35629 |               29582 |               35586 |               31602 |               40871 |               27885 |               36277 |               20476 |               22131 |               13118 |               14844 |             11530 |             23724 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              40 |              22 |             138 |              58 |             432 |             173 |             927 |             551 |          2244 |          2677 |
| Portugal | 2021-01-04 |      2512 |      0 |      1884 |    NA |          127 |    3171 |               11594 |               11141 |               19143 |               19632 |               30732 |               35217 |               29244 |               35167 |               31218 |               40379 |               27568 |               35874 |               20247 |               21851 |               12942 |               14666 |             11386 |             23470 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               6 |              40 |              22 |             136 |              56 |             425 |             166 |             917 |             549 |          2218 |          2644 |
| Portugal | 2021-01-03 |      2479 |      0 |      2385 |    NA |          186 |    3044 |               11477 |               11040 |               18962 |               19444 |               30471 |               34894 |               28961 |               34828 |               30874 |               39998 |               27283 |               35511 |               20015 |               21630 |               12775 |               14509 |             11240 |             23194 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               6 |              40 |              21 |             133 |              55 |             419 |             164 |             911 |             543 |          2194 |          2615 |
| Portugal | 2021-01-02 |      2443 |      0 |      1482 |    NA |           52 |    2858 |               11389 |               10957 |               18830 |               19309 |               30253 |               34640 |               28743 |               34592 |               30623 |               39710 |               27066 |               35195 |               19849 |               21450 |               12651 |               14366 |             11133 |             22967 |               0 |               1 |               1 |               1 |               3 |               3 |               7 |               6 |              40 |              20 |             131 |              55 |             412 |             164 |             897 |             539 |          2174 |          2591 |
| Portugal | 2021-01-01 |      2415 |   6972 |      4392 |    NA |            1 |    2806 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-12-31 |      2392 |   6906 |      3260 |    NA |         2840 |     482 |               11126 |               10693 |               18389 |               18831 |               29568 |               33809 |               28011 |               33749 |               29944 |               38828 |               26409 |               34341 |               19353 |               20895 |               12323 |               13995 |             10830 |             22438 |               0 |               1 |               1 |               1 |               3 |               3 |               7 |               6 |              39 |              20 |             128 |              54 |             402 |             160 |             879 |             526 |          2129 |          2547 |
| Portugal | 2020-12-30 |      2377 |   6830 |      3222 |    NA |            1 |    2896 |               10944 |               10487 |               18082 |               18439 |               29030 |               33195 |               27509 |               33135 |               29400 |               38101 |               25490 |               33693 |               19015 |               20522 |               12111 |               13714 |             10647 |             21943 |               0 |               1 |               1 |               1 |               3 |               3 |               6 |               6 |              38 |              20 |             125 |              53 |             397 |             159 |             870 |             521 |          2113 |          2513 |
| Portugal | 2020-12-29 |      2352 |      0 |      6112 |    NA |         2930 |     486 |               10812 |               10324 |               17806 |               18145 |               28621 |               32723 |               27065 |               32627 |               28957 |               37516 |               25478 |               33210 |               18729 |               20234 |               11946 |               13503 |             10493 |             21674 |               0 |               1 |               1 |               1 |               3 |               3 |               6 |               6 |              38 |              20 |             125 |              52 |             396 |             155 |             862 |             516 |          2086 |          2480 |
| Portugal | 2020-12-28 |      2319 |    959 |      1936 |    NA |           97 | 2967503 |               10741 |               10239 |               17669 |               18028 |               28355 |               32457 |               26823 |               32371 |               28682 |               37215 |               25244 |               32921 |               18538 |               20042 |               11826 |               13395 |             10436 |             21545 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              38 |              20 |             123 |              51 |             392 |             153 |             847 |             512 |          2067 |          2454 |
| Portugal | 2020-12-27 |      2299 |    945 |      3075 |    NA |           80 |    2870 |               10688 |               10196 |               17578 |               17925 |               28215 |               32292 |               26696 |               32210 |               28520 |               37023 |               25099 |               32747 |               18421 |               19948 |               11753 |               13305 |             10381 |             21438 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              38 |              20 |             122 |              50 |             388 |             152 |             843 |             507 |          2044 |          2435 |
| Portugal | 2020-12-26 |      2275 |      8 |      1545 |    NA |           36 |    2790 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-12-25 |      2243 |    926 |    315126 |    NA |         2754 |     504 |               10607 |               10127 |               17451 |               17810 |               28039 |               32090 |               26525 |               32006 |               28287 |               36766 |               24895 |               32519 |               18268 |               19789 |               11670 |               13195 |             10281 |             21319 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              38 |              20 |             120 |              50 |             377 |             151 |             825 |             494 |          2003 |          2380 |
| Portugal | 2020-12-24 |      2220 |     13 |    312533 |    NA |         2853 |     505 |               10470 |                9998 |              172277 |               17625 |               27793 |               31800 |               26265 |               31675 |               27980 |               36360 |               24630 |               32177 |               18054 |               19583 |               11524 |               13039 |             10165 |             21083 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              38 |              20 |             117 |              49 |             373 |             150 |             818 |             490 |          1977 |          2361 |
| Portugal | 2020-12-23 |      2196 |     14 |    308446 |    NA |         2990 |     511 |               10321 |                9888 |               17074 |               17455 |               27502 |               31483 |               25997 |               31358 |               27668 |               35959 |               24329 |               31844 |               17834 |               19320 |               11373 |               12855 |             10054 |             20807 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              38 |              19 |             116 |              49 |             369 |             148 |             809 |             484 |          1958 |          2333 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp | year\_week | cases\_weekly | deaths\_weekly | notification\_rate\_per\_100000\_population\_14-days |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- | :--------- | ------------: | -------------: | ---------------------------------------------------: |
| 12/01/2021 |  12 |     1 | 2021 |    47 |   \-25 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 11/01/2021 |  11 |     1 | 2021 |    39 | \-7676 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 10/01/2021 |  10 |     1 | 2021 |    44 |    111 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 09/01/2021 |   9 |     1 | 2021 |    44 |    118 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 08/01/2021 |   8 |     1 | 2021 |    38 |     95 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 07/01/2021 |   7 |     1 | 2021 |    27 |   7377 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 06/01/2021 |   6 |     1 | 2021 |    24 |      0 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 05/01/2021 |   5 |     1 | 2021 |    33 |      0 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 04/01/2021 |  NA |    NA |   NA |    NA |     NA | Portugal                | PT    | PRT                  |    10276617 | Europe       | 2020-53    |         30588 |            441 |                                               517.03 |
| 28/12/2020 |  NA |    NA |   NA |    NA |     NA | Portugal                | PT    | PRT                  |    10276617 | Europe       | 2020-52    |         22545 |            543 |                                               466.32 |
