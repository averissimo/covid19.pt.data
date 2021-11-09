COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Tuesday, November 09, 2021)*

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
| 2021-11-09 |         1 |      8 |         1 |            1 |     -2 |            NA |             NA |                72 |                70 |                55 |                48 |               123 |                87 |                75 |                94 |                85 |                96 |                74 |                69 |                48 |                64 |                51 |                32 |              18 |              19 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |           3 |           4 |
| 2021-11-08 |         1 |      6 |         1 |           19 |     -2 |            NA |             NA |                29 |                33 |                25 |                23 |                50 |                32 |                37 |                39 |                46 |                33 |                24 |                35 |                31 |                38 |                29 |                26 |              13 |              23 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             0 |           0 |           4 |
| 2021-11-07 |         1 |      5 |         0 |           18 |      2 |            NA |             NA |                52 |                49 |                65 |                52 |                98 |                61 |                71 |                59 |                88 |                81 |                56 |                69 |                46 |                58 |                39 |                41 |              15 |              22 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             1 |             0 |             0 |             0 |           1 |           2 |
| 2021-11-06 |         1 |      5 |         1 |          -22 |     -4 |            NA |             NA |                65 |                72 |                61 |                59 |               110 |                77 |                85 |                70 |                90 |               105 |                70 |                67 |                54 |                55 |                35 |                44 |              21 |              54 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             4 |             0 |           0 |           1 |
| 2021-11-05 |         1 |      9 |         1 |          -12 |     -7 |            NA |             NA |                77 |                71 |                66 |                67 |               112 |                74 |               102 |                93 |                85 |               113 |                75 |                85 |                59 |                68 |                33 |                45 |              26 |              38 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             1 |             3 |           1 |           2 |

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
| 2021-10-26 |      1086 |  18141 |      1037 |          301 |     62 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-10-25 |      1085 |  18138 |      1035 |          290 |     59 |             34590 |             33320 |             58138 |             58272 |             86356 |             90118 |             75270 |             84571 |             77990 |             95962 |             65552 |             82378 |             47916 |             52589 |             30413 |             34196 |           25811 |           51262 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1141 |           509 |          2419 |          1465 |        5438 |        6396 |            NA |             NA |
| 2021-10-24 |      1085 |  18133 |      1035 |          269 |     52 |             34577 |             33295 |             58126 |             58262 |             86332 |             90097 |             75255 |             84547 |             77960 |             95941 |             65529 |             82361 |             47901 |             52577 |             30407 |             34182 |           25806 |           51240 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1141 |           509 |          2419 |          1465 |        5436 |        6393 |            NA |             NA |
| 2021-10-23 |      1084 |  18129 |      1035 |          274 |     55 |             34536 |             33249 |             58100 |             58244 |             86278 |             90057 |             75200 |             84512 |             77918 |             95909 |             65498 |             82312 |             47877 |             52548 |             30380 |             34158 |           25796 |           51221 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1141 |           509 |          2418 |          1464 |        5435 |        6392 |            NA |             NA |
| 2021-10-22 |      1083 |  18125 |      1034 |          284 |     60 |             34479 |             33203 |             58048 |             58215 |             86196 |             89997 |             75124 |             84450 |             77855 |             95845 |             65460 |             82268 |             47835 |             52504 |             30358 |             34121 |           25774 |           51177 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            71 |           366 |           157 |          1141 |           508 |          2418 |          1463 |        5433 |        6392 |            NA |             NA |
| 2021-10-21 |      1082 |  18117 |      1034 |          288 |     58 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-11-09 | 1         |                  14.043 |     0.004 |       0.002 |     0.001 |       0.001 |     0.011 |       0.005 |     0.027 |       0.022 |     0.121 |       0.071 |     0.408 |       0.130 |     1.133 |       0.614 |     4.014 |       1.355 |   3.766 |     2.358 |
| 2021-11-08 | 1         |                  10.374 |     0.002 |       0.001 |     0.000 |       0.000 |     0.005 |       0.002 |     0.013 |       0.009 |     0.065 |       0.024 |     0.132 |       0.066 |     0.732 |       0.364 |     2.283 |       1.101 |   2.720 |     2.855 |
| 2021-11-07 | 1         |                  12.999 |     0.003 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.025 |       0.014 |     0.125 |       0.060 |     0.309 |       0.130 |     1.086 |       0.556 |     3.070 |       1.737 |   3.138 |     2.731 |
| 2021-11-06 | 1         |                  18.304 |     0.004 |       0.002 |     0.001 |       0.001 |     0.010 |       0.004 |     0.030 |       0.016 |     0.128 |       0.078 |     0.386 |       0.126 |     1.275 |       0.528 |     2.755 |       1.864 |   4.394 |     6.702 |
| 2021-11-05 | 1         |                  17.563 |     0.004 |       0.002 |     0.001 |       0.001 |     0.010 |       0.004 |     0.036 |       0.022 |     0.121 |       0.084 |     0.414 |       0.160 |     1.393 |       0.652 |     2.597 |       1.906 |   5.440 |     4.716 |
| 2021-11-04 | 2         |                  18.672 |     0.005 |       0.002 |     0.001 |       0.001 |     0.011 |       0.005 |     0.032 |       0.018 |     0.146 |       0.097 |     0.447 |       0.175 |     1.369 |       0.556 |     3.621 |       1.821 |   5.649 |     4.716 |
| 2021-11-03 | 1         |                  18.404 |     0.003 |       0.001 |     0.001 |       0.001 |     0.011 |       0.002 |     0.027 |       0.018 |     0.098 |       0.065 |     0.314 |       0.138 |     1.558 |       0.518 |     2.361 |       2.160 |   3.557 |     7.571 |
| 2021-11-02 | 0         |                   6.463 |     0.002 |       0.001 |     0.000 |       0.000 |     0.003 |       0.002 |     0.011 |       0.008 |     0.054 |       0.019 |     0.116 |       0.062 |     0.590 |       0.278 |     0.866 |       0.720 |   0.628 |     3.103 |
| 2021-11-01 | 1         |                   7.735 |     0.002 |       0.001 |     0.000 |       0.000 |     0.004 |       0.002 |     0.012 |       0.008 |     0.052 |       0.027 |     0.165 |       0.045 |     0.378 |       0.211 |     1.574 |       0.889 |   1.883 |     2.482 |
| 2021-10-31 | 1         |                  12.890 |     0.002 |       0.001 |     0.001 |       0.001 |     0.007 |       0.002 |     0.020 |       0.010 |     0.067 |       0.042 |     0.243 |       0.102 |     0.850 |       0.374 |     2.283 |       1.271 |   3.766 |     3.848 |
| 2021-10-30 | 1         |                  29.494 |     0.005 |       0.002 |     0.002 |       0.001 |     0.016 |       0.006 |     0.045 |       0.030 |     0.170 |       0.097 |     0.684 |       0.215 |     1.936 |       0.710 |     3.699 |       2.330 |   8.996 |    10.550 |
| 2021-10-28 | 1         |                  11.942 |     0.003 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.025 |       0.013 |     0.082 |       0.059 |     0.254 |       0.124 |     0.944 |       0.403 |     2.597 |       1.313 |   2.511 |     3.599 |
| 2021-10-27 | 1         |                  34.800 |     0.006 |       0.003 |     0.002 |       0.001 |     0.015 |       0.005 |     0.052 |       0.025 |     0.190 |       0.093 |     0.546 |       0.232 |     1.582 |       0.806 |     4.408 |       3.092 |  10.461 |    13.281 |
| 2021-10-25 | 0         |                   5.545 |     0.001 |       0.001 |     0.000 |       0.000 |     0.002 |       0.001 |     0.005 |       0.006 |     0.043 |       0.016 |     0.127 |       0.032 |     0.354 |       0.115 |     0.472 |       0.593 |   1.046 |     2.731 |
| 2021-10-24 | 1         |                   8.821 |     0.002 |       0.001 |     0.000 |       0.000 |     0.005 |       0.002 |     0.019 |       0.008 |     0.060 |       0.024 |     0.171 |       0.092 |     0.567 |       0.278 |     2.125 |       1.017 |   2.092 |     2.358 |
| 2021-10-23 | 1         |                  15.263 |     0.003 |       0.001 |     0.001 |       0.000 |     0.007 |       0.003 |     0.027 |       0.015 |     0.089 |       0.047 |     0.210 |       0.083 |     0.992 |       0.422 |     1.732 |       1.567 |   4.603 |     5.461 |
| 2021-10-22 | 1         |                  29.403 |     0.006 |       0.003 |     0.002 |       0.001 |     0.016 |       0.007 |     0.045 |       0.034 |     0.163 |       0.104 |     0.513 |       0.222 |     1.771 |       0.873 |     4.093 |       2.245 |   9.624 |     9.681 |
| 2021-10-20 | 1         |                  14.005 |     0.003 |       0.001 |     0.001 |       0.001 |     0.011 |       0.004 |     0.024 |       0.014 |     0.081 |       0.056 |     0.270 |       0.121 |     0.992 |       0.585 |     2.204 |       1.186 |   4.603 |     3.848 |
| 2021-10-19 | 0         |                  11.017 |     0.002 |       0.001 |     0.001 |       0.001 |     0.010 |       0.003 |     0.023 |       0.015 |     0.098 |       0.053 |     0.270 |       0.096 |     0.968 |       0.278 |     1.889 |       1.440 |   3.138 |     2.731 |
| 2021-10-18 | 1         |                   5.321 |     0.001 |       0.000 |     0.000 |       0.000 |     0.003 |       0.001 |     0.010 |       0.005 |     0.021 |       0.025 |     0.083 |       0.021 |     0.283 |       0.067 |     0.551 |       0.381 |   1.883 |     1.986 |
