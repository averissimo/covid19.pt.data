COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, November 15, 2021)*

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
| 2021-11-15 |         1 |      8 |         0 |            5 |      1 |            NA |             NA |                62 |                59 |                49 |                33 |                86 |                61 |                80 |                56 |                81 |                85 |                55 |                77 |                45 |                55 |                35 |                32 |              13 |              11 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             0 |           2 |           4 |
| 2021-11-14 |         1 |     15 |         1 |           41 |      6 |            NA |             NA |                85 |                92 |                76 |                74 |               122 |                78 |                92 |               126 |               114 |               111 |                99 |                97 |                78 |                70 |                50 |                50 |              21 |              47 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             3 |             1 |             1 |             2 |           6 |           2 |
| 2021-11-13 |         2 |      8 |         1 |           13 |      4 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-11-12 |         2 |      3 |         1 |           28 |      1 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-11-11 |         2 |      9 |         0 |            3 |      2 |            NA |             NA |               110 |               106 |                75 |                60 |               119 |                86 |                90 |               110 |               107 |               122 |                76 |                89 |                58 |                88 |                61 |                54 |              31 |              36 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             2 |           2 |           3 |

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
| 2021-11-15 |      1108 |  18265 |      1051 |          470 |     76 |             35962 |             34648 |             59336 |             59291 |             88455 |             91497 |             76882 |             86135 |             79640 |             97830 |             66886 |             83888 |             48982 |             53775 |             31198 |             35026 |           26222 |           52044 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1149 |           514 |          2434 |          1476 |        5470 |        6449 |            NA |             NA |
| 2021-11-14 |      1107 |  18257 |      1051 |          465 |     75 |             35900 |             34589 |             59287 |             59258 |             88369 |             91436 |             76802 |             86079 |             79559 |             97745 |             66831 |             83811 |             48937 |             53720 |             31163 |             34994 |           26209 |           52033 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1149 |           514 |          2432 |          1476 |        5468 |        6445 |            NA |             NA |
| 2021-11-13 |      1106 |  18242 |      1050 |          424 |     69 |             35815 |             34497 |             59211 |             59184 |             88247 |             91358 |             76710 |             85953 |             79445 |             97634 |             66732 |             83714 |             48859 |             53650 |             31113 |             34944 |           26188 |           51986 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1146 |           513 |          2431 |          1474 |        5462 |        6443 |            NA |             NA |
| 2021-11-12 |      1104 |  18234 |      1049 |          411 |     65 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-11-11 |      1102 |  18231 |      1048 |          383 |     64 |             35574 |             34265 |             59039 |             59014 |             87946 |             91156 |             76482 |             85722 |             79198 |             97339 |             66503 |             83479 |             48694 |             53441 |             30980 |             34820 |           26138 |           51895 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           157 |          1146 |           512 |          2431 |          1473 |        5460 |        6437 |            NA |             NA |
| 2021-11-10 |      1100 |  18222 |      1048 |          380 |     62 |             35464 |             34159 |             58964 |             58954 |             87827 |             91070 |             76392 |             85612 |             79091 |             97217 |             66427 |             83390 |             48636 |             53353 |             30919 |             34766 |           26107 |           51859 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           157 |          1146 |           511 |          2430 |          1471 |        5458 |        6434 |            NA |             NA |
| 2021-11-09 |      1099 |  18217 |      1047 |          361 |     60 |             35360 |             34044 |             58864 |             58879 |             87686 |             90975 |             76277 |             85485 |             78990 |             97061 |             66353 |             83283 |             48544 |             53274 |             30872 |             34705 |           26083 |           51814 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           157 |          1146 |           511 |          2430 |          1470 |        5457 |        6431 |            NA |             NA |
| 2021-11-08 |      1098 |  18209 |      1046 |          360 |     62 |             35288 |             33974 |             58809 |             58831 |             87563 |             90888 |             76202 |             85391 |             78905 |             96965 |             66279 |             83214 |             48496 |             53210 |             30821 |             34673 |           26065 |           51795 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           157 |          1145 |           511 |          2430 |          1470 |        5454 |        6427 |            NA |             NA |
| 2021-11-07 |      1097 |  18203 |      1045 |          341 |     64 |             35259 |             33941 |             58784 |             58808 |             87513 |             90856 |             76165 |             85352 |             78859 |             96932 |             66255 |             83179 |             48465 |             53172 |             30792 |             34647 |           26052 |           51772 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           157 |          1144 |           511 |          2429 |          1470 |        5454 |        6423 |            NA |             NA |
| 2021-11-06 |      1096 |  18198 |      1045 |          323 |     62 |             35207 |             33892 |             58719 |             58756 |             87415 |             90795 |             76094 |             85293 |             78771 |             96851 |             66199 |             83110 |             48419 |             53114 |             30753 |             34606 |           26037 |           51750 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            71 |           366 |           157 |          1143 |           511 |          2429 |          1470 |        5453 |        6421 |            NA |             NA |
| 2021-11-05 |      1095 |  18193 |      1044 |          345 |     66 |             35142 |             33820 |             58658 |             58697 |             87305 |             90718 |             76009 |             85223 |             78681 |             96746 |             66129 |             83043 |             48365 |             53059 |             30718 |             34562 |           26016 |           51696 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            71 |           366 |           157 |          1143 |           511 |          2425 |          1470 |        5453 |        6420 |            NA |             NA |
| 2021-11-04 |      1094 |  18184 |      1043 |          357 |     73 |             35065 |             33749 |             58592 |             58630 |             87193 |             90644 |             75907 |             85130 |             78596 |             96633 |             66054 |             82958 |             48306 |             52991 |             30685 |             34517 |           25990 |           51658 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            71 |           366 |           157 |          1142 |           510 |          2424 |          1467 |        5452 |        6418 |            NA |             NA |
| 2021-11-03 |      1092 |  18180 |      1042 |          384 |     67 |             34978 |             33665 |             58506 |             58570 |             87071 |             90548 |             75816 |             85052 |             78493 |             96502 |             65973 |             82865 |             48248 |             52933 |             30639 |             34474 |           25963 |           51620 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            71 |           366 |           157 |          1142 |           510 |          2423 |          1466 |        5452 |        6416 |            NA |             NA |
| 2021-11-02 |      1091 |  18171 |      1041 |          372 |     59 |             34933 |             33626 |             58450 |             58529 |             86947 |             90504 |             75739 |             84973 |             78424 |             96415 |             65916 |             82792 |             48182 |             52879 |             30609 |             34423 |           25946 |           51559 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1142 |           509 |          2421 |          1465 |        5452 |        6412 |            NA |             NA |
| 2021-11-01 |      1091 |  18162 |      1041 |          360 |     60 |             34902 |             33602 |             58431 |             58517 |             86912 |             90467 |             75707 |             84939 |             78386 |             96390 |             65895 |             82759 |             48157 |             52850 |             30598 |             34406 |           25943 |           51534 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1142 |           509 |          2421 |          1465 |        5447 |        6408 |            NA |             NA |
| 2021-10-31 |      1090 |  18157 |      1040 |          335 |     59 |             34874 |             33565 |             58407 |             58495 |             86867 |             90435 |             75673 |             84906 |             78349 |             96353 |             65865 |             82735 |             48141 |             52828 |             30578 |             34385 |           25934 |           51514 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1142 |           509 |          2421 |          1465 |        5445 |        6405 |            NA |             NA |
| 2021-10-30 |      1089 |  18156 |      1040 |          318 |     64 |             34837 |             33521 |             58370 |             58454 |             86791 |             90393 |             75616 |             84862 |             78302 |             96297 |             65821 |             82681 |             48105 |             52789 |             30549 |             34355 |           25916 |           51483 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1142 |           509 |          2421 |          1465 |        5445 |        6404 |            NA |             NA |
| 2021-10-29 |      1088 |  18153 |      1039 |          331 |     65 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-10-28 |      1088 |  18149 |      1038 |          318 |     60 |             34748 |             33452 |             58281 |             58373 |             86613 |             90275 |             75488 |             84734 |             78182 |             96166 |             65697 |             82567 |             48023 |             52715 |             30502 |             34300 |           25873 |           51398 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1142 |           509 |          2421 |          1465 |        5441 |        6401 |            NA |             NA |
| 2021-10-27 |      1087 |  18144 |      1037 |          316 |     61 |             34697 |             33414 |             58234 |             58342 |             86515 |             90216 |             75418 |             84678 |             78124 |             96087 |             65651 |             82501 |             47983 |             52673 |             30469 |             34269 |           25861 |           51369 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1141 |           509 |          2420 |          1465 |        5440 |        6399 |            NA |             NA |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-11-15 | 1         |                  10.418 |     0.003 |       0.002 |     0.001 |       0.001 |     0.008 |       0.003 |     0.028 |       0.013 |     0.114 |       0.063 |     0.301 |       0.145 |     1.056 |       0.526 |     2.731 |       1.348 |   2.712 |     1.363 |
| 2021-11-14 | 1         |                  19.765 |     0.005 |       0.003 |     0.001 |       0.001 |     0.011 |       0.004 |     0.032 |       0.029 |     0.160 |       0.082 |     0.542 |       0.183 |     1.830 |       0.669 |     3.901 |       2.107 |   4.381 |     5.824 |
| 2021-11-13 | 2         |                  45.634 |     0.013 |       0.007 |     0.003 |       0.003 |     0.027 |       0.011 |     0.080 |       0.054 |     0.347 |       0.217 |     1.253 |       0.443 |     3.871 |       1.998 |    10.376 |       5.225 |  10.430 |    11.276 |
| 2021-11-11 | 2         |                  21.074 |     0.006 |       0.003 |     0.001 |       0.001 |     0.011 |       0.005 |     0.032 |       0.026 |     0.150 |       0.090 |     0.416 |       0.168 |     1.361 |       0.841 |     4.759 |       2.276 |   6.467 |     4.461 |
| 2021-11-10 | 1         |                  20.696 |     0.006 |       0.003 |     0.002 |       0.001 |     0.013 |       0.005 |     0.040 |       0.029 |     0.142 |       0.115 |     0.405 |       0.202 |     2.158 |       0.755 |     3.667 |       2.571 |   5.006 |     5.576 |
| 2021-11-09 | 1         |                  13.972 |     0.004 |       0.002 |     0.001 |       0.001 |     0.011 |       0.005 |     0.026 |       0.022 |     0.120 |       0.071 |     0.405 |       0.130 |     1.126 |       0.612 |     3.979 |       1.348 |   3.755 |     2.354 |
| 2021-11-08 | 1         |                  10.329 |     0.002 |       0.001 |     0.000 |       0.000 |     0.005 |       0.002 |     0.013 |       0.009 |     0.065 |       0.024 |     0.131 |       0.066 |     0.727 |       0.363 |     2.263 |       1.096 |   2.712 |     2.850 |
| 2021-11-07 | 1         |                  12.936 |     0.003 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.025 |       0.014 |     0.124 |       0.060 |     0.306 |       0.130 |     1.079 |       0.554 |     3.043 |       1.728 |   3.129 |     2.726 |
| 2021-11-06 | 1         |                  18.231 |     0.004 |       0.002 |     0.001 |       0.001 |     0.010 |       0.004 |     0.030 |       0.016 |     0.127 |       0.077 |     0.383 |       0.126 |     1.267 |       0.526 |     2.731 |       1.854 |   4.381 |     6.691 |
| 2021-11-05 | 1         |                  17.491 |     0.004 |       0.002 |     0.001 |       0.001 |     0.010 |       0.004 |     0.036 |       0.022 |     0.120 |       0.083 |     0.410 |       0.160 |     1.384 |       0.650 |     2.575 |       1.896 |   5.424 |     4.709 |
| 2021-11-04 | 2         |                  18.591 |     0.005 |       0.002 |     0.001 |       0.001 |     0.011 |       0.005 |     0.032 |       0.018 |     0.145 |       0.096 |     0.443 |       0.175 |     1.361 |       0.554 |     3.589 |       1.812 |   5.632 |     4.709 |
| 2021-11-03 | 1         |                  18.333 |     0.003 |       0.001 |     0.001 |       0.001 |     0.011 |       0.002 |     0.027 |       0.018 |     0.097 |       0.064 |     0.312 |       0.137 |     1.548 |       0.516 |     2.341 |       2.149 |   3.546 |     7.559 |
| 2021-11-02 | 0         |                   6.436 |     0.002 |       0.001 |     0.000 |       0.000 |     0.003 |       0.002 |     0.011 |       0.008 |     0.053 |       0.018 |     0.115 |       0.062 |     0.586 |       0.277 |     0.858 |       0.716 |   0.626 |     3.098 |
| 2021-11-01 | 1         |                   7.702 |     0.002 |       0.001 |     0.000 |       0.000 |     0.004 |       0.002 |     0.012 |       0.008 |     0.052 |       0.027 |     0.164 |       0.045 |     0.375 |       0.210 |     1.560 |       0.885 |   1.877 |     2.478 |
| 2021-10-31 | 1         |                  12.834 |     0.002 |       0.001 |     0.001 |       0.001 |     0.007 |       0.002 |     0.020 |       0.010 |     0.066 |       0.041 |     0.241 |       0.102 |     0.844 |       0.373 |     2.263 |       1.264 |   3.755 |     3.841 |
| 2021-10-30 | 1         |                  29.384 |     0.005 |       0.002 |     0.001 |       0.001 |     0.016 |       0.006 |     0.045 |       0.030 |     0.169 |       0.096 |     0.679 |       0.215 |     1.924 |       0.707 |     3.667 |       2.318 |   8.970 |    10.533 |
| 2021-10-28 | 1         |                  11.889 |     0.003 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.025 |       0.013 |     0.082 |       0.058 |     0.252 |       0.124 |     0.938 |       0.401 |     2.575 |       1.306 |   2.503 |     3.594 |
| 2021-10-27 | 1         |                  34.671 |     0.006 |       0.003 |     0.002 |       0.001 |     0.014 |       0.005 |     0.052 |       0.025 |     0.188 |       0.092 |     0.542 |       0.232 |     1.572 |       0.803 |     4.369 |       3.076 |  10.430 |    13.259 |
| 2021-10-25 | 0         |                   5.525 |     0.001 |       0.001 |     0.000 |       0.000 |     0.002 |       0.001 |     0.005 |       0.006 |     0.042 |       0.015 |     0.126 |       0.032 |     0.352 |       0.115 |     0.468 |       0.590 |   1.043 |     2.726 |
| 2021-10-24 | 1         |                   8.779 |     0.002 |       0.001 |     0.000 |       0.000 |     0.005 |       0.002 |     0.019 |       0.008 |     0.059 |       0.024 |     0.170 |       0.092 |     0.563 |       0.277 |     2.106 |       1.011 |   2.086 |     2.354 |
