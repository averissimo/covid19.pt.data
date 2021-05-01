COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Saturday, May 01, 2021)*

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
| 2021-05-01 |       454 |      2 |       639 |         \-22 |    \-5 |         69275 |          17028 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-04-30 |       460 |      0 |       512 |            0 |      0 |         62576 |          18231 |                19 |                11 |                32 |                 3 |                40 |                43 |                52 |                20 |                44 |                48 |                19 |                34 |                28 |                24 |                16 |                12 |               5 |               9 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |
| 2021-04-29 |       470 |      1 |       545 |          \-8 |      1 |         53913 |          18858 |                12 |                10 |                40 |                35 |                36 |                51 |                42 |                21 |                24 |                32 |                24 |                33 |                30 |                34 |                13 |                12 |               8 |              11 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           1 |
| 2021-04-28 |       572 |      3 |       576 |         \-14 |      2 |         39181 |          10200 |                20 |                12 |                40 |                37 |                47 |                36 |                56 |                45 |                47 |                46 |                23 |                27 |                20 |                38 |                18 |                 8 |              17 |              31 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |           1 |           1 |
| 2021-04-27 |       353 |      5 |      1194 |         \-19 |    \-5 |         40282 |           8617 |                 6 |                 8 |                16 |                26 |                22 |                14 |                25 |                38 |                28 |                22 |                23 |                25 |                24 |                27 |                 7 |                 6 |              14 |              22 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             2 |           1 |           0 |

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
| 2021-05-01 |    836947 |  16976 |    796477 |          302 |     84 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2390948 |         861108 |
| 2021-04-30 |    836493 |  16974 |    795838 |          324 |     89 |             23775 |             22723 |             38657 |             38961 |             56159 |             63229 |             55020 |             65185 |             61500 |             77375 |             54572 |             69365 |             40873 |             44376 |             26059 |             29330 |           22935 |           46086 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1059 |           460 |          2279 |          1335 |        5124 |        6046 |       2321673 |         844080 |
| 2021-04-29 |    836033 |  16974 |    795326 |          324 |     89 |             23756 |             22712 |             38625 |             38958 |             56119 |             63186 |             54968 |             65165 |             61456 |             77327 |             54553 |             69331 |             40845 |             44352 |             26043 |             29318 |           22930 |           46077 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1059 |           460 |          2279 |          1335 |        5124 |        6046 |       2259097 |         825849 |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
| :--------- | :-------- | ----------------------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | ------: | --------: |
| 2021-04-30 | 460       |                   5.535 |     0.001 |       0.000 |     0.001 |       0.000 |     0.005 |       0.003 |     0.020 |       0.006 |     0.065 |       0.038 |     0.115 |       0.064 |     0.725 |       0.249 |     1.399 |       0.546 |   1.117 |     1.181 |
| 2021-04-29 | 470       |                   6.345 |     0.001 |       0.000 |     0.001 |       0.001 |     0.004 |       0.004 |     0.016 |       0.006 |     0.036 |       0.026 |     0.146 |       0.062 |     0.777 |       0.352 |     1.137 |       0.546 |   1.787 |     1.443 |
| 2021-04-28 | 572       |                  11.061 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.021 |       0.014 |     0.070 |       0.037 |     0.140 |       0.051 |     0.518 |       0.394 |     1.574 |       0.364 |   3.798 |     4.067 |
| 2021-04-27 | 353       |                   8.074 |     0.000 |       0.000 |     0.000 |       0.001 |     0.003 |       0.001 |     0.010 |       0.012 |     0.041 |       0.018 |     0.140 |       0.047 |     0.622 |       0.280 |     0.612 |       0.273 |   3.128 |     2.886 |
| 2021-04-26 | 196       |                  11.418 |     0.001 |       0.001 |     0.001 |       0.001 |     0.004 |       0.003 |     0.011 |       0.018 |     0.081 |       0.037 |     0.188 |       0.081 |     0.985 |       0.518 |     1.837 |       1.229 |   3.798 |     2.624 |
| 2021-04-24 | 567       |                  15.478 |     0.002 |       0.001 |     0.003 |       0.003 |     0.007 |       0.006 |     0.032 |       0.016 |     0.098 |       0.061 |     0.370 |       0.174 |     1.347 |       0.663 |     2.536 |       1.138 |   4.692 |     4.329 |
| 2021-04-22 | 636       |                  13.791 |     0.003 |       0.002 |     0.002 |       0.003 |     0.011 |       0.007 |     0.033 |       0.032 |     0.151 |       0.073 |     0.394 |       0.176 |     1.529 |       0.632 |     1.837 |       1.274 |   5.139 |     2.493 |
| 2021-04-20 | 424       |                   6.801 |     0.001 |       0.000 |     0.001 |       0.001 |     0.005 |       0.002 |     0.012 |       0.013 |     0.053 |       0.031 |     0.152 |       0.022 |     0.363 |       0.249 |     0.525 |       0.683 |   2.458 |     2.230 |
| 2021-04-19 | 220       |                   5.313 |     0.000 |       0.000 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.007 |     0.036 |       0.019 |     0.055 |       0.039 |     0.440 |       0.145 |     0.875 |       0.455 |   1.787 |     1.443 |
| 2021-04-18 | 441       |                   6.438 |     0.001 |       0.001 |     0.000 |       0.001 |     0.005 |       0.002 |     0.018 |       0.013 |     0.028 |       0.026 |     0.188 |       0.049 |     0.518 |       0.187 |     1.574 |       0.728 |   1.787 |     1.312 |
| 2021-04-17 | 649       |                   8.169 |     0.001 |       0.000 |     0.001 |       0.001 |     0.007 |       0.004 |     0.023 |       0.017 |     0.068 |       0.037 |     0.273 |       0.082 |     0.518 |       0.435 |     1.662 |       0.683 |   1.340 |     3.017 |
| 2021-04-16 | 553       |                   6.730 |     0.002 |       0.001 |     0.001 |       0.001 |     0.005 |       0.002 |     0.021 |       0.014 |     0.044 |       0.034 |     0.224 |       0.073 |     0.751 |       0.290 |     1.574 |       0.910 |   1.340 |     1.443 |
| 2021-04-15 | 501       |                   6.880 |     0.001 |       0.001 |     0.000 |       0.000 |     0.007 |       0.002 |     0.023 |       0.014 |     0.074 |       0.025 |     0.188 |       0.081 |     0.674 |       0.249 |     1.224 |       0.956 |   1.787 |     1.574 |
| 2021-04-14 | 684       |                   9.161 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.022 |       0.015 |     0.089 |       0.050 |     0.273 |       0.097 |     1.166 |       0.342 |     1.312 |       0.910 |   2.904 |     1.968 |
| 2021-04-13 | 408       |                   8.840 |     0.000 |       0.000 |     0.000 |       0.000 |     0.003 |       0.003 |     0.015 |       0.009 |     0.037 |       0.031 |     0.158 |       0.073 |     0.674 |       0.145 |     1.137 |       0.410 |   3.128 |     3.017 |
| 2021-04-12 | 271       |                   5.480 |     0.000 |       0.000 |     0.000 |       0.000 |     0.005 |       0.001 |     0.015 |       0.007 |     0.010 |       0.006 |     0.140 |       0.056 |     0.000 |       0.187 |     1.574 |       0.865 |   1.564 |     1.050 |
| 2021-04-11 | 566       |                  27.856 |     0.004 |       0.003 |     0.002 |       0.002 |     0.019 |       0.011 |     0.064 |       0.044 |     0.164 |       0.117 |     0.728 |       0.266 |     2.695 |       1.285 |     4.723 |       2.276 |   6.926 |     8.527 |
| 2021-04-08 | 602       |                   9.343 |     0.001 |       0.001 |     0.000 |       0.001 |     0.008 |       0.003 |     0.018 |       0.018 |     0.075 |       0.031 |     0.218 |       0.092 |     0.803 |       0.456 |     1.049 |       0.410 |   3.798 |     2.361 |
| 2021-04-07 | 663       |                  10.094 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.004 |     0.013 |       0.014 |     0.098 |       0.046 |     0.285 |       0.131 |     0.985 |       0.404 |     1.749 |       0.865 |   3.128 |     2.361 |
| 2021-04-06 | 874       |                  19.939 |     0.002 |       0.002 |     0.000 |       0.000 |     0.009 |       0.007 |     0.033 |       0.025 |     0.121 |       0.061 |     0.485 |       0.150 |     1.166 |       0.726 |     3.586 |       1.092 |   6.702 |     5.772 |
