COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, June 28, 2021)*

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
| 2021-06-28 |       902 |      2 |       608 |           25 |     -1 |         38087 |          15219 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-27 |      1496 |      1 |       475 |           30 |      3 |         61023 |          37061 |                63 |                59 |               116 |                93 |               178 |               160 |               119 |               126 |               117 |               137 |                71 |                85 |                43 |                49 |                15 |                21 |              19 |              22 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |           0 |           0 |
| 2021-06-26 |      1568 |      2 |      1249 |           16 |      5 |         65338 |          44289 |           -223932 |                75 |               100 |                97 |               173 |               160 |               153 |               148 |               119 |               145 |                70 |                96 |                35 |                32 |                24 |                26 |              15 |              24 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |           1 |           0 |
| 2021-06-25 |      1604 |      2 |       857 |            4 |      2 |         63249 |          48137 |            224060 |                67 |               126 |               118 |               157 |               169 |               124 |               139 |               131 |               132 |                81 |               105 |                35 |                51 |                40 |                25 |              18 |              16 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           1 |           1 |
| 2021-06-24 |      1556 |      2 |       869 |          -10 |      6 |         60646 |          49862 |                72 |                76 |               129 |               124 |               166 |               147 |               115 |               142 |               122 |               156 |                71 |                68 |                35 |                62 |                22 |                25 |               6 |              18 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             1 |           0 |           0 |

![](README_files/figure-gfm/totals-1.svg)<!-- -->

![](README_files/figure-gfm/differential-1.svg)<!-- -->

![](README_files/figure-gfm/differential_7days-1.svg)<!-- -->

# New cases / deaths by age groups

*note: data update may be delayed by a couple of hours (since age data
was been removed from daily report and we’ve been retrieving it from
DGS’s covid19 dashboard, which may have a delay)*

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
| 2021-06-28 |    875449 |  17086 |    826292 |          502 |    115 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       5086547 |        2870076 |
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
| 2021-06-12 |    856740 |  17045 |    815094 |          300 |     77 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       4243537 |        2230476 |
| 2021-06-11 |    855951 |  17044 |    814318 |          306 |     72 |             24246 |             23089 |             39717 |             40082 |             58076 |             64939 |             56801 |             66619 |             63161 |             79012 |             55874 |             70788 |             41686 |             45419 |             26504 |             29741 |           23234 |           46564 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1349 |        5135 |        6056 |       4212783 |        2204786 |
| 2021-06-10 |    855432 |  17043 |    814023 |          295 |     72 |             24228 |             23704 |             39681 |             40051 |             58018 |             64874 |             56761 |             66574 |             63126 |             78962 |             55840 |             70767 |             41668 |             45407 |             26496 |             29731 |           23230 |           46553 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1348 |        5135 |        6056 |       4138665 |        2166515 |
| 2021-06-09 |    854522 |  17037 |    813489 |          307 |     70 |             24183 |             23048 |             39614 |             39984 |             57939 |             64778 |             56704 |             66493 |             63044 |             78874 |             55790 |             70708 |             41631 |             45380 |             26488 |             29721 |           23221 |           46529 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1071 |           464 |          2286 |          1346 |        5133 |        6055 |       4073288 |        2132575 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-06-27 | 1 496     |                  11.822 |     0.003 |       0.002 |     0.003 |       0.002 |     0.021 |       0.012 |     0.049 |       0.037 |     0.166 |       0.107 |     0.418 |       0.161 |     1.095 |       0.495 |     1.280 |       0.949 |   4.173 |     2.849 |
| 2021-06-26 | 1 568     |                  20.836 |     8.976 |       0.003 |     0.002 |       0.002 |     0.020 |       0.012 |     0.063 |       0.043 |     0.169 |       0.113 |     0.412 |       0.182 |     0.891 |       0.323 |     2.048 |       1.175 |   3.294 |     3.108 |
| 2021-06-25 | 1 604     |                  22.050 |     8.981 |       0.003 |     0.003 |       0.003 |     0.018 |       0.013 |     0.051 |       0.041 |     0.186 |       0.103 |     0.476 |       0.199 |     0.891 |       0.515 |     3.413 |       1.129 |   3.953 |     2.072 |
| 2021-06-24 | 1 556     |                   9.145 |     0.003 |       0.003 |     0.003 |       0.003 |     0.019 |       0.011 |     0.047 |       0.042 |     0.173 |       0.122 |     0.418 |       0.129 |     0.891 |       0.626 |     1.877 |       1.129 |   1.318 |     2.331 |
| 2021-06-23 | 1 497     |                  10.664 |     0.002 |       0.002 |     0.003 |       0.002 |     0.021 |       0.012 |     0.054 |       0.040 |     0.178 |       0.097 |     0.465 |       0.164 |     0.815 |       0.485 |     1.621 |       0.858 |   3.514 |     2.331 |
| 2021-06-22 | 1 020     |                   9.682 |     0.001 |       0.002 |     0.002 |       0.002 |     0.012 |       0.009 |     0.036 |       0.025 |     0.125 |       0.067 |     0.282 |       0.123 |     0.611 |       0.313 |     1.621 |       0.994 |   3.514 |     1.943 |
| 2021-06-21 | 756       |                   7.125 |     0.001 |       0.001 |     0.002 |       0.001 |     0.011 |       0.006 |     0.019 |       0.014 |     0.092 |       0.051 |     0.294 |       0.079 |     0.586 |       0.222 |     2.133 |       0.949 |   1.757 |     0.907 |
| 2021-06-20 | 941       |                  17.699 |     0.004 |       0.004 |     0.004 |       0.004 |     0.022 |       0.020 |     0.060 |       0.049 |     0.233 |       0.124 |     0.635 |       0.248 |     1.503 |       0.767 |     3.499 |       1.536 |   5.490 |     3.497 |
| 2021-06-18 | 1 298     |                  11.420 |     0.002 |       0.001 |     0.002 |       0.003 |     0.015 |       0.010 |     0.053 |       0.030 |     0.155 |       0.090 |     0.406 |       0.144 |     0.611 |       0.323 |     2.560 |       1.220 |   3.075 |     2.720 |
| 2021-06-17 | 1 233     |                  11.003 |     0.001 |       0.002 |     0.002 |       0.002 |     0.014 |       0.009 |     0.047 |       0.033 |     0.145 |       0.073 |     0.394 |       0.182 |     0.662 |       0.505 |     1.109 |       0.452 |   4.392 |     2.979 |
| 2021-06-16 | 1 350     |                  11.979 |     0.002 |       0.002 |     0.002 |       0.002 |     0.018 |       0.012 |     0.054 |       0.030 |     0.141 |       0.096 |     0.306 |       0.161 |     1.121 |       0.535 |     0.597 |       0.994 |   2.855 |     5.051 |
| 2021-06-15 | 973       |                   7.909 |     0.001 |       0.001 |     0.001 |       0.001 |     0.013 |       0.008 |     0.038 |       0.023 |     0.119 |       0.087 |     0.376 |       0.129 |     0.611 |       0.293 |     2.219 |       0.858 |   1.318 |     1.813 |
| 2021-06-14 | 625       |                   5.604 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.005 |     0.018 |       0.018 |     0.094 |       0.042 |     0.147 |       0.081 |     0.560 |       0.242 |     0.939 |       0.407 |   1.098 |     1.943 |
| 2021-06-13 | 707       |                  13.527 |     0.002 |       0.002 |     0.002 |       0.002 |     0.016 |       0.013 |     0.049 |       0.031 |     0.202 |       0.107 |     0.412 |       0.176 |     1.350 |       0.737 |     2.389 |       0.678 |   3.733 |     3.626 |
| 2021-06-11 | 519       |                   4.416 |     0.001 |       0.026 |     0.001 |       0.001 |     0.007 |       0.005 |     0.016 |       0.013 |     0.050 |       0.039 |     0.200 |       0.040 |     0.458 |       0.121 |     0.683 |       0.452 |   0.878 |     1.425 |
| 2021-06-10 | 910       |                   8.124 |     0.002 |       0.028 |     0.002 |       0.002 |     0.009 |       0.007 |     0.023 |       0.024 |     0.117 |       0.069 |     0.294 |       0.112 |     0.942 |       0.273 |     0.683 |       0.452 |   1.977 |     3.108 |
| 2021-06-09 | 890       |                   7.664 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.006 |     0.035 |       0.024 |     0.121 |       0.064 |     0.323 |       0.119 |     0.611 |       0.273 |     1.963 |       0.542 |   1.757 |     1.813 |
| 2021-06-08 | 598       |                   6.254 |     0.001 |       0.001 |     0.001 |       0.000 |     0.009 |       0.003 |     0.030 |       0.010 |     0.091 |       0.049 |     0.171 |       0.068 |     0.790 |       0.192 |     1.024 |       0.723 |   1.537 |     1.554 |
| 2021-06-07 | 388       |                   4.861 |     0.000 |       0.000 |     0.001 |       0.000 |     0.002 |       0.002 |     0.019 |       0.012 |     0.054 |       0.020 |     0.100 |       0.074 |     0.357 |       0.212 |     0.427 |       0.090 |   2.196 |     1.295 |
| 2021-06-06 | 612       |                   6.097 |     0.001 |       0.001 |     0.001 |       0.001 |     0.005 |       0.003 |     0.023 |       0.018 |     0.092 |       0.039 |     0.141 |       0.081 |     0.866 |       0.232 |     0.171 |       0.452 |   2.416 |     1.554 |
