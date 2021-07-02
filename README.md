COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Friday, July 02, 2021)*

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
| 2021-07-02 |      2436 |      7 |      1255 |           23 |      5 |         93610 |          90771 |               108 |               116 |               198 |               174 |               346 |               296 |               251 |               211 |               181 |               172 |                88 |                91 |                53 |                54 |                23 |                38 |              12 |              18 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             0 |           4 |           1 |
| 2021-07-01 |      2449 |      5 |      1234 |            5 |     -7 |        142847 |         138581 |                95 |               107 |               156 |               144 |               323 |               313 |               224 |               212 |               176 |               221 |                96 |               118 |                58 |                66 |                42 |                42 |              13 |              25 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             2 |             0 |           1 |           1 |
| 2021-06-30 |      2362 |      4 |      1021 |           12 |      1 |        121176 |          97551 |               106 |                92 |               148 |               182 |               300 |               244 |               214 |               193 |               195 |               212 |               116 |               117 |                53 |                60 |                35 |                40 |              20 |              23 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |           0 |           3 |
| 2021-06-29 |      1746 |      6 |      1677 |          -10 |      4 |         62470 |          52217 |                77 |                65 |               115 |               121 |               209 |               188 |               168 |               161 |               154 |               151 |                70 |                87 |                43 |                47 |                28 |                28 |               9 |              15 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             1 |           1 |           2 |
| 2021-06-28 |       902 |      2 |       608 |           25 |     -1 |         38087 |          15219 |                21 |                19 |                68 |                70 |                92 |                98 |                83 |                89 |                79 |                66 |                54 |                53 |                25 |                31 |                10 |                15 |              10 |              18 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |           0 |           1 |

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
| 2021-06-17 |    861628 |  17057 |    817754 |          364 |     88 |             24430 |             23274 |             40089 |             40425 |             58664 |             65563 |             57302 |             67082 |             63654 |             79531 |             56152 |             71173 |             41855 |             45648 |             26589 |             29816 |           23295 |           46683 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2288 |          1353 |        5138 |        6060 |       4500125 |        2379304 |
| 2021-06-16 |    860395 |  17055 |    817092 |          351 |     83 |             24398 |             23219 |             39994 |             40350 |             58540 |             65443 |             57188 |             66969 |             63552 |             79437 |             56085 |             71077 |             41829 |             45598 |             26576 |             29806 |           23275 |           46660 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2288 |          1351 |        5138 |        6060 |       4438408 |        2329985 |
| 2021-06-15 |    859045 |  17049 |    816503 |          346 |     79 |             24352 |             23180 |             39903 |             40259 |             58382 |             65282 |             57057 |             66866 |             63453 |             79314 |             56033 |             70992 |             41785 |             45545 |             26569 |             29784 |           23262 |           46621 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2287 |          1349 |        5137 |        6048 |       4387691 |        2278284 |
| 2021-06-14 |    858072 |  17047 |    815622 |          340 |     77 |             24327 |             23162 |             39851 |             40213 |             58268 |             65179 |             56964 |             66788 |             63369 |             79203 |             55969 |             70924 |             41761 |             45516 |             26543 |             29765 |           23256 |           46607 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1349 |        5136 |        6058 |       4330244 |        2242562 |
| 2021-06-13 |    857447 |  17047 |    815342 |          325 |     82 |             24307 |             23144 |             39803 |             40180 |             58216 |             65112 |             56920 |             66726 |             63303 |             79149 |             55944 |             70881 |             41739 |             45492 |             26532 |             29756 |           23251 |           46592 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1349 |        5136 |        6058 |       4308544 |        2236492 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-07-02 | 2 436     |                  11.831 |     0.004 |       0.005 |     0.005 |       0.004 |     0.040 |       0.022 |     0.102 |       0.061 |     0.254 |       0.133 |     0.515 |       0.171 |     1.343 |       0.545 |     1.958 |       1.709 |   2.631 |     2.329 |
| 2021-07-01 | 2 449     |                  15.114 |     0.004 |       0.004 |     0.004 |       0.003 |     0.037 |       0.023 |     0.091 |       0.061 |     0.247 |       0.171 |     0.562 |       0.222 |     1.469 |       0.666 |     3.575 |       1.889 |   2.851 |     3.235 |
| 2021-06-30 | 2 362     |                  15.636 |     0.004 |       0.004 |     0.004 |       0.004 |     0.034 |       0.018 |     0.087 |       0.056 |     0.274 |       0.164 |     0.679 |       0.220 |     1.343 |       0.605 |     2.979 |       1.799 |   4.385 |     2.977 |
| 2021-06-29 | 1 746     |                  10.190 |     0.003 |       0.003 |     0.003 |       0.003 |     0.024 |       0.014 |     0.068 |       0.047 |     0.216 |       0.117 |     0.410 |       0.163 |     1.089 |       0.474 |     2.383 |       1.259 |   1.973 |     1.941 |
| 2021-06-28 | 902       |                   7.656 |     0.001 |       0.001 |     0.002 |       0.002 |     0.011 |       0.007 |     0.034 |       0.026 |     0.111 |       0.051 |     0.316 |       0.100 |     0.633 |       0.313 |     0.851 |       0.675 |   2.193 |     2.329 |
| 2021-06-27 | 1 496     |                  11.789 |     0.002 |       0.002 |     0.003 |       0.002 |     0.020 |       0.012 |     0.048 |       0.037 |     0.164 |       0.106 |     0.416 |       0.160 |     1.089 |       0.494 |     1.277 |       0.944 |   4.166 |     2.847 |
| 2021-06-26 | 1 568     |                  20.662 |     8.832 |       0.003 |     0.002 |       0.002 |     0.020 |       0.012 |     0.062 |       0.043 |     0.167 |       0.112 |     0.410 |       0.180 |     0.887 |       0.323 |     2.043 |       1.169 |   3.289 |     3.106 |
| 2021-06-25 | 1 604     |                  21.871 |     8.837 |       0.003 |     0.003 |       0.003 |     0.018 |       0.012 |     0.050 |       0.040 |     0.184 |       0.102 |     0.474 |       0.197 |     0.887 |       0.514 |     3.405 |       1.124 |   3.947 |     2.071 |
| 2021-06-24 | 1 556     |                   9.120 |     0.003 |       0.003 |     0.003 |       0.003 |     0.019 |       0.011 |     0.047 |       0.041 |     0.171 |       0.121 |     0.416 |       0.128 |     0.887 |       0.625 |     1.873 |       1.124 |   1.316 |     2.329 |
| 2021-06-23 | 1 497     |                  10.634 |     0.002 |       0.002 |     0.003 |       0.002 |     0.021 |       0.012 |     0.053 |       0.039 |     0.176 |       0.096 |     0.462 |       0.163 |     0.811 |       0.484 |     1.617 |       0.854 |   3.508 |     2.329 |
| 2021-06-22 | 1 020     |                   9.658 |     0.001 |       0.002 |     0.002 |       0.002 |     0.012 |       0.009 |     0.036 |       0.024 |     0.124 |       0.067 |     0.281 |       0.122 |     0.608 |       0.313 |     1.617 |       0.989 |   3.508 |     1.941 |
| 2021-06-21 | 756       |                   7.105 |     0.001 |       0.001 |     0.002 |       0.001 |     0.011 |       0.006 |     0.019 |       0.014 |     0.091 |       0.050 |     0.293 |       0.079 |     0.583 |       0.222 |     2.128 |       0.944 |   1.754 |     0.906 |
| 2021-06-20 | 941       |                  17.652 |     0.004 |       0.004 |     0.004 |       0.004 |     0.022 |       0.020 |     0.059 |       0.048 |     0.230 |       0.123 |     0.632 |       0.246 |     1.495 |       0.766 |     3.490 |       1.529 |   5.482 |     3.494 |
| 2021-06-18 | 1 298     |                  11.391 |     0.002 |       0.001 |     0.002 |       0.003 |     0.015 |       0.009 |     0.053 |       0.030 |     0.153 |       0.089 |     0.404 |       0.143 |     0.608 |       0.323 |     2.554 |       1.214 |   3.070 |     2.718 |
| 2021-06-17 | 1 233     |                  10.979 |     0.001 |       0.002 |     0.002 |       0.002 |     0.014 |       0.009 |     0.046 |       0.033 |     0.143 |       0.073 |     0.392 |       0.180 |     0.659 |       0.504 |     1.107 |       0.450 |   4.385 |     2.977 |
| 2021-06-16 | 1 350     |                  11.951 |     0.002 |       0.002 |     0.002 |       0.002 |     0.018 |       0.012 |     0.053 |       0.030 |     0.139 |       0.095 |     0.304 |       0.160 |     1.115 |       0.534 |     0.596 |       0.989 |   2.851 |     5.047 |
| 2021-06-15 | 973       |                   7.888 |     0.001 |       0.001 |     0.001 |       0.001 |     0.013 |       0.008 |     0.038 |       0.023 |     0.118 |       0.086 |     0.375 |       0.128 |     0.608 |       0.292 |     2.213 |       0.854 |   1.316 |     1.812 |
| 2021-06-14 | 625       |                   5.590 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.005 |     0.018 |       0.018 |     0.093 |       0.042 |     0.146 |       0.081 |     0.557 |       0.242 |     0.936 |       0.405 |   1.096 |     1.941 |
| 2021-06-13 | 707       |                  13.496 |     0.002 |       0.002 |     0.002 |       0.002 |     0.016 |       0.013 |     0.048 |       0.031 |     0.200 |       0.106 |     0.410 |       0.175 |     1.343 |       0.736 |     2.383 |       0.675 |   3.728 |     3.624 |
| 2021-06-11 | 519       |                   4.404 |     0.001 |       0.025 |     0.001 |       0.001 |     0.007 |       0.005 |     0.016 |       0.013 |     0.049 |       0.039 |     0.199 |       0.039 |     0.456 |       0.121 |     0.681 |       0.450 |   0.877 |     1.424 |
