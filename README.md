COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Friday, November 05, 2021)*

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
| 2021-11-05 |         1 |      9 |         1 |          -12 |     -7 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-11-04 |         2 |      4 |         1 |          -27 |      6 |            NA |             NA |                87 |                84 |                86 |                60 |               122 |                96 |                91 |                78 |               103 |               131 |                81 |                93 |                58 |                58 |                46 |                43 |              27 |              38 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |           0 |           2 |
| 2021-11-03 |         1 |      9 |         1 |           12 |      8 |            NA |             NA |                45 |                39 |                56 |                41 |               124 |                44 |                77 |                79 |                69 |                87 |                57 |                73 |                66 |                54 |                30 |                51 |              17 |              61 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             1 |             2 |             1 |           0 |           4 |
| 2021-11-02 |         0 |      9 |         0 |           12 |     -1 |            NA |             NA |                31 |                24 |                19 |                12 |                35 |                37 |                32 |                34 |                38 |                25 |                21 |                33 |                25 |                29 |                11 |                17 |               3 |              25 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           5 |           4 |
| 2021-11-01 |         1 |      5 |         1 |           25 |      1 |            NA |             NA |                28 |                37 |                24 |                22 |                45 |                32 |                34 |                33 |                37 |                37 |                30 |                24 |                16 |                22 |                20 |                21 |               9 |              20 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           2 |           3 |

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
| 2021-11-05 |      1095 |  18193 |      1044 |          345 |     66 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-11-04 |      1094 |  18184 |      1043 |          357 |     73 |             35065 |             33749 |             58592 |             58630 |             87193 |             90644 |             75907 |             85130 |             78596 |             96633 |             66054 |             82958 |             48306 |             52991 |             30685 |             34517 |           25990 |           51658 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            71 |           366 |           157 |          1142 |           510 |          2424 |          1467 |        5452 |        6418 |            NA |             NA |
| 2021-11-03 |      1092 |  18180 |      1042 |          384 |     67 |             34978 |             33665 |             58506 |             58570 |             87071 |             90548 |             75816 |             85052 |             78493 |             96502 |             65973 |             82865 |             48248 |             52933 |             30639 |             34474 |           25963 |           51620 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            71 |           366 |           157 |          1142 |           510 |          2423 |          1466 |        5452 |        6416 |            NA |             NA |
| 2021-11-02 |      1091 |  18171 |      1041 |          372 |     59 |             34933 |             33626 |             58450 |             58529 |             86947 |             90504 |             75739 |             84973 |             78424 |             96415 |             65916 |             82792 |             48182 |             52879 |             30609 |             34423 |           25946 |           51559 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1142 |           509 |          2421 |          1465 |        5452 |        6412 |            NA |             NA |
| 2021-11-01 |      1091 |  18162 |      1041 |          360 |     60 |             34902 |             33602 |             58431 |             58517 |             86912 |             90467 |             75707 |             84939 |             78386 |             96390 |             65895 |             82759 |             48157 |             52850 |             30598 |             34406 |           25943 |           51534 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1142 |           509 |          2421 |          1465 |        5447 |        6408 |            NA |             NA |
| 2021-10-31 |      1090 |  18157 |      1040 |          335 |     59 |             34874 |             33565 |             58407 |             58495 |             86867 |             90435 |             75673 |             84906 |             78349 |             96353 |             65865 |             82735 |             48141 |             52828 |             30578 |             34385 |           25934 |           51514 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1142 |           509 |          2421 |          1465 |        5445 |        6405 |            NA |             NA |
| 2021-10-30 |      1089 |  18156 |      1040 |          318 |     64 |             34837 |             33521 |             58370 |             58454 |             86791 |             90393 |             75616 |             84862 |             78302 |             96297 |             65821 |             82681 |             48105 |             52789 |             30549 |             34355 |           25916 |           51483 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1142 |           509 |          2421 |          1465 |        5445 |        6404 |            NA |             NA |
| 2021-10-29 |      1088 |  18153 |      1039 |          331 |     65 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-10-28 |      1088 |  18149 |      1038 |          318 |     60 |             34748 |             33452 |             58281 |             58373 |             86613 |             90275 |             75488 |             84734 |             78182 |             96166 |             65697 |             82567 |             48023 |             52715 |             30502 |             34300 |           25873 |           51398 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1142 |           509 |          2421 |          1465 |        5441 |        6401 |            NA |             NA |
| 2021-10-27 |      1087 |  18144 |      1037 |          316 |     61 |             34697 |             33414 |             58234 |             58342 |             86515 |             90216 |             75418 |             84678 |             78124 |             96087 |             65651 |             82501 |             47983 |             52673 |             30469 |             34269 |           25861 |           51369 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1141 |           509 |          2420 |          1465 |        5440 |        6399 |            NA |             NA |
| 2021-10-26 |      1086 |  18141 |      1037 |          301 |     62 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-10-25 |      1085 |  18138 |      1035 |          290 |     59 |             34590 |             33320 |             58138 |             58272 |             86356 |             90118 |             75270 |             84571 |             77990 |             95962 |             65552 |             82378 |             47916 |             52589 |             30413 |             34196 |           25811 |           51262 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1141 |           509 |          2419 |          1465 |        5438 |        6396 |            NA |             NA |
| 2021-10-24 |      1085 |  18133 |      1035 |          269 |     52 |             34577 |             33295 |             58126 |             58262 |             86332 |             90097 |             75255 |             84547 |             77960 |             95941 |             65529 |             82361 |             47901 |             52577 |             30407 |             34182 |           25806 |           51240 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1141 |           509 |          2419 |          1465 |        5436 |        6393 |            NA |             NA |
| 2021-10-23 |      1084 |  18129 |      1035 |          274 |     55 |             34536 |             33249 |             58100 |             58244 |             86278 |             90057 |             75200 |             84512 |             77918 |             95909 |             65498 |             82312 |             47877 |             52548 |             30380 |             34158 |           25796 |           51221 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1141 |           509 |          2418 |          1464 |        5435 |        6392 |            NA |             NA |
| 2021-10-22 |      1083 |  18125 |      1034 |          284 |     60 |             34479 |             33203 |             58048 |             58215 |             86196 |             89997 |             75124 |             84450 |             77855 |             95845 |             65460 |             82268 |             47835 |             52504 |             30358 |             34121 |           25774 |           51177 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1141 |           508 |          2418 |          1463 |        5433 |        6392 |            NA |             NA |
| 2021-10-21 |      1082 |  18117 |      1034 |          288 |     58 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-10-20 |      1081 |  18109 |      1033 |          286 |     58 |             34373 |             33111 |             57948 |             58145 |             86021 |             89877 |             74997 |             84306 |             77740 |             95705 |             65367 |             82150 |             47760 |             52413 |             30306 |             34068 |           25728 |           51099 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1140 |           507 |          2416 |          1460 |        5429 |        6387 |            NA |             NA |
| 2021-10-19 |      1080 |  18106 |      1032 |          299 |     60 |             34328 |             33071 |             57908 |             58110 |             85904 |             89812 |             74930 |             84247 |             77683 |             95630 |             65318 |             82086 |             47718 |             52352 |             30278 |             34040 |           25706 |           51068 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1140 |           507 |          2416 |          1460 |        5427 |        6386 |            NA |             NA |
| 2021-10-18 |      1080 |  18100 |      1031 |          312 |     62 |             34300 |             33035 |             57877 |             58079 |             85790 |             89754 |             74864 |             84183 |             77614 |             95558 |             65269 |             82035 |             47677 |             52323 |             30254 |             34006 |           25691 |           51046 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1139 |           507 |          2416 |          1459 |        5425 |        6384 |            NA |             NA |
| 2021-10-17 |      1079 |  18097 |      1031 |          295 |     61 |             34277 |             33023 |             57864 |             58071 |             85761 |             89730 |             74837 |             84161 |             77599 |             95524 |             65254 |             82024 |             47665 |             52316 |             30247 |             33997 |           25682 |           51030 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1139 |           507 |          2416 |          1459 |        5422 |        6384 |            NA |             NA |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-11-04 | 2         |                  18.719 |     0.005 |       0.002 |     0.001 |       0.001 |     0.011 |       0.005 |     0.032 |       0.018 |     0.147 |       0.096 |     0.449 |       0.176 |     1.371 |       0.558 |     3.634 |       1.828 |   5.664 |     4.721 |
| 2021-11-03 | 1         |                  18.444 |     0.003 |       0.001 |     0.001 |       0.001 |     0.011 |       0.002 |     0.027 |       0.019 |     0.098 |       0.064 |     0.316 |       0.138 |     1.560 |       0.520 |     2.370 |       2.168 |   3.566 |     7.579 |
| 2021-11-02 | 0         |                   6.474 |     0.002 |       0.001 |     0.000 |       0.000 |     0.003 |       0.002 |     0.011 |       0.008 |     0.054 |       0.018 |     0.116 |       0.062 |     0.591 |       0.279 |     0.869 |       0.723 |   0.629 |     3.106 |
| 2021-11-01 | 1         |                   7.756 |     0.002 |       0.001 |     0.000 |       0.000 |     0.004 |       0.002 |     0.012 |       0.008 |     0.053 |       0.027 |     0.166 |       0.045 |     0.378 |       0.212 |     1.580 |       0.893 |   1.888 |     2.485 |
| 2021-10-31 | 1         |                  12.917 |     0.002 |       0.001 |     0.001 |       0.001 |     0.007 |       0.002 |     0.020 |       0.010 |     0.067 |       0.041 |     0.244 |       0.102 |     0.851 |       0.375 |     2.291 |       1.275 |   3.776 |     3.851 |
| 2021-10-30 | 1         |                  29.561 |     0.005 |       0.002 |     0.002 |       0.001 |     0.016 |       0.007 |     0.046 |       0.030 |     0.171 |       0.096 |     0.687 |       0.216 |     1.939 |       0.712 |     3.713 |       2.338 |   9.020 |    10.560 |
| 2021-10-28 | 1         |                  11.972 |     0.003 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.025 |       0.013 |     0.083 |       0.058 |     0.255 |       0.125 |     0.946 |       0.404 |     2.607 |       1.318 |   2.517 |     3.603 |
| 2021-10-27 | 1         |                  34.877 |     0.006 |       0.003 |     0.002 |       0.001 |     0.015 |       0.005 |     0.053 |       0.025 |     0.191 |       0.092 |     0.549 |       0.233 |     1.584 |       0.808 |     4.424 |       3.103 |  10.489 |    13.294 |
| 2021-10-25 | 0         |                   5.554 |     0.001 |       0.001 |     0.000 |       0.000 |     0.002 |       0.001 |     0.005 |       0.006 |     0.043 |       0.015 |     0.127 |       0.032 |     0.355 |       0.115 |     0.474 |       0.595 |   1.049 |     2.733 |
| 2021-10-24 | 1         |                   8.845 |     0.002 |       0.001 |     0.000 |       0.000 |     0.005 |       0.002 |     0.020 |       0.008 |     0.060 |       0.024 |     0.172 |       0.093 |     0.567 |       0.279 |     2.133 |       1.020 |   2.098 |     2.361 |
| 2021-10-23 | 1         |                  15.298 |     0.003 |       0.001 |     0.001 |       0.000 |     0.008 |       0.003 |     0.027 |       0.015 |     0.090 |       0.047 |     0.211 |       0.083 |     0.993 |       0.423 |     1.738 |       1.573 |   4.615 |     5.467 |
| 2021-10-22 | 1         |                  29.470 |     0.006 |       0.003 |     0.002 |       0.001 |     0.016 |       0.007 |     0.045 |       0.034 |     0.164 |       0.103 |     0.515 |       0.223 |     1.773 |       0.876 |     4.108 |       2.253 |   9.650 |     9.691 |
| 2021-10-20 | 1         |                  14.036 |     0.003 |       0.001 |     0.001 |       0.001 |     0.011 |       0.004 |     0.024 |       0.014 |     0.081 |       0.055 |     0.272 |       0.121 |     0.993 |       0.587 |     2.212 |       1.190 |   4.615 |     3.851 |
| 2021-10-19 | 0         |                  11.045 |     0.002 |       0.001 |     0.001 |       0.001 |     0.010 |       0.003 |     0.023 |       0.015 |     0.098 |       0.053 |     0.272 |       0.097 |     0.969 |       0.279 |     1.896 |       1.445 |   3.147 |     2.733 |
| 2021-10-18 | 1         |                   5.333 |     0.001 |       0.000 |     0.000 |       0.000 |     0.003 |       0.001 |     0.010 |       0.005 |     0.021 |       0.025 |     0.083 |       0.021 |     0.284 |       0.067 |     0.553 |       0.383 |   1.888 |     1.988 |
| 2021-10-17 | 0         |                   5.265 |     0.002 |       0.001 |     0.001 |       0.000 |     0.006 |       0.001 |     0.011 |       0.008 |     0.037 |       0.021 |     0.155 |       0.044 |     0.426 |       0.260 |     0.948 |       0.680 |   1.049 |     1.615 |
| 2021-10-16 | 1         |                   8.436 |     0.002 |       0.001 |     0.001 |       0.001 |     0.005 |       0.003 |     0.016 |       0.007 |     0.044 |       0.040 |     0.133 |       0.072 |     0.544 |       0.298 |     1.501 |       0.595 |   2.937 |     2.236 |
| 2021-10-15 | 1         |                  11.531 |     0.002 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.020 |       0.012 |     0.061 |       0.037 |     0.211 |       0.087 |     0.898 |       0.269 |     1.738 |       1.020 |   2.937 |     4.224 |
| 2021-10-14 | 0         |                  14.376 |     0.002 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.016 |       0.011 |     0.068 |       0.039 |     0.283 |       0.079 |     0.733 |       0.308 |     1.343 |       0.893 |   5.244 |     5.342 |
| 2021-10-13 | 1         |                  12.447 |     0.002 |       0.001 |     0.001 |       0.001 |     0.008 |       0.004 |     0.019 |       0.011 |     0.078 |       0.048 |     0.260 |       0.102 |     0.827 |       0.356 |     1.580 |       1.063 |   3.986 |     4.100 |
