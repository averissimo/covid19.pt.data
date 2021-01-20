COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Tuesday, January 19, 2021)*

It downloads the [daily
report](https://covid19.min-saude.pt/relatorio-de-situacao/) from DGS
and stores this in data-friendly format under `/data` directory. It also
retrieves age data from the DGS’ [ESRI
dashboard](https://covid19.min-saude.pt/ponto-de-situacao-atual-em-portugal/)

If you are here just for the data, this is what you want:

  - [dgs\_pt.csv](raw/master/data/dgs_pt.csv) *(raw data from Portugal’s
    DGS)*

note: The EU CDC data has been removed as the daily reports from EU have
been discontinued in favor of weekly counts.

A mortality analysis of Portugal is [available
here](https://averissimo.github.io/covid19-analysis/mortality.html)

# Check for new reports

``` r
download.updated.pt()
```

## Data for Portugal

Last 5 days *(how each column is changing over these days)*

| country  | date       | confirmed | deaths | recovered | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2021-01-19 |     10455 |    218 |     10282 |          126 |      6 |                 253 |                 278 |                 458 |                 434 |                 602 |                 697 |                 637 |                 820 |                 809 |                 998 |                 686 |                 901 |                 563 |                 543 |                 349 |                 352 |               324 |               748 |               0 |               0 |               0 |               0 |               0 |               0 |               2 |               0 |               0 |               0 |               4 |               3 |              11 |               5 |              32 |              10 |            62 |            89 |
| Portugal | 2021-01-18 |      6702 |    167 |      4660 |          276 |     17 |                 223 |                 223 |                 371 |                 334 |                 431 |                 467 |                 419 |                 534 |                 494 |                 616 |               \-299 |                 514 |                 342 |                 338 |                 221 |                 214 |               186 |               354 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               2 |               0 |               1 |               1 |               2 |               7 |               5 |              17 |               5 |            62 |            64 |
| Portugal | 2021-01-17 |     10385 |    152 |      4387 |          236 |      9 |                 363 |                 324 |                 545 |                 540 |                 591 |                 729 |                 620 |                 745 |                 768 |                 985 |                1310 |                 813 |                 483 |                 591 |                 327 |                 327 |               291 |               702 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               2 |               1 |               6 |               3 |              26 |              13 |            48 |            52 |
| Portugal | 2021-01-16 |     10947 |    166 |      8477 |           93 |     16 |                 349 |                 332 |                 593 |                 635 |                 701 |                 782 |                 651 |                 830 |                 816 |                1028 |                 728 |                 907 |                 506 |                 522 |                 363 |                 382 |               299 |               569 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               5 |               0 |             313 |               3 |              20 |              15 |            52 |            56 |
| Portugal | 2021-01-15 |     10663 |    159 |      6458 |          192 |     11 |                 354 |                 341 |                 509 |                 569 |                 751 |                 733 |                 681 |                 788 |                 776 |                1010 |                 722 |                 887 |                 487 |                 494 |                 349 |                 376 |               276 |               555 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               3 |               0 |           \-293 |               6 |              22 |              11 |            42 |            67 |

![](README_files/figure-gfm/totals-1.svg)<!-- -->

![](README_files/figure-gfm/differential-1.svg)<!-- -->

![](README_files/figure-gfm/differential_7days-1.svg)<!-- -->

# New cases / deaths by age groups

Age data may show different numbers from absolutes in the daily report.
This is out of our control and dependent on the data source *(DGS
covid19 dashboard)*.

![](README_files/figure-gfm/new_cases_deaths-1.svg)<!-- -->![](README_files/figure-gfm/new_cases_deaths-2.svg)<!-- -->

# All cases / deaths by age groups

Age data may show different numbers from absolutes in the daily report.
This is out of our control and dependent on the data source *(DGS
covid19 dashboard)*.

![](README_files/figure-gfm/total_cases_deaths-1.svg)<!-- -->![](README_files/figure-gfm/total_cases_deaths-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 20 days

| country  | date       | confirmed | deaths | recovered | tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | ----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2021-01-19 |    566958 |   9246 |    421871 |    NA |         5291 |    670 |               15385 |               14819 |               25716 |               26302 |               39770 |               45542 |               37960 |               45585 |               40996 |               52820 |               36193 |               46914 |               26907 |               28953 |               17149 |               19404 |             15150 |             31211 |               0 |               1 |               1 |               1 |               4 |               3 |              11 |              11 |              54 |              28 |             172 |              71 |             548 |             225 |            1191 |             692 |          2826 |          3407 |
| Portugal | 2021-01-18 |    556503 |   9028 |    411589 |    NA |         5165 |    664 |               15132 |               14541 |               25258 |               25868 |               39168 |               44845 |               37323 |               44765 |               40187 |               51822 |               35507 |               46013 |               26344 |               28410 |               16800 |               19052 |             14826 |             30463 |               0 |               1 |               1 |               1 |               4 |               3 |               9 |              11 |              54 |              28 |             168 |              68 |             537 |             220 |            1159 |             682 |          2764 |          3318 |
| Portugal | 2021-01-17 |    549801 |   8861 |    406929 |    NA |         4889 |    647 |               14909 |               14318 |               24887 |               25534 |               38737 |               44378 |               36904 |               44231 |               39693 |               51206 |               35806 |               45499 |               26002 |               28072 |               16579 |               18838 |             14640 |             30109 |               0 |               1 |               1 |               1 |               3 |               3 |               9 |               9 |              54 |              27 |             167 |              66 |             530 |             215 |            1142 |             677 |          2702 |          3254 |
| Portugal | 2021-01-16 |    539416 |   8709 |    402542 |    NA |         4653 |    638 |               14546 |               13994 |               24342 |               24994 |               38146 |               43649 |               36284 |               43486 |               38925 |               50221 |               34496 |               44686 |               25519 |               27481 |               16252 |               18511 |             14349 |             29407 |               0 |               1 |               1 |               1 |               3 |               3 |               9 |               8 |              54 |              27 |             165 |              65 |             524 |             212 |            1116 |             664 |          2654 |          3202 |
| Portugal | 2021-01-15 |    528469 |   8543 |    394065 |    NA |         4560 |    622 |               14197 |               13662 |               23749 |               24359 |               37445 |               42867 |               35633 |               42656 |               38109 |               49193 |               33768 |               43779 |               25013 |               26959 |               15889 |               18129 |             14050 |             28838 |               0 |               1 |               1 |               1 |               3 |               3 |               9 |               7 |              53 |              27 |             160 |              65 |             211 |             209 |            1096 |             649 |          2602 |          3146 |
| Portugal | 2021-01-14 |    517806 |   8384 |    387607 |    NA |         4368 |    611 |               13843 |               13321 |               23240 |               23790 |               36694 |               42134 |               34952 |               41868 |               37333 |               48183 |               33046 |               42892 |               24526 |               26465 |               15540 |               17753 |             13774 |             28283 |               0 |               1 |               1 |               1 |               3 |               3 |               9 |               7 |              52 |              27 |             157 |              65 |             504 |             203 |            1074 |             638 |          2560 |          3079 |
| Portugal | 2021-01-13 |    507108 |   8236 |    382544 |    NA |         4240 |    596 |               13524 |               12998 |               22723 |               23308 |               36004 |               41364 |               34299 |               41072 |               36554 |               47163 |               32376 |               41999 |               23978 |               25933 |               15208 |               17353 |             13428 |             27657 |               0 |               1 |               1 |               1 |               3 |               3 |               9 |               7 |              49 |              26 |             155 |              64 |             490 |             197 |            1060 |             618 |          2522 |          3030 |
| Portugal | 2021-01-12 |    496552 |   8080 |    378084 |    NA |         4043 |    599 |               13225 |               12699 |               22215 |               22816 |               35334 |               40545 |               33562 |               40252 |               35833 |               46145 |               31709 |               41096 |               23419 |               25372 |               14899 |               16989 |             13169 |             27106 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              47 |              26 |             151 |              63 |             480 |             195 |            1048 |             609 |          2465 |          2972 |
| Portugal | 2021-01-11 |    489293 |   7925 |    372056 |    NA |         3983 |    567 |               13047 |               12551 |               21875 |               22477 |               34851 |               39947 |               33094 |               39700 |               35330 |               45504 |               31217 |               40522 |               23007 |               24937 |               14644 |               16701 |             12974 |             26751 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              46 |              26 |             147 |              63 |             469 |             189 |            1035 |             597 |          2422 |          2907 |
| Portugal | 2021-01-10 |    483689 |   7803 |    369108 |    NA |         3770 |    558 |               12880 |               12414 |               21620 |               22205 |               34458 |               39500 |               32757 |               39266 |               34935 |               45014 |               30872 |               40073 |               22735 |               24621 |               14479 |               16506 |             12802 |             26387 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              45 |              26 |             145 |              63 |             459 |             185 |            1018 |             583 |          2392 |          2863 |
| Portugal | 2021-01-09 |    476187 |   7701 |    366080 |    NA |         3555 |    540 |               12647 |               12217 |               21262 |               21849 |               33921 |               38926 |               32264 |               38695 |               34407 |               44397 |               30384 |               39470 |               22375 |               24202 |               14251 |               16237 |             12611 |             25908 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              44 |              26 |             144 |              61 |             455 |             183 |            1001 |             577 |          2358 |          2828 |
| Portugal | 2021-01-08 |    466709 |   7590 |    360181 |    NA |         3451 |    536 |               12415 |               11994 |               20815 |               21370 |               33240 |               38182 |               31634 |               37996 |               33764 |               43539 |               29790 |               38746 |               21907 |               23678 |               13945 |               15886 |             12330 |             25320 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              44 |              24 |             143 |              60 |             447 |             179 |             982 |             569 |          2328 |          2790 |
| Portugal | 2021-01-07 |    456533 |   7472 |    355701 |    NA |         3333 |    514 |               12156 |               11738 |               20316 |               20856 |               32460 |               37329 |               30926 |               37213 |               33050 |               42658 |               29139 |               37923 |               21406 |               23143 |               13666 |               15529 |             12089 |             24777 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              41 |              22 |             141 |              58 |             441 |             179 |             963 |             563 |          2294 |          2746 |
| Portugal | 2021-01-06 |    446606 |   7377 |    352225 |    NA |         3293 |    513 |               11918 |               11504 |               19820 |               20354 |               31750 |               36512 |               30272 |               36412 |               32352 |               41737 |               28524 |               37106 |               20951 |               22640 |               13405 |               15167 |             11806 |             24219 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              40 |              22 |             139 |              58 |             437 |             178 |             945 |             556 |          2270 |          2708 |
| Portugal | 2021-01-05 |    436579 |   7286 |    349110 |    NA |         3260 |    512 |               11692 |               11243 |               19328 |               19859 |               31047 |               35629 |               29582 |               35586 |               31602 |               40871 |               27885 |               36277 |               20476 |               22131 |               13118 |               14844 |             11530 |             23724 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               7 |              40 |              22 |             138 |              58 |             432 |             173 |             927 |             551 |          2244 |          2677 |
| Portugal | 2021-01-04 |    431623 |   7196 |    344419 |    NA |         3171 |    510 |               11594 |               11141 |               19143 |               19632 |               30732 |               35217 |               29244 |               35167 |               31218 |               40379 |               27568 |               35874 |               20247 |               21851 |               12942 |               14666 |             11386 |             23470 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               6 |              40 |              22 |             136 |              56 |             425 |             166 |             917 |             549 |          2218 |          2644 |
| Portugal | 2021-01-03 |    427254 |   7118 |    342535 |    NA |         3044 |    500 |               11477 |               11040 |               18962 |               19444 |               30471 |               34894 |               28961 |               34828 |               30874 |               39998 |               27283 |               35511 |               20015 |               21630 |               12775 |               14509 |             11240 |             23194 |               0 |               1 |               1 |               1 |               3 |               3 |               8 |               6 |              40 |              21 |             133 |              55 |             419 |             164 |             911 |             543 |          2194 |          2615 |
| Portugal | 2021-01-02 |    423870 |   7045 |    340150 |    NA |         2858 |    492 |               11389 |               10957 |               18830 |               19309 |               30253 |               34640 |               28743 |               34592 |               30623 |               39710 |               27066 |               35195 |               19849 |               21450 |               12651 |               14366 |             11133 |             22967 |               0 |               1 |               1 |               1 |               3 |               3 |               7 |               6 |              40 |              20 |             131 |              55 |             412 |             164 |             897 |             539 |          2174 |          2591 |
| Portugal | 2021-01-01 |    420629 |   6972 |    338668 |    NA |         2806 |    483 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2020-12-31 |    413678 |   6906 |    334276 |    NA |         2840 |    482 |               11126 |               10693 |               18389 |               18831 |               29568 |               33809 |               28011 |               33749 |               29944 |               38828 |               26409 |               34341 |               19353 |               20895 |               12323 |               13995 |             10830 |             22438 |               0 |               1 |               1 |               1 |               3 |               3 |               7 |               6 |              39 |              20 |             128 |              54 |             402 |             160 |             879 |             526 |          2129 |          2547 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

    #> # A tibble: 20 x 21
    #>    date       confirmed predicted_futur… `00-09_men` `00-09_women` `10-19_men`
    #>    <date>     <chr>                <dbl>       <dbl>         <dbl>       <dbl>
    #>  1 2021-01-19 566 958              201.            0         0.019       0.018
    #>  2 2021-01-18 556 503              109.            0         0.015       0.014
    #>  3 2021-01-17 549 801              189.            0         0.022       0.021
    #>  4 2021-01-16 539 416              178.            0         0.022       0.023
    #>  5 2021-01-15 528 469              170.            0         0.023       0.02 
    #>  6 2021-01-14 517 806              192.            0         0.022       0.02 
    #>  7 2021-01-13 507 108              165.            0         0.02        0.02 
    #>  8 2021-01-12 496 552              119.            0         0.01        0.013
    #>  9 2021-01-11 489 293              102.            0         0.009       0.01 
    #> 10 2021-01-10 483 689              129.            0         0.013       0.014
    #> 11 2021-01-09 476 187              170.            0         0.015       0.017
    #> 12 2021-01-08 466 709              157.            0         0.017       0.019
    #> 13 2021-01-07 456 533              164.            0         0.016       0.019
    #> 14 2021-01-06 446 606              157.            0         0.018       0.019
    #> 15 2021-01-05 436 579               83.2           0         0.007       0.007
    #> 16 2021-01-04 431 623               83.8           0         0.007       0.007
    #> 17 2021-01-03 427 254               65.4           0         0.006       0.005
    #> 18 2021-01-02 423 870              171.            0         0.018       0.017
    #> 19 2020-12-31 413 678              130.            0         0.014       0.012
    #> 20 2020-12-30 406 051               87.2           0         0.011       0.011
    #> # … with 15 more variables: `10-19_women` <dbl>, `20-29_men` <dbl>,
    #> #   `20-29_women` <dbl>, `30-39_men` <dbl>, `30-39_women` <dbl>,
    #> #   `40-49_men` <dbl>, `40-49_women` <dbl>, `50-59_men` <dbl>,
    #> #   `50-59_women` <dbl>, `60-69_men` <dbl>, `60-69_women` <dbl>,
    #> #   `70-79_men` <dbl>, `70-79_women` <dbl>, `80+_men` <dbl>, `80+_women` <dbl>
