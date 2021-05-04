COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Tuesday, May 04, 2021)*

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
| 2021-05-04 |       258 |      4 |       777 |          -26 |     -3 |         51444 |          13616 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-03 |       180 |      0 |       403 |           11 |      5 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-02 |       330 |      1 |       244 |            9 |      1 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-01 |       454 |      2 |       639 |          -22 |     -5 |        111335 |          26472 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-04-30 |       460 |      0 |       512 |            0 |      0 |         62576 |          18231 |                19 |                11 |                32 |                 3 |                40 |                43 |                52 |                20 |                44 |                48 |                19 |                34 |                28 |                24 |                16 |                12 |               5 |               9 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |

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
| 2021-05-04 |    837715 |  16981 |    797901 |          296 |     87 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2503050 |         886295 |
| 2021-05-03 |    837457 |  16977 |    797124 |          322 |     90 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2451606 |         872679 |
| 2021-05-02 |    837277 |  16977 |    796721 |          311 |     85 |             23802 |             22735 |             38705 |             39010 |             56213 |             63305 |             55076 |             65232 |             61560 |             77439 |             54633 |             69428 |             40901 |             44429 |             26085 |             29344 |           22949 |           46115 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1061 |           460 |          2279 |          1336 |        5124 |        6046 |            NA |             NA |
| 2021-05-01 |    836947 |  16976 |    796477 |          302 |     84 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2433008 |         870552 |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-05-02 | 330       |                  11.792 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.006 |     0.021 |       0.014 |     0.089 |       0.051 |     0.370 |       0.118 |     0.726 |       0.549 |     2.272 |       0.637 |   3.126 |     3.802 |
| 2021-04-30 | 460       |                   5.532 |     0.001 |       0.000 |     0.001 |       0.000 |     0.005 |       0.003 |     0.020 |       0.006 |     0.065 |       0.038 |     0.115 |       0.064 |     0.726 |       0.248 |     1.398 |       0.546 |   1.116 |     1.180 |
| 2021-04-29 | 470       |                   6.341 |     0.001 |       0.000 |     0.001 |       0.001 |     0.004 |       0.004 |     0.016 |       0.006 |     0.035 |       0.026 |     0.145 |       0.062 |     0.778 |       0.352 |     1.136 |       0.546 |   1.786 |     1.442 |
| 2021-04-28 | 572       |                  11.053 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.021 |       0.014 |     0.069 |       0.037 |     0.139 |       0.051 |     0.519 |       0.393 |     1.573 |       0.364 |   3.796 |     4.064 |
| 2021-04-27 | 353       |                   8.070 |     0.000 |       0.000 |     0.000 |       0.001 |     0.003 |       0.001 |     0.010 |       0.012 |     0.041 |       0.018 |     0.139 |       0.047 |     0.623 |       0.280 |     0.612 |       0.273 |   3.126 |     2.884 |
| 2021-04-26 | 196       |                  11.413 |     0.001 |       0.001 |     0.001 |       0.001 |     0.004 |       0.003 |     0.011 |       0.018 |     0.081 |       0.037 |     0.188 |       0.081 |     0.986 |       0.518 |     1.835 |       1.229 |   3.796 |     2.622 |
| 2021-04-24 | 567       |                  15.473 |     0.002 |       0.001 |     0.003 |       0.003 |     0.007 |       0.006 |     0.032 |       0.016 |     0.098 |       0.061 |     0.370 |       0.174 |     1.349 |       0.663 |     2.534 |       1.138 |   4.689 |     4.327 |
| 2021-04-22 | 636       |                  13.786 |     0.003 |       0.002 |     0.002 |       0.003 |     0.011 |       0.007 |     0.033 |       0.032 |     0.151 |       0.073 |     0.394 |       0.176 |     1.531 |       0.632 |     1.835 |       1.275 |   5.135 |     2.491 |
| 2021-04-20 | 424       |                   6.795 |     0.001 |       0.000 |     0.001 |       0.001 |     0.005 |       0.002 |     0.012 |       0.013 |     0.053 |       0.031 |     0.151 |       0.022 |     0.363 |       0.248 |     0.524 |       0.683 |   2.456 |     2.229 |
| 2021-04-19 | 220       |                   5.310 |     0.000 |       0.000 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.007 |     0.035 |       0.019 |     0.055 |       0.039 |     0.441 |       0.145 |     0.874 |       0.455 |   1.786 |     1.442 |
| 2021-04-18 | 441       |                   6.435 |     0.001 |       0.001 |     0.000 |       0.001 |     0.005 |       0.002 |     0.018 |       0.013 |     0.028 |       0.026 |     0.188 |       0.049 |     0.519 |       0.186 |     1.573 |       0.728 |   1.786 |     1.311 |
| 2021-04-17 | 649       |                   8.166 |     0.001 |       0.000 |     0.001 |       0.001 |     0.007 |       0.004 |     0.023 |       0.017 |     0.068 |       0.037 |     0.273 |       0.082 |     0.519 |       0.435 |     1.660 |       0.683 |   1.340 |     3.015 |
| 2021-04-16 | 553       |                   6.730 |     0.002 |       0.001 |     0.001 |       0.001 |     0.005 |       0.002 |     0.021 |       0.014 |     0.044 |       0.034 |     0.224 |       0.073 |     0.752 |       0.290 |     1.573 |       0.911 |   1.340 |     1.442 |
| 2021-04-15 | 501       |                   6.875 |     0.001 |       0.001 |     0.000 |       0.000 |     0.007 |       0.002 |     0.023 |       0.013 |     0.074 |       0.025 |     0.188 |       0.081 |     0.674 |       0.248 |     1.223 |       0.956 |   1.786 |     1.573 |
| 2021-04-14 | 684       |                   9.160 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.022 |       0.015 |     0.089 |       0.050 |     0.273 |       0.097 |     1.167 |       0.342 |     1.311 |       0.911 |   2.903 |     1.967 |
| 2021-04-13 | 408       |                   8.835 |     0.000 |       0.000 |     0.000 |       0.000 |     0.003 |       0.003 |     0.015 |       0.009 |     0.037 |       0.031 |     0.158 |       0.073 |     0.674 |       0.145 |     1.136 |       0.410 |   3.126 |     3.015 |
| 2021-04-12 | 271       |                   5.475 |     0.000 |       0.000 |     0.000 |       0.000 |     0.005 |       0.001 |     0.015 |       0.007 |     0.010 |       0.006 |     0.139 |       0.056 |     0.000 |       0.186 |     1.573 |       0.865 |   1.563 |     1.049 |
| 2021-04-11 | 566       |                  27.843 |     0.004 |       0.003 |     0.002 |       0.002 |     0.019 |       0.011 |     0.064 |       0.044 |     0.164 |       0.117 |     0.727 |       0.266 |     2.698 |       1.284 |     4.718 |       2.276 |   6.922 |     8.522 |
| 2021-04-08 | 602       |                   9.340 |     0.001 |       0.001 |     0.000 |       0.001 |     0.008 |       0.003 |     0.018 |       0.018 |     0.075 |       0.031 |     0.218 |       0.092 |     0.804 |       0.456 |     1.048 |       0.410 |   3.796 |     2.360 |
| 2021-04-07 | 663       |                  10.090 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.004 |     0.013 |       0.014 |     0.098 |       0.046 |     0.285 |       0.131 |     0.986 |       0.404 |     1.747 |       0.865 |   3.126 |     2.360 |
