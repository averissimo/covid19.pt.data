COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Thursday, April 29, 2021)*

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

| date       | confirmed | deaths | recovered | hospitalized | in.icu | first vaccine | second vaccine | confirmed m 00-09 | confirmed w 00-09 | confirmed m 10-19 | confirmed w 10-19 | confirmed m 20-29 | confirmed w 20-29 | confirmed m 30-39 | confirmed w 30-39 | confirmed m 40-49 | confirmed w 40-49 | confirmed m 50-59 | confirmed w 50-59 | confirmed m 60-69 | confirmed w 60-69 | confirmed m 70-79 | confirmed w 70-79 | confirmed m 80+ | confirmed w 80+ | death m 00-09 | death w 00-09 | death m 10-19 | death w 10-19 | death m 20-29 | death w 20-29 | death m 30-39 | death w 30-39 | death m 40-49 | death w 40-49 | death m 50-59 | death w 50-59 | death m 60-69 | death w 60-69 | death m 70-79 | death w 70-79 | death m 80+ | death w 80+ |
| :--------- | --------: | -----: | --------: | -----------: | -----: | ------------: | -------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | --------------: | --------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ----------: | ----------: |
| 2021-04-29 |       470 |      1 |       545 |          \-8 |      1 |         53913 |          18858 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-04-28 |       572 |      3 |       576 |         \-14 |      2 |         39181 |          10200 |                20 |                12 |                40 |                37 |                47 |                36 |                56 |                45 |                47 |                46 |                23 |                27 |                20 |                38 |                18 |                 8 |              17 |              31 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |           1 |           1 |
| 2021-04-27 |       353 |      5 |      1194 |         \-19 |    \-5 |         40282 |           8617 |                 6 |                 8 |                16 |                26 |                22 |                14 |                25 |                38 |                28 |                22 |                23 |                25 |                24 |                27 |                 7 |                 6 |              14 |              22 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             2 |           1 |           0 |
| 2021-04-26 |       196 |      0 |       326 |           17 |    \-7 |         12022 |           1722 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-04-25 |       478 |      6 |       308 |            6 |      0 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |

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
| :--------- | --------: | -----: | --------: | -----------: | -----: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | ----------------: | --------------: | --------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ------------: | ----------: | ----------: | ------------: | -------------: |
| 2021-04-29 |    836033 |  16974 |    795326 |          324 |     89 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2259097 |         825849 |
| 2021-04-28 |    835563 |  16973 |    794781 |          332 |     88 |             23744 |             22702 |             38585 |             38923 |             56083 |             63135 |             54926 |             65144 |             61432 |             77295 |             54529 |             69298 |             40815 |             44318 |             26030 |             29306 |           22922 |           46066 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1059 |           460 |          2279 |          1335 |        5124 |        6045 |       2205184 |         806991 |
| 2021-04-27 |    834991 |  16970 |    794205 |          346 |     86 |             23724 |             22690 |             38545 |             38886 |             56036 |             63099 |             54870 |             65099 |             61385 |             77249 |             54506 |             69271 |             40795 |             44280 |             26012 |             29298 |           22905 |           46035 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1059 |           460 |          2278 |          1335 |        5123 |        6044 |       2166003 |         796791 |
| 2021-04-26 |    834638 |  16965 |    793011 |          365 |     91 |             23718 |             22682 |             38529 |             38860 |             56014 |             63085 |             54845 |             65061 |             61357 |             77227 |             54483 |             69246 |             40771 |             44253 |             26005 |             29292 |           22891 |           46013 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1058 |           460 |          2277 |          1333 |        5122 |        6044 |       2125721 |         788174 |
| 2021-04-25 |    834442 |  16965 |    792685 |          348 |     98 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2113699 |         786452 |
| 2021-04-24 |    833964 |  16959 |    792377 |          342 |     98 |             23687 |             22656 |             38475 |             38803 |             55982 |             63048 |             54816 |             65001 |             61302 |             77181 |             54452 |             69203 |             40733 |             44203 |             25984 |             29265 |           22874 |           45993 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1058 |           460 |          2277 |          1331 |        5122 |        6040 |            NA |             NA |
| 2021-04-23 |    833397 |  16957 |    791751 |          384 |     98 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2082368 |         774170 |
| 2021-04-22 |    832891 |  16956 |    791171 |          395 |    104 |             23651 |             22627 |             38368 |             38694 |             55929 |             62967 |             54732 |             64949 |             61236 |             77105 |             54391 |             69110 |             40681 |             44139 |             25955 |             29240 |           22853 |           45960 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1058 |           460 |          2276 |          1331 |        5121 |        6039 |       2042747 |         736235 |
| 2021-04-21 |    832255 |  16952 |    790650 |          397 |    110 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2014270 |         696904 |
| 2021-04-20 |    831645 |  16951 |    790118 |          429 |    113 |             23581 |             22582 |             38273 |             38585 |             55839 |             62883 |             54645 |             64845 |             61134 |             77014 |             54326 |             69016 |             40622 |             44078 |             25934 |             29212 |           22830 |           45941 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1058 |           460 |          2276 |          1328 |        5120 |        6038 |       1955051 |         664041 |
| 2021-04-19 |    831221 |  16946 |    789216 |          454 |    112 |             23566 |             22574 |             38252 |             38552 |             55799 |             62852 |             54613 |             64803 |             61098 |             76975 |             54301 |             69004 |             40608 |             44054 |             25928 |             29197 |           22819 |           45924 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1057 |           459 |          2274 |          1328 |        5120 |        6037 |       1933854 |         652874 |
| 2021-04-18 |    831001 |  16945 |    788669 |          428 |    109 |             23571 |             22576 |             38232 |             38542 |             55804 |             62844 |             54589 |             64781 |             61074 |             76951 |             54292 |             68983 |             40591 |             44040 |             25918 |             29187 |           22811 |           45913 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1057 |           459 |          2274 |          1328 |        5120 |        6036 |       1869400 |         651442 |
| 2021-04-17 |    830560 |  16942 |    788274 |          415 |    103 |             23550 |             22557 |             38217 |             38513 |             55763 |             62817 |             54541 |             64738 |             61055 |             76919 |             54261 |             68957 |             40571 |             44022 |             25900 |             29171 |           22803 |           45903 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1057 |           459 |          2274 |          1326 |        5120 |        6035 |       1755512 |         646512 |
| 2021-04-16 |    829911 |  16937 |    787607 |          429 |    101 |             23525 |             22549 |             38178 |             38469 |             55710 |             62766 |             54480 |             64681 |             61009 |             76873 |             54216 |             68913 |             40551 |             43980 |             25881 |             29156 |           22797 |           45880 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1056 |           458 |          2274 |          1326 |        5119 |        6033 |       1707672 |         626557 |
| 2021-04-15 |    829358 |  16933 |    787011 |          423 |    109 |             23484 |             22529 |             38147 |             38439 |             55672 |             62739 |             54424 |             64634 |             60979 |             76830 |             54179 |             68874 |             40522 |             43952 |             25863 |             29136 |           22791 |           45869 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1055 |           458 |          2272 |          1326 |        5118 |        6033 |       1648159 |         616426 |
| 2021-04-14 |    828857 |  16931 |    786469 |          447 |    116 |             23471 |             22516 |             38133 |             38422 |             55617 |             62715 |             54363 |             64590 |             60929 |             76799 |             54148 |             68831 |             40496 |             43928 |             25849 |             29115 |           22783 |           45857 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1055 |           458 |          2272 |          1326 |        5117 |        6032 |       1595499 |         605533 |
| 2021-04-13 |    828173 |  16923 |    785809 |          459 |    118 |             23449 |             22484 |             38091 |             38381 |             55569 |             62682 |             54305 |             64541 |             60869 |             76737 |             54103 |             68779 |             40451 |             43895 |             25834 |             29095 |           22770 |           45842 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           330 |           130 |          1054 |           458 |          2271 |          1326 |        5114 |        6030 |       1553052 |         603753 |
| 2021-04-12 |    827765 |  16918 |    785063 |          479 |    119 |             23443 |             22477 |             38073 |             38365 |             55541 |             62645 |             54265 |             64513 |             60844 |             76698 |             54077 |             68740 |             40425 |             43881 |             25821 |             29086 |           22756 |           45819 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           330 |           130 |          1054 |           458 |          2270 |          1325 |        5113 |        6028 |       1523230 |         601591 |
| 2021-04-11 |    827494 |  16916 |    784618 |          466 |    113 |             23440 |             22478 |             38065 |             38354 |             55502 |             62635 |             54225 |             64490 |             60837 |             76690 |             54054 |             68710 |             40425 |             43863 |             25803 |             29067 |           22749 |           45811 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           330 |           130 |          1054 |           458 |          2269 |          1325 |        5112 |        6028 |            NA |             NA |
| 2021-04-10 |    826928 |  16910 |    784208 |          466 |    119 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       1520991 |         601007 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
| :--------- | :-------- | ----------------------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | ------: | --------: |
| 2021-04-28 | 572       |                  11.067 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.021 |       0.014 |     0.070 |       0.037 |     0.140 |       0.051 |     0.519 |       0.394 |     1.576 |       0.364 |   3.800 |     4.068 |
| 2021-04-27 | 353       |                   8.079 |     0.000 |       0.000 |     0.000 |       0.001 |     0.003 |       0.001 |     0.010 |       0.012 |     0.041 |       0.018 |     0.140 |       0.047 |     0.623 |       0.280 |     0.613 |       0.273 |   3.130 |     2.887 |
| 2021-04-26 | 196       |                  11.425 |     0.001 |       0.001 |     0.001 |       0.001 |     0.004 |       0.003 |     0.011 |       0.018 |     0.081 |       0.037 |     0.188 |       0.081 |     0.986 |       0.519 |     1.839 |       1.230 |   3.800 |     2.624 |
| 2021-04-24 | 567       |                  15.488 |     0.002 |       0.001 |     0.003 |       0.003 |     0.007 |       0.006 |     0.032 |       0.016 |     0.098 |       0.061 |     0.370 |       0.174 |     1.349 |       0.664 |     2.539 |       1.139 |   4.694 |     4.330 |
| 2021-04-22 | 636       |                  13.801 |     0.003 |       0.002 |     0.002 |       0.003 |     0.011 |       0.007 |     0.033 |       0.032 |     0.151 |       0.073 |     0.395 |       0.176 |     1.531 |       0.633 |     1.839 |       1.276 |   5.141 |     2.493 |
| 2021-04-20 | 424       |                   6.804 |     0.001 |       0.000 |     0.001 |       0.001 |     0.005 |       0.002 |     0.012 |       0.013 |     0.053 |       0.031 |     0.152 |       0.023 |     0.363 |       0.249 |     0.525 |       0.683 |   2.459 |     2.231 |
| 2021-04-19 | 220       |                   5.317 |     0.000 |       0.000 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.007 |     0.036 |       0.019 |     0.055 |       0.039 |     0.441 |       0.145 |     0.876 |       0.456 |   1.788 |     1.443 |
| 2021-04-18 | 441       |                   6.443 |     0.001 |       0.001 |     0.000 |       0.001 |     0.005 |       0.002 |     0.018 |       0.013 |     0.028 |       0.026 |     0.188 |       0.049 |     0.519 |       0.187 |     1.576 |       0.729 |   1.788 |     1.312 |
| 2021-04-17 | 649       |                   8.176 |     0.001 |       0.000 |     0.001 |       0.001 |     0.007 |       0.004 |     0.023 |       0.017 |     0.068 |       0.037 |     0.273 |       0.083 |     0.519 |       0.436 |     1.664 |       0.683 |   1.341 |     3.018 |
| 2021-04-16 | 553       |                   6.737 |     0.002 |       0.001 |     0.001 |       0.001 |     0.005 |       0.002 |     0.021 |       0.014 |     0.044 |       0.034 |     0.225 |       0.073 |     0.752 |       0.291 |     1.576 |       0.911 |   1.341 |     1.443 |
| 2021-04-15 | 501       |                   6.886 |     0.001 |       0.001 |     0.000 |       0.000 |     0.007 |       0.002 |     0.023 |       0.014 |     0.074 |       0.025 |     0.188 |       0.081 |     0.675 |       0.249 |     1.226 |       0.957 |   1.788 |     1.575 |
| 2021-04-14 | 684       |                   9.169 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.022 |       0.015 |     0.089 |       0.050 |     0.273 |       0.098 |     1.168 |       0.343 |     1.313 |       0.911 |   2.906 |     1.968 |
| 2021-04-13 | 408       |                   8.845 |     0.000 |       0.000 |     0.000 |       0.000 |     0.003 |       0.003 |     0.015 |       0.009 |     0.037 |       0.031 |     0.158 |       0.073 |     0.675 |       0.145 |     1.138 |       0.410 |   3.130 |     3.018 |
| 2021-04-12 | 271       |                   5.484 |     0.000 |       0.000 |     0.000 |       0.000 |     0.005 |       0.001 |     0.015 |       0.007 |     0.010 |       0.006 |     0.140 |       0.056 |     0.000 |       0.187 |     1.576 |       0.866 |   1.565 |     1.050 |
| 2021-04-11 | 566       |                  27.875 |     0.004 |       0.003 |     0.002 |       0.002 |     0.019 |       0.011 |     0.064 |       0.044 |     0.164 |       0.117 |     0.728 |       0.266 |     2.698 |       1.287 |     4.728 |       2.278 |   6.930 |     8.530 |
| 2021-04-08 | 602       |                   9.352 |     0.001 |       0.001 |     0.000 |       0.001 |     0.008 |       0.003 |     0.018 |       0.018 |     0.076 |       0.031 |     0.219 |       0.092 |     0.804 |       0.457 |     1.051 |       0.410 |   3.800 |     2.362 |
| 2021-04-07 | 663       |                  10.102 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.004 |     0.013 |       0.014 |     0.098 |       0.046 |     0.285 |       0.131 |     0.986 |       0.405 |     1.751 |       0.866 |   3.130 |     2.362 |
| 2021-04-06 | 874       |                  19.954 |     0.002 |       0.002 |     0.000 |       0.000 |     0.009 |       0.007 |     0.033 |       0.025 |     0.121 |       0.061 |     0.486 |       0.150 |     1.168 |       0.727 |     3.590 |       1.093 |   6.706 |     5.774 |
| 2021-04-04 | 193       |                  12.098 |     0.001 |       0.001 |     0.000 |       0.000 |     0.004 |       0.003 |     0.018 |       0.009 |     0.037 |       0.029 |     0.146 |       0.030 |     1.012 |       0.488 |     1.051 |       0.638 |   4.694 |     3.937 |
| 2021-04-02 | 548       |                  10.624 |     0.001 |       0.001 |     0.000 |       0.000 |     0.004 |       0.004 |     0.017 |       0.016 |     0.070 |       0.024 |     0.279 |       0.079 |     0.804 |       0.249 |     1.051 |       0.774 |   3.577 |     3.674 |
