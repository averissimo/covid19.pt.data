COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, December 21, 2020)*

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

![](README_files/figure-gfm/unnamed-chunk-12-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-12-2.svg)<!-- -->

# All cases / deaths by age groups

Age data may show different numbers from absolutes in the daily report.
This is out of our control and dependent on the data source *(DGS
covid19 dashboard)*.

![](README_files/figure-gfm/unnamed-chunk-13-1.svg)<!-- -->

    #> Warning in x + params$x: longer object length is not a multiple of shorter
    #> object length

![](README_files/figure-gfm/unnamed-chunk-13-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10 days

| country  | date       | confirmed | deaths | recovered | tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | ----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-12-21 |    376220 |   6191 |    299603 |    NA |         3158 |    502 |               10110 |                9734 |               16774 |               17171 |               27076 |               30974 |               25576 |               30799 |               27132 |               35309 |               23865 |               31235 |               17452 |               18952 |               11132 |               12599 |              9832 |             20361 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              36 |              19 |             115 |              46 |             366 |             146 |             785 |             473 |          1912 |          2273 |
| Portugal | 2020-12-20 |    374121 |   6134 |    297233 |    NA |         3027 |    483 |               10051 |                9683 |               16676 |               17068 |               26958 |               30813 |               25451 |               30637 |               26991 |               35126 |               23730 |               31065 |               17337 |               18838 |               11064 |               12513 |              9774 |             20210 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              36 |              19 |             113 |              46 |             365 |             146 |             779 |             470 |          1890 |          2250 |
| Portugal | 2020-12-19 |    370787 |   6063 |    294814 |    NA |         2973 |    485 |                9962 |                9557 |               16528 |               16913 |               26766 |               30571 |               25259 |               30365 |               26770 |               34803 |               23503 |               30801 |               17180 |               18662 |               10967 |               12394 |              9675 |             19975 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              36 |              19 |             113 |              46 |             363 |             142 |             769 |             464 |          1867 |          2224 |
| Portugal | 2020-12-18 |    366952 |   5977 |    290690 |    NA |         3061 |    484 |                9849 |                9434 |               16350 |               16742 |               26504 |               30310 |               25004 |               30063 |               26516 |               34486 |               23262 |               30477 |               17017 |               18448 |               10834 |               12252 |              9543 |             19729 |               0 |               1 |               1 |               1 |               2 |               3 |               6 |               6 |              35 |              19 |             112 |              46 |             352 |             141 |             760 |             456 |          1844 |          2192 |
| Portugal | 2020-12-17 |    362616 |   5902 |    287028 |    NA |         3142 |    494 |                9712 |                9303 |               16158 |               16526 |               26234 |               30004 |               24739 |               29754 |               26253 |               34130 |               22991 |               30076 |               16782 |               18199 |               10695 |               12065 |              9402 |             19461 |               0 |               1 |               0 |               1 |               2 |               3 |               6 |               6 |              34 |              19 |             112 |              45 |             347 |             140 |             750 |             447 |          1825 |          2164 |
| Portugal | 2020-12-16 |    358296 |   5815 |    283719 |    NA |         3181 |    486 |                9581 |                9190 |               15949 |               16326 |               25932 |               29683 |               24474 |               29452 |               25953 |               33763 |               22727 |               29722 |               16567 |               17966 |               10554 |               11910 |              9272 |             19145 |               0 |               1 |               0 |               1 |               2 |               3 |               6 |               6 |              33 |              19 |             112 |              44 |             343 |             138 |             743 |             441 |          1798 |          2125 |
| Portugal | 2020-12-15 |    353576 |   5733 |    280038 |    NA |         3206 |    506 |                9448 |                9051 |               15732 |               16100 |               25625 |               29294 |               24191 |               29128 |               25590 |               33345 |               22429 |               29340 |               16332 |               17687 |               10390 |               11718 |              9147 |             18899 |               0 |               1 |               0 |               1 |               2 |               3 |               6 |               6 |              31 |              18 |             110 |              42 |             340 |             135 |             731 |             435 |          1775 |          2097 |
| Portugal | 2020-12-14 |    350938 |   5649 |    274277 |    NA |         3254 |    513 |                9376 |                8985 |               15619 |               16027 |               25436 |               29069 |               24044 |               28901 |               25398 |               33128 |               22285 |               29100 |               16192 |               17546 |               10305 |               11619 |              9048 |             18727 |               0 |               1 |               0 |               1 |               2 |               3 |               6 |               6 |              31 |              18 |             109 |              42 |             337 |             132 |             718 |             428 |          1751 |          2064 |
| Portugal | 2020-12-13 |    348744 |   5559 |    271322 |    NA |         3157 |    513 |                9321 |                8918 |               15511 |               15927 |               25300 |               28923 |               23891 |               28731 |               25261 |               32947 |               22151 |               28918 |               16095 |               17426 |               10234 |               10234 |              8954 |             18573 |               0 |               1 |               0 |               1 |               2 |               3 |               6 |               5 |              30 |              16 |             109 |              41 |             333 |             130 |             707 |             423 |          1727 |          2025 |
| Portugal | 2020-12-12 |    344700 |   5461 |    268453 |    NA |         3093 |    503 |                9217 |                8805 |               15294 |               15703 |               25051 |               28582 |               23626 |               28432 |               24992 |               32601 |               21900 |               28577 |               15927 |               17202 |               10091 |               11363 |              8849 |             18355 |               0 |               1 |               0 |               1 |               2 |               3 |               5 |               4 |              30 |              16 |             109 |              41 |             329 |             130 |             694 |             419 |          1693 |          1984 |
| Portugal | 2020-12-11 |    340287 |   5373 |    263648 |    NA |         3230 |    507 |                9097 |                8685 |               15070 |               15501 |               24722 |               28231 |               23330 |               28074 |               24684 |               32231 |               21619 |               28210 |               15736 |               16980 |                9950 |               11231 |              8747 |             18055 |               0 |               1 |               0 |               0 |               2 |               3 |               5 |               4 |              30 |              16 |             108 |              39 |             325 |             128 |             680 |             412 |          1666 |          1954 |
| Portugal | 2020-12-10 |    335207 |   5278 |    259548 |    NA |         3304 |    509 |                8966 |                8539 |               14828 |               15230 |               24387 |               27854 |               23013 |               27688 |               24339 |               31763 |               21323 |               27778 |               15474 |               16731 |                9795 |               11038 |              8620 |             17708 |               0 |               1 |               0 |               0 |               2 |               3 |               5 |               4 |              30 |              16 |             108 |              39 |             319 |             128 |             668 |             405 |          1643 |          1907 |
| Portugal | 2020-12-09 |    332073 |   5192 |    254700 |    NA |         3332 |    504 |                8732 |                8297 |               14526 |               14930 |               23223 |               27009 |               22195 |               27024 |               23595 |               31059 |               20802 |               27181 |               15091 |               16360 |                9576 |               10766 |              8348 |             17155 |               0 |               1 |               0 |               0 |               2 |               3 |               5 |               4 |              30 |              16 |             107 |              38 |             317 |             126 |             662 |             394 |          1608 |          1879 |
| Portugal | 2020-12-08 |    327976 |   5122 |    252428 |    NA |         3263 |    499 |                8609 |                8176 |               14342 |               14720 |               23000 |               26711 |               21930 |               26702 |               23319 |               30698 |               20532 |               26851 |               14896 |               16160 |                9448 |               10606 |              8224 |             16867 |               0 |               1 |               0 |               0 |               2 |               3 |               5 |               4 |              30 |              16 |             107 |              38 |             311 |             126 |             649 |             393 |          1579 |          1858 |
| Portugal | 2020-12-07 |    325071 |   5041 |    245843 |    NA |         3367 |    513 |                8536 |                8101 |               14240 |               14608 |               22815 |               26491 |               21763 |               26490 |               23127 |               30486 |               20340 |               26600 |               14730 |               16014 |                9354 |               10495 |              8121 |             16608 |               0 |               1 |               0 |               0 |               2 |               3 |               5 |               4 |              30 |              16 |             106 |              38 |             304 |             123 |             639 |             390 |          1554 |          1826 |
| Portugal | 2020-12-06 |    322474 |   4963 |    243055 |    NA |         3268 |    514 |                8459 |                8023 |               14132 |               14494 |               22672 |               26312 |               21611 |               26307 |               22943 |               30233 |               20190 |               26405 |               14608 |               15887 |                9241 |               10394 |              8023 |             16406 |               0 |               1 |               0 |               0 |               2 |               3 |               4 |               4 |              30 |              16 |             105 |              37 |             301 |             120 |             631 |             386 |          1519 |          1804 |
| Portugal | 2020-12-05 |    318640 |   4876 |    240203 |    NA |         3229 |    517 |                8321 |                7886 |               13931 |               14321 |               22486 |               26053 |               21416 |               26023 |               22686 |               29845 |               19966 |               26112 |               14429 |               15711 |                9113 |               10249 |              7885 |             16115 |               0 |               1 |               0 |               0 |               2 |               3 |               4 |               4 |              30 |              15 |             102 |              37 |             297 |             118 |             621 |             382 |          1489 |          1771 |
| Portugal | 2020-12-04 |    312553 |   4803 |    234038 |    NA |         3295 |    526 |                8161 |                7735 |               13632 |               14055 |               22093 |               25601 |               21066 |               25585 |               22346 |               29355 |               19637 |               25728 |               14195 |               15461 |                8956 |               10088 |              7731 |             15851 |               0 |               1 |               0 |               0 |               2 |               3 |               4 |               4 |              30 |              15 |             102 |              37 |             286 |             114 |             607 |             377 |          1471 |          1750 |
| Portugal | 2020-12-03 |    307618 |   4724 |    229018 |    NA |         3330 |    525 |                8022 |                7574 |               13394 |               13784 |               21777 |               25276 |               20754 |               25184 |               21986 |               28846 |               19325 |               25336 |               13891 |               15220 |                8826 |                9907 |              7610 |             15580 |               0 |               1 |               0 |               0 |               2 |               3 |               4 |               4 |              30 |              15 |             101 |              37 |             283 |             113 |             601 |             368 |          1441 |          1721 |
| Portugal | 2020-12-02 |    303846 |   4645 |    223446 |    NA |         3338 |    525 |                7915 |                7475 |               13243 |               13603 |               21554 |               25000 |               20512 |               24920 |               21729 |               28484 |               19100 |               25003 |               13797 |               15029 |                8692 |                9757 |              7500 |             15330 |               0 |               1 |               0 |               0 |               2 |               3 |               4 |               4 |              30 |              15 |              98 |              37 |             277 |             112 |             590 |             362 |          1419 |          1691 |

## Data from EU CDC updated

Only showing last 10 days.

Don’t be alarmed with the first line being in the future, EU CDC date
always refer to the situation on the previous day.

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2019 | continentExp | year\_week | cases\_weekly | deaths\_weekly | notification\_rate\_per\_100000\_population\_14-days |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: | :----------- | :--------- | ------------: | -------------: | ---------------------------------------------------: |
| 22/12/2020 |  22 |    12 | 2020 |  2099 |     57 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 21/12/2020 |  21 |    12 | 2020 |  3334 |     71 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 20/12/2020 |  20 |    12 | 2020 |  3835 |     86 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 19/12/2020 |  19 |    12 | 2020 |  4336 |     75 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 18/12/2020 |  18 |    12 | 2020 |  4320 |     87 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 17/12/2020 |  17 |    12 | 2020 |  4720 |     82 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 16/12/2020 |  16 |    12 | 2020 |  2638 |     84 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 15/12/2020 |  15 |    12 | 2020 |  2194 |     90 | Portugal                | PT    | PRT                  |    10276617 | Europe       | NA         |            NA |             NA |                                                   NA |
| 14/12/2020 |  NA |    NA |   NA |    NA |     NA | Portugal                | PT    | PRT                  |    10276617 | Europe       | 2020-50    |         26270 |            596 |                                               524.93 |
| 07/12/2020 |  NA |    NA |   NA |    NA |     NA | Portugal                | PT    | PRT                  |    10276617 | Europe       | 2020-49    |         27675 |            536 |                                               600.55 |
