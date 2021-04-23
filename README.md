COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Friday, April 23, 2021)*

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
| 2021-04-23 |       506 |      1 |       580 |         \-11 |    \-6 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-04-22 |       636 |      4 |       521 |          \-2 |    \-6 |         28477 |          39331 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-04-21 |       610 |      1 |       532 |         \-32 |    \-3 |         59219 |          32863 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-04-20 |       424 |      5 |       902 |         \-25 |      1 |         21197 |          11167 |                15 |                 8 |                21 |                33 |                40 |                31 |                32 |                42 |                36 |                39 |                25 |                12 |                14 |                24 |                 6 |                15 |              11 |              17 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             2 |             0 |           0 |           1 |
| 2021-04-19 |       220 |      1 |       547 |           26 |      3 |         64454 |           1432 |               \-5 |               \-2 |                20 |                10 |               \-5 |                 8 |                24 |                22 |                24 |                24 |                 9 |                21 |                17 |                14 |                10 |                10 |               8 |              11 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           1 |

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
| 2021-04-23 |    833397 |  16957 |    791751 |          384 |     98 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
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
| 2021-04-09 |    826327 |  16904 |    783523 |          486 |    128 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       1453212 |         586316 |
| 2021-04-08 |    825633 |  16899 |    782895 |          495 |    122 |             23350 |             22409 |             37980 |             38295 |             55348 |             62491 |             54058 |             64348 |             60726 |             76544 |             53934 |             68568 |             40321 |             43739 |             25749 |             29017 |           22718 |           45746 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           330 |           130 |          1052 |           457 |          2264 |          1325 |        5108 |        6023 |       1397726 |         571310 |
| 2021-04-07 |    825031 |  16890 |    782294 |          488 |    116 |             23320 |             22383 |             37963 |             38275 |             55285 |             62459 |             54012 |             64288 |             60675 |             76505 |             53898 |             68519 |             40290 |             43695 |             25737 |             29008 |           22701 |           45728 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            61 |           330 |           130 |          1050 |           457 |          2263 |          1324 |        5106 |        6021 |       1346317 |         560871 |
| 2021-04-06 |    824368 |  16887 |    781537 |          504 |    113 |             23307 |             22365 |             37929 |             38251 |             55227 |             62410 |             53978 |             64241 |             60609 |             76448 |             53851 |             68449 |             40252 |             43656 |             25717 |             28989 |           22687 |           45710 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            61 |           330 |           130 |          1049 |           457 |          2261 |          1324 |        5106 |        6021 |       1309681 |         557789 |
| 2021-04-05 |    823494 |  16885 |    780643 |          536 |    112 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       1282956 |         551869 |
| 2021-04-04 |    823335 |  16879 |    780322 |          517 |    117 |             23264 |             22314 |             37911 |             38232 |             55154 |             62325 |             53891 |             64161 |             60527 |             76372 |             53771 |             68369 |             40207 |             43586 |             25676 |             28965 |           22657 |           45666 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            61 |           330 |           130 |          1049 |           456 |          2258 |          1324 |        5103 |        6020 |       1281718 |         551500 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
| :--------- | :-------- | ----------------------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | --------: | ----------: | ------: | --------: |
| 2021-04-22 | 636       |                  13.828 |     0.003 |       0.002 |     0.002 |       0.003 |     0.011 |       0.007 |     0.033 |       0.032 |     0.152 |       0.073 |     0.396 |       0.177 |     1.534 |       0.636 |     1.841 |       1.275 |   5.154 |     2.497 |
| 2021-04-20 | 424       |                   6.816 |     0.001 |       0.000 |     0.001 |       0.001 |     0.005 |       0.002 |     0.012 |       0.013 |     0.053 |       0.031 |     0.152 |       0.023 |     0.364 |       0.250 |     0.526 |       0.683 |   2.465 |     2.234 |
| 2021-04-19 | 220       |                   5.327 |     0.000 |       0.000 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.007 |     0.036 |       0.019 |     0.055 |       0.040 |     0.442 |       0.146 |     0.877 |       0.455 |   1.793 |     1.445 |
| 2021-04-18 | 441       |                   6.454 |     0.001 |       0.001 |     0.000 |       0.001 |     0.005 |       0.002 |     0.018 |       0.013 |     0.028 |       0.026 |     0.189 |       0.049 |     0.520 |       0.188 |     1.578 |       0.728 |   1.793 |     1.314 |
| 2021-04-17 | 649       |                   8.191 |     0.001 |       0.000 |     0.001 |       0.001 |     0.007 |       0.004 |     0.023 |       0.018 |     0.068 |       0.037 |     0.274 |       0.083 |     0.520 |       0.438 |     1.666 |       0.683 |   1.345 |     3.022 |
| 2021-04-16 | 553       |                   6.749 |     0.002 |       0.001 |     0.001 |       0.001 |     0.005 |       0.002 |     0.021 |       0.014 |     0.045 |       0.035 |     0.225 |       0.073 |     0.754 |       0.292 |     1.578 |       0.910 |   1.345 |     1.445 |
| 2021-04-15 | 501       |                   6.897 |     0.001 |       0.001 |     0.000 |       0.000 |     0.007 |       0.002 |     0.023 |       0.014 |     0.074 |       0.025 |     0.189 |       0.081 |     0.676 |       0.250 |     1.228 |       0.956 |   1.793 |     1.577 |
| 2021-04-14 | 684       |                   9.184 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.022 |       0.015 |     0.089 |       0.050 |     0.274 |       0.098 |     1.170 |       0.344 |     1.315 |       0.910 |   2.913 |     1.971 |
| 2021-04-13 | 408       |                   8.861 |     0.000 |       0.000 |     0.000 |       0.000 |     0.004 |       0.003 |     0.015 |       0.009 |     0.037 |       0.031 |     0.158 |       0.073 |     0.676 |       0.146 |     1.140 |       0.410 |   3.137 |     3.022 |
| 2021-04-12 | 271       |                   5.491 |     0.000 |       0.000 |     0.000 |       0.000 |     0.005 |       0.001 |     0.015 |       0.007 |     0.010 |       0.006 |     0.140 |       0.056 |     0.000 |       0.188 |     1.578 |       0.865 |   1.569 |     1.051 |
| 2021-04-11 | 566       |                  27.924 |     0.004 |       0.003 |     0.002 |       0.002 |     0.019 |       0.011 |     0.064 |       0.044 |     0.165 |       0.117 |     0.730 |       0.267 |     2.705 |       1.292 |     4.735 |       2.276 |   6.947 |     8.541 |
| 2021-04-08 | 602       |                   9.369 |     0.001 |       0.001 |     0.000 |       0.001 |     0.008 |       0.003 |     0.018 |       0.018 |     0.076 |       0.031 |     0.219 |       0.092 |     0.806 |       0.459 |     1.052 |       0.410 |   3.809 |     2.365 |
| 2021-04-07 | 663       |                  10.119 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.004 |     0.013 |       0.014 |     0.098 |       0.046 |     0.286 |       0.132 |     0.988 |       0.406 |     1.754 |       0.865 |   3.137 |     2.365 |
| 2021-04-06 | 874       |                  19.989 |     0.002 |       0.002 |     0.000 |       0.000 |     0.009 |       0.007 |     0.033 |       0.025 |     0.122 |       0.061 |     0.487 |       0.150 |     1.170 |       0.730 |     3.595 |       1.092 |   6.723 |     5.781 |
| 2021-04-04 | 193       |                  12.120 |     0.001 |       0.001 |     0.000 |       0.000 |     0.005 |       0.003 |     0.018 |       0.009 |     0.037 |       0.029 |     0.146 |       0.030 |     1.014 |       0.490 |     1.052 |       0.637 |   4.706 |     3.942 |
| 2021-04-02 | 548       |                  10.642 |     0.001 |       0.001 |     0.000 |       0.000 |     0.004 |       0.004 |     0.017 |       0.016 |     0.070 |       0.024 |     0.280 |       0.079 |     0.806 |       0.250 |     1.052 |       0.774 |   3.585 |     3.679 |
| 2021-04-01 | 592       |                  10.171 |     0.001 |       0.002 |     0.001 |       0.000 |     0.004 |       0.004 |     0.016 |       0.014 |     0.082 |       0.035 |     0.268 |       0.071 |     0.676 |       0.406 |     1.929 |       0.410 |   3.361 |     2.891 |
| 2021-03-31 | 618       |                   9.142 |     0.002 |       0.002 |     0.001 |       0.000 |     0.004 |       0.003 |     0.008 |       0.015 |     0.108 |       0.043 |     0.225 |       0.083 |     0.806 |       0.354 |     2.105 |       0.592 |   2.689 |     2.102 |
| 2021-03-30 | 388       |                   8.934 |     0.000 |       0.001 |     0.000 |       0.000 |     0.003 |       0.002 |     0.008 |       0.006 |     0.062 |       0.028 |     0.195 |       0.062 |     0.338 |       0.333 |     2.105 |       0.683 |   3.137 |     1.971 |
| 2021-03-29 | 309       |                   7.506 |     0.000 |       0.001 |     0.001 |       0.000 |     0.003 |       0.001 |     0.005 |       0.007 |     0.022 |       0.021 |     0.140 |       0.024 |     0.676 |       0.375 |     0.614 |       0.137 |   4.034 |     1.445 |
