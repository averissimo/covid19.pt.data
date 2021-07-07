COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Wednesday, July 07, 2021)*

It downloads the [daily
report](https://covid19.min-saude.pt/relatorio-de-situacao/) from DGS
and stores this in data-friendly format under `/data` directory. It also
retrieves age data from the DGS’ [ESRI
dashboard](https://covid19.min-saude.pt/ponto-de-situacao-atual-em-portugal/)

If you are here just for the data, this is what you want:

-   [dgs\_pt.csv](raw/master/data/dgs_pt.csv) *(raw data from Portugal’s
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

| date       | confirmed | deaths | recovered | hospitalized | in.icu | first vaccine | second vaccine | confirmed m 00-09 | confirmed w 00-09 | confirmed m 10-19 | confirmed w 10-19 | confirmed m 20-29 | confirmed w 20-29 | confirmed m 30-39 | confirmed w 30-39 | confirmed m 40-49 | confirmed w 40-49 | confirmed m 50-59 | confirmed w 50-59 | confirmed m 60-69 | confirmed w 60-69 | confirmed m 70-79 | confirmed w 70-79 | confirmed m 80+ | confirmed w 80+ | death m 00-09 | death w 00-09 | death m 10-19 | death w 10-19 | death m 20-29 | death w 20-29 | death m 30-39 | death w 30-39 | death m 40-49 | death w 40-49 | death m 50-59 | death w 50-59 | death m 60-69 | death w 60-69 | death m 70-79 | death w 70-79 | death m 80+ | death w 80+ |
|:-----------|----------:|-------:|----------:|-------------:|-------:|--------------:|---------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|----------------:|----------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|------------:|------------:|
| 2021-07-07 |      3285 |      8 |      1507 |          -10 |     -3 |         68527 |          90176 |               180 |               153 |               237 |               240 |               412 |               381 |               308 |               296 |               246 |               289 |               119 |               149 |                76 |                87 |                41 |                43 |              10 |              25 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             2 |             0 |           2 |           3 |
| 2021-07-06 |      2170 |      1 |      2510 |            0 |     -3 |         68450 |          77918 |                85 |                82 |               131 |               145 |               308 |               268 |               216 |               188 |               195 |               189 |                89 |                93 |                31 |                59 |                28 |                24 |              12 |              14 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           1 |
| 2021-07-05 |      1483 |      5 |       773 |           46 |      8 |         40734 |          37318 |                76 |                74 |               107 |               113 |               189 |               177 |               142 |               140 |               109 |               122 |                46 |                66 |                32 |                24 |                21 |                23 |               8 |               9 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             0 |           2 |           1 |
| 2021-07-04 |      2041 |      0 |       655 |           24 |      6 |         72211 |          66304 |               108 |                98 |               155 |               155 |               259 |               253 |               194 |               187 |               153 |               164 |                71 |                96 |                36 |                46 |                23 |                26 |               9 |              14 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |
| 2021-07-03 |      2605 |      4 |      1718 |           11 |      4 |         83204 |          83003 |               119 |               124 |               185 |               188 |               346 |               289 |               267 |               269 |               188 |               215 |               103 |               102 |                62 |                50 |                22 |                34 |              11 |              23 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |           2 |           1 |

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

| date       | confirmed | deaths | recovered | hospitalized | in.icu | confirmed m 00-09 | confirmed w 00-09 | confirmed m 10-19 | confirmed w 10-19 | confirmed m 20-29 | confirmed w 20-29 | confirmed m 30-39 | confirmed w 30-39 | confirmed m 40-49 | confirmed w 40-49 | confirmed m 50-59 | confirmed w 50-59 | confirmed m 60-69 | confirmed w 60-69 | confirmed m 70-79 | confirmed w 70-79 | confirmed m 80+ | confirmed w 80+ | death m 00-09 | death w 00-09 | death m 10-19 | death w 10-19 | death m 20-29 | death w 20-29 | death m 30-39 | death w 30-39 | death m 40-49 | death w 40-49 | death m 50-59 | death w 50-59 | death m 60-69 | death w 60-69 | death m 70-79 | death w 70-79 | death m 80+ | death w 80+ | first vaccine | second vaccine |
|:-----------|----------:|-------:|----------:|-------------:|-------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|----------------:|----------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|------------:|------------:|--------------:|---------------:|
| 2021-07-07 |    896026 |  17126 |    838642 |          603 |    130 |             25922 |             24705 |             42588 |             42866 |             62825 |             69469 |             60424 |             70119 |             66370 |             82451 |             57651 |             72900 |             42634 |             46575 |             27097 |             30349 |           23546 |           47035 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           336 |           136 |          1074 |           468 |          2298 |          1359 |        5158 |        6082 |       5839776 |        3603915 |
| 2021-07-06 |    892741 |  17118 |    837135 |          613 |    133 |             25742 |             24552 |             42351 |             42626 |             62413 |             69088 |             60116 |             69823 |             66124 |             82162 |             57532 |             72751 |             42558 |             46488 |             27056 |             30306 |           23536 |           47010 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           468 |          2296 |          1359 |        5156 |        6079 |       5771249 |        3513739 |
| 2021-07-05 |    890571 |  17117 |    834625 |          613 |    136 |             25657 |             24470 |             42220 |             42481 |             62105 |             68820 |             59900 |             69635 |             65929 |             81973 |             57443 |             72658 |             42527 |             46429 |             27028 |             30282 |           23524 |           46996 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           468 |          2296 |          1359 |        5156 |        6078 |       5702799 |        3435821 |
| 2021-07-04 |    889088 |  17112 |    833852 |          567 |    128 |             25581 |             24396 |             42113 |             42368 |             61916 |             68643 |             59758 |             69495 |             65820 |             81851 |             57397 |             72592 |             42495 |             46405 |             27007 |             30259 |           23516 |           46987 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           467 |          2295 |          1359 |        5154 |        6077 |       5662065 |        3398503 |
| 2021-07-03 |    887047 |  17112 |    833197 |          543 |    122 |             25473 |             24298 |             41958 |             42213 |             61657 |             68390 |             59564 |             69308 |             65667 |             81687 |             57326 |             72496 |             42459 |             46359 |             26984 |             30233 |           23507 |           46973 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           467 |          2295 |          1359 |        5154 |        6077 |       5589854 |        3332199 |
| 2021-07-02 |    884442 |  17108 |    831479 |          532 |    118 |             25354 |             24174 |             41773 |             42025 |             61311 |             68101 |             59297 |             69039 |             65479 |             81472 |             57223 |             72394 |             42397 |             46309 |             26962 |             30199 |           23496 |           46950 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           467 |          2295 |          1358 |        5152 |        6076 |       5506650 |        3249196 |
| 2021-07-01 |    882006 |  17101 |    830224 |          509 |    113 |             25246 |             24058 |             41575 |             41851 |             60965 |             67805 |             59046 |             68828 |             65298 |             81300 |             57135 |             72303 |             42344 |             46255 |             26939 |             30161 |           23484 |           46932 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           467 |          2293 |          1358 |        5148 |        6075 |       5413040 |        3158425 |
| 2021-06-30 |    879557 |  17096 |    828990 |          504 |    120 |             25151 |             23951 |             41419 |             41707 |             60642 |             67492 |             58822 |             68616 |             65122 |             81079 |             57039 |             72185 |             42286 |             46189 |             26897 |             30119 |           23471 |           46907 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           466 |          2291 |          1358 |        5147 |        6074 |       5270193 |        3019844 |
| 2021-06-29 |    877195 |  17092 |    827969 |          492 |    119 |             25045 |             23859 |             41271 |             41525 |             60342 |             67248 |             58608 |             68423 |             64927 |             80867 |             56923 |             72068 |             42233 |             46129 |             26862 |             30079 |           23451 |           46884 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           466 |          2290 |          1358 |        5147 |        6071 |       5149017 |        2922293 |
| 2021-06-28 |    875449 |  17086 |    826292 |          502 |    115 |             24968 |             23794 |             41156 |             41404 |             60133 |             67060 |             58440 |             68262 |             64773 |             80716 |             56853 |             71981 |             42190 |             46082 |             26834 |             30051 |           23442 |           46869 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           465 |          2289 |          1357 |        5146 |        6069 |       5086547 |        2870076 |
| 2021-06-27 |    874547 |  17084 |    825684 |          477 |    116 |             24947 |             23775 |             41088 |             41334 |             60041 |             66962 |             58357 |             68173 |             64694 |             80650 |             56799 |             71928 |             42165 |             46051 |             26824 |             30036 |           23432 |           46851 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           334 |           136 |          1074 |           465 |          2289 |          1357 |        5146 |        6068 |       5048460 |        2854857 |
| 2021-06-26 |    873051 |  17083 |    825209 |          447 |    113 |             24884 |             23716 |             40972 |             41241 |             59863 |             66802 |             58238 |             68047 |             64577 |             80513 |             56728 |             71843 |             42122 |             46002 |             26809 |             30015 |           23413 |           46829 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           334 |           136 |          1073 |           465 |          2289 |          1357 |        5146 |        6068 |       4987437 |        2817796 |
| 2021-06-25 |    871483 |  17081 |    823960 |          431 |    108 |            248816 |             23641 |             40872 |             41144 |             59690 |             66642 |             58085 |             67899 |             64458 |             80368 |             56658 |             71747 |             42087 |             45970 |             26785 |             29989 |           23398 |           46805 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           334 |           136 |          1073 |           465 |          2289 |          1356 |        5145 |        6068 |       4922099 |        2773507 |
| 2021-06-24 |    869879 |  17079 |    823103 |          427 |    106 |             24756 |             23574 |             40746 |             41026 |             59533 |             66473 |             57961 |             67760 |             64327 |             80236 |             56577 |             71642 |             42052 |             45919 |             26745 |             29964 |           23380 |           46789 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           334 |           136 |          1073 |           465 |          2289 |          1356 |        5144 |        6067 |       4858850 |        2725370 |
| 2021-06-23 |    868323 |  17077 |    822234 |          437 |    100 |             24684 |             23498 |             40617 |             40902 |             59367 |             66326 |             57846 |             67618 |             64205 |             80080 |             56506 |             71574 |             42017 |             45857 |             26723 |             29939 |           23374 |           46771 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           334 |           136 |          1072 |           465 |          2289 |          1355 |        5144 |        6067 |       4798204 |        2675508 |
| 2021-06-22 |    866826 |  17074 |    821374 |          450 |    101 |             24625 |             23448 |             40493 |             40818 |             59185 |             66162 |             57714 |             67482 |             64080 |             79956 |             56427 |             71487 |             41985 |             45809 |             26704 |             29920 |           23358 |           46753 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           136 |          1072 |           465 |          2289 |          1355 |        5143 |        6066 |       4743032 |        2624060 |
| 2021-06-21 |    865806 |  17068 |    820081 |          443 |     97 |             24602 |             23409 |             40417 |             40754 |             59079 |             66042 |             57626 |             67398 |             63992 |             79870 |             56379 |             71422 |             41961 |             45778 |             26685 |             29898 |           23342 |           46738 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           136 |          1072 |           465 |          2287 |          1354 |        5140 |        6066 |       4727518 |        2608463 |
| 2021-06-20 |    865050 |  17065 |    819688 |          405 |     97 |             24578 |             23390 |             40350 |             40706 |             58987 |             65963 |             57579 |             67351 |             63927 |             79805 |             56329 |             71380 |             41938 |             45756 |             26660 |             29877 |           23334 |           46731 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           136 |          1072 |           465 |          2287 |          1352 |        5139 |        6066 |       4669305 |        2567766 |
| 2021-06-19 |    864109 |  17062 |    819324 |          389 |     99 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       4621946 |        2476648 |
| 2021-06-18 |    862926 |  17061 |    818440 |          391 |     94 |             24480 |             23302 |             40179 |             40538 |             58795 |             65691 |             57432 |             67185 |             63763 |             79646 |             56221 |             71249 |             41879 |             45680 |             26619 |             29843 |           23309 |           46704 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           136 |          1072 |           465 |          2287 |          1352 |        5139 |        6062 |       4598549 |        2449200 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-07-07 | 3 285     |                  15.454 |     0.007 |       0.006 |     0.006 |       0.006 |     0.046 |       0.027 |     0.122 |       0.084 |     0.341 |       0.221 |     0.694 |       0.278 |     1.915 |       0.874 |     3.477 |       1.926 |   2.191 |     3.233 |
| 2021-07-06 | 2 170     |                  10.574 |     0.003 |       0.003 |     0.003 |       0.003 |     0.034 |       0.019 |     0.086 |       0.054 |     0.270 |       0.144 |     0.519 |       0.173 |     0.781 |       0.593 |     2.375 |       1.075 |   2.629 |     1.810 |
| 2021-07-05 | 1 483     |                   7.551 |     0.003 |       0.003 |     0.003 |       0.003 |     0.021 |       0.013 |     0.056 |       0.040 |     0.151 |       0.093 |     0.268 |       0.123 |     0.806 |       0.241 |     1.781 |       1.030 |   1.752 |     1.164 |
| 2021-07-04 | 2 041     |                   9.389 |     0.004 |       0.004 |     0.004 |       0.004 |     0.029 |       0.018 |     0.077 |       0.053 |     0.212 |       0.125 |     0.414 |       0.179 |     0.907 |       0.462 |     1.951 |       1.164 |   1.972 |     1.810 |
| 2021-07-03 | 2 605     |                  12.312 |     0.005 |       0.005 |     0.004 |       0.004 |     0.039 |       0.021 |     0.106 |       0.077 |     0.261 |       0.164 |     0.600 |       0.190 |     1.562 |       0.502 |     1.866 |       1.522 |   2.410 |     2.974 |
| 2021-07-02 | 2 436     |                  11.791 |     0.004 |       0.005 |     0.005 |       0.004 |     0.039 |       0.021 |     0.100 |       0.060 |     0.251 |       0.131 |     0.513 |       0.170 |     1.335 |       0.543 |     1.951 |       1.702 |   2.629 |     2.328 |
| 2021-07-01 | 2 449     |                  15.064 |     0.004 |       0.004 |     0.004 |       0.003 |     0.036 |       0.023 |     0.089 |       0.060 |     0.244 |       0.169 |     0.560 |       0.220 |     1.461 |       0.663 |     3.562 |       1.881 |   2.848 |     3.233 |
| 2021-06-30 | 2 362     |                  15.584 |     0.004 |       0.004 |     0.003 |       0.004 |     0.033 |       0.018 |     0.085 |       0.055 |     0.270 |       0.162 |     0.676 |       0.218 |     1.335 |       0.603 |     2.968 |       1.791 |   4.381 |     2.974 |
| 2021-06-29 | 1 746     |                  10.156 |     0.003 |       0.003 |     0.003 |       0.003 |     0.023 |       0.014 |     0.067 |       0.046 |     0.213 |       0.115 |     0.408 |       0.162 |     1.083 |       0.472 |     2.375 |       1.254 |   1.972 |     1.940 |
| 2021-06-28 | 902       |                   7.635 |     0.001 |       0.001 |     0.002 |       0.002 |     0.010 |       0.007 |     0.033 |       0.025 |     0.110 |       0.050 |     0.315 |       0.099 |     0.630 |       0.311 |     0.848 |       0.672 |   2.191 |     2.328 |
| 2021-06-27 | 1 496     |                  11.758 |     0.002 |       0.002 |     0.003 |       0.002 |     0.020 |       0.012 |     0.047 |       0.036 |     0.162 |       0.105 |     0.414 |       0.159 |     1.083 |       0.492 |     1.272 |       0.940 |   4.162 |     2.845 |
| 2021-06-26 | 1 568     |                  20.435 |     8.639 |       0.003 |     0.002 |       0.002 |     0.019 |       0.012 |     0.061 |       0.042 |     0.165 |       0.111 |     0.408 |       0.179 |     0.882 |       0.322 |     2.035 |       1.164 |   3.286 |     3.103 |
| 2021-06-25 | 1 604     |                  21.639 |     8.644 |       0.003 |     0.003 |       0.003 |     0.017 |       0.012 |     0.049 |       0.040 |     0.182 |       0.101 |     0.472 |       0.196 |     0.882 |       0.512 |     3.392 |       1.119 |   3.943 |     2.069 |
| 2021-06-24 | 1 556     |                   9.089 |     0.003 |       0.003 |     0.003 |       0.003 |     0.018 |       0.011 |     0.046 |       0.041 |     0.169 |       0.119 |     0.414 |       0.127 |     0.882 |       0.623 |     1.866 |       1.119 |   1.314 |     2.328 |
| 2021-06-23 | 1 497     |                  10.605 |     0.002 |       0.002 |     0.003 |       0.002 |     0.020 |       0.012 |     0.052 |       0.039 |     0.173 |       0.095 |     0.460 |       0.162 |     0.806 |       0.482 |     1.611 |       0.851 |   3.505 |     2.328 |
| 2021-06-22 | 1 020     |                   9.632 |     0.001 |       0.002 |     0.002 |       0.001 |     0.012 |       0.009 |     0.035 |       0.024 |     0.122 |       0.066 |     0.280 |       0.121 |     0.605 |       0.311 |     1.611 |       0.985 |   3.505 |     1.940 |
| 2021-06-21 | 756       |                   7.079 |     0.001 |       0.001 |     0.002 |       0.001 |     0.010 |       0.006 |     0.019 |       0.013 |     0.090 |       0.050 |     0.291 |       0.078 |     0.579 |       0.221 |     2.120 |       0.940 |   1.752 |     0.905 |
| 2021-06-20 | 941       |                  17.600 |     0.004 |       0.004 |     0.004 |       0.004 |     0.021 |       0.020 |     0.058 |       0.047 |     0.227 |       0.121 |     0.629 |       0.244 |     1.486 |       0.764 |     3.477 |       1.522 |   5.477 |     3.491 |
| 2021-06-18 | 1 298     |                  11.358 |     0.002 |       0.001 |     0.002 |       0.003 |     0.015 |       0.009 |     0.052 |       0.029 |     0.151 |       0.088 |     0.402 |       0.142 |     0.605 |       0.322 |     2.544 |       1.209 |   3.067 |     2.715 |
| 2021-06-17 | 1 233     |                  10.951 |     0.001 |       0.002 |     0.002 |       0.002 |     0.014 |       0.009 |     0.045 |       0.032 |     0.141 |       0.072 |     0.390 |       0.179 |     0.655 |       0.502 |     1.102 |       0.448 |   4.381 |     2.974 |
