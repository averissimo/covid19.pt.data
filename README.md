COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, January 03, 2021)*

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
| Portugal | 2020-12-22 |      2156 |      0 |      5222 |    NA |            0 |       6 |               10176 |                9778 |               16869 |               17272 |               27212 |               31164 |               25713 |               31002 |               27317 |               35539 |               24021 |               31454 |               17593 |               19098 |               11218 |               12673 |              9916 |             20504 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              38 |              19 |             115 |              48 |             366 |             148 |             794 |             477 |          1936 |          2293 |
| Portugal | 2020-12-21 |    376220 |   6191 |    299603 |    NA |         3158 |     502 |               10110 |                9734 |               16774 |               17171 |               27076 |               30974 |               25576 |               30799 |               27132 |               35309 |               23865 |               31235 |               17452 |               18952 |               11132 |               12599 |              9832 |             20361 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              36 |              19 |             115 |              46 |             366 |             146 |             785 |             473 |          1912 |          2273 |
| Portugal | 2020-12-20 |    374121 |   6134 |    297233 |    NA |         3027 |     483 |               10051 |                9683 |               16676 |               17068 |               26958 |               30813 |               25451 |               30637 |               26991 |               35126 |               23730 |               31065 |               17337 |               18838 |               11064 |               12513 |              9774 |             20210 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              36 |              19 |             113 |              46 |             365 |             146 |             779 |             470 |          1890 |          2250 |
| Portugal | 2020-12-19 |    370787 |   6063 |    294814 |    NA |         2973 |     485 |                9962 |                9557 |               16528 |               16913 |               26766 |               30571 |               25259 |               30365 |               26770 |               34803 |               23503 |               30801 |               17180 |               18662 |               10967 |               12394 |              9675 |             19975 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              36 |              19 |             113 |              46 |             363 |             142 |             769 |             464 |          1867 |          2224 |
| Portugal | 2020-12-18 |    366952 |   5977 |    290690 |    NA |         3061 |     484 |                9849 |                9434 |               16350 |               16742 |               26504 |               30310 |               25004 |               30063 |               26516 |               34486 |               23262 |               30477 |               17017 |               18448 |               10834 |               12252 |              9543 |             19729 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              35 |              19 |             112 |              46 |             352 |             141 |             760 |             456 |          1844 |          2192 |
| Portugal | 2020-12-17 |    362616 |   5902 |    287028 |    NA |         3142 |     494 |                9712 |                9303 |               16158 |               16526 |               26234 |               30004 |               24739 |               29754 |               26253 |               34130 |               22991 |               30076 |               16782 |               18199 |               10695 |               12065 |              9402 |             19461 |               0 |               1 |               0 |               1 |               2 |               3 |               6 |               6 |              34 |              19 |             112 |              45 |             347 |             140 |             750 |             447 |          1825 |          2164 |
| Portugal | 2020-12-16 |    358296 |   5815 |    283719 |    NA |         3181 |     486 |                9581 |                9190 |               15949 |               16326 |               25932 |               29683 |               24474 |               29452 |               25953 |               33763 |               22727 |               29722 |               16567 |               17966 |               10554 |               11910 |              9272 |             19145 |               0 |               1 |               0 |               1 |               2 |               3 |               6 |               6 |              33 |              19 |             112 |              44 |             343 |             138 |             743 |             441 |          1798 |          2125 |
| Portugal | 2020-12-15 |    353576 |   5733 |    280038 |    NA |         3206 |     506 |                9448 |                9051 |               15732 |               16100 |               25625 |               29294 |               24191 |               29128 |               25590 |               33345 |               22429 |               29340 |               16332 |               17687 |               10390 |               11718 |              9147 |             18899 |               0 |               1 |               0 |               1 |               2 |               3 |               6 |               6 |              31 |              18 |             110 |              42 |             340 |             135 |             731 |             435 |          1775 |          2097 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp | year\_week | cases\_weekly | deaths\_weekly | notification\_rate\_per\_100000\_population\_14-days |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- | :--------- | ------------: | -------------: | ---------------------------------------------------: |
| 04/01/2021 |   4 |     1 | 2021 |    36 |      0 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 03/01/2021 |   3 |     1 | 2021 |    28 | \-6972 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 02/01/2021 |   2 |     1 | 2021 |    23 |     66 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 01/01/2021 |   1 |     1 | 2021 |    15 |     76 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 31/12/2020 |  31 |    12 | 2020 |    25 |   6830 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 30/12/2020 |  30 |    12 | 2020 |    33 |  \-959 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 29/12/2020 |  29 |    12 | 2020 |    20 |     14 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 28/12/2020 |  NA |    NA |   NA |    NA |     NA | Portugal                | PT    | PRT                  |    10276617 | Europe       | 2020-52    |         22545 |            543 |                                               466.32 |
| 21/12/2020 |  NA |    NA |   NA |    NA |     NA | Portugal                | PT    | PRT                  |    10276617 | Europe       | 2020-51    |         25377 |            575 |                                               502.57 |
| 14/12/2020 |  NA |    NA |   NA |    NA |     NA | Portugal                | PT    | PRT                  |    10276617 | Europe       | 2020-50    |         26270 |            596 |                                               524.93 |
