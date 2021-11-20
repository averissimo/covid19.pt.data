COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Saturday, November 20, 2021)*

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
| 2021-11-20 |         2 |     10 |         2 |           16 |      9 |            NA |             NA |               153 |               133 |               150 |                99 |               190 |               137 |               159 |               142 |               181 |               207 |               117 |               148 |                91 |               153 |               100 |                97 |              32 |              41 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             2 |             1 |           3 |           3 |
| 2021-11-19 |         2 |      5 |         1 |            5 |      7 |            NA |             NA |               169 |               157 |               112 |                89 |               180 |               170 |               164 |               155 |               187 |               207 |               140 |               146 |                92 |               125 |                92 |               108 |              39 |              40 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             0 |           2 |           1 |
| 2021-11-18 |         3 |     12 |         1 |            9 |     -3 |            NA |             NA |               156 |               168 |               116 |               105 |               177 |               114 |               152 |               185 |               159 |               214 |               138 |               172 |               124 |               132 |               101 |               117 |              28 |              42 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             3 |           3 |           5 |
| 2021-11-17 |         2 |      9 |         1 |           28 |     -5 |            NA |             NA |               159 |               142 |               148 |                90 |               208 |               152 |               184 |               189 |               194 |               205 |               162 |               193 |               107 |               134 |                87 |                92 |              30 |              49 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             2 |             2 |           0 |           4 |
| 2021-11-16 |         2 |      9 |         2 |           16 |      4 |            NA |             NA |               108 |               111 |                91 |                63 |               128 |                99 |               123 |               120 |               127 |               147 |                91 |               105 |                70 |               110 |                66 |                77 |              24 |              28 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             1 |             0 |           1 |           5 |

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
| 2021-11-20 |      1119 |  18310 |      1058 |          544 |     88 |             36707 |             35359 |             59953 |             59737 |             89338 |             92169 |             77664 |             86926 |             80488 |             98810 |             67534 |             84652 |             49466 |             54429 |             31644 |             35517 |           26375 |           52244 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1151 |           517 |          2441 |          1482 |        5479 |        6467 |            NA |             NA |
| 2021-11-19 |      1117 |  18300 |      1056 |          528 |     79 |             36554 |             35226 |             59803 |             59638 |             89148 |             92032 |             77505 |             86784 |             80307 |             98603 |             67417 |             84504 |             49375 |             54276 |             31544 |             35420 |           26343 |           52203 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1151 |           516 |          2439 |          1481 |        5476 |        6464 |            NA |             NA |
| 2021-11-18 |      1115 |  18295 |      1055 |          523 |     72 |             36385 |             35069 |             59691 |             59549 |             88968 |             91862 |             77341 |             86629 |             80120 |             98396 |             67277 |             84358 |             49283 |             54151 |             31452 |             35312 |           26304 |           52163 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1151 |           516 |          2437 |          1481 |        5474 |        6463 |            NA |             NA |
| 2021-11-17 |      1112 |  18283 |      1054 |          514 |     75 |             36229 |             34901 |             59575 |             59444 |             88791 |             91748 |             77189 |             86444 |             79961 |             98182 |             67139 |             84186 |             49159 |             54019 |             31351 |             35195 |           26276 |           52121 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1150 |           516 |          2437 |          1478 |        5471 |        6458 |            NA |             NA |
| 2021-11-16 |      1110 |  18274 |      1053 |          486 |     80 |             36070 |             34759 |             59427 |             59354 |             88583 |             91596 |             77005 |             86255 |             79767 |             97977 |             66977 |             83993 |             49052 |             53885 |             31264 |             35103 |           26246 |           52072 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1149 |           516 |          2435 |          1476 |        5471 |        6454 |            NA |             NA |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-11-20 | 2         |                  28.496 |     0.008 |       0.004 |     0.003 |       0.002 |     0.017 |       0.007 |     0.055 |       0.033 |     0.252 |       0.151 |     0.634 |       0.276 |     2.117 |       1.453 |     7.714 |       4.047 |   6.648 |     5.075 |
| 2021-11-19 | 2         |                  29.561 |     0.009 |       0.004 |     0.002 |       0.001 |     0.016 |       0.009 |     0.057 |       0.036 |     0.260 |       0.151 |     0.759 |       0.273 |     2.141 |       1.187 |     7.097 |       4.506 |   8.102 |     4.951 |
| 2021-11-18 | 3         |                  29.409 |     0.008 |       0.005 |     0.002 |       0.002 |     0.016 |       0.006 |     0.053 |       0.043 |     0.221 |       0.156 |     0.748 |       0.321 |     2.885 |       1.254 |     7.791 |       4.882 |   5.817 |     5.199 |
| 2021-11-17 | 2         |                  28.418 |     0.009 |       0.004 |     0.002 |       0.002 |     0.019 |       0.008 |     0.064 |       0.043 |     0.270 |       0.149 |     0.878 |       0.360 |     2.490 |       1.273 |     6.711 |       3.839 |   6.232 |     6.065 |
| 2021-11-16 | 2         |                  20.502 |     0.006 |       0.003 |     0.002 |       0.001 |     0.011 |       0.005 |     0.043 |       0.028 |     0.177 |       0.107 |     0.493 |       0.196 |     1.629 |       1.045 |     5.091 |       3.213 |   4.986 |     3.466 |
| 2021-11-15 | 1         |                  10.343 |     0.003 |       0.002 |     0.001 |       0.001 |     0.008 |       0.003 |     0.028 |       0.013 |     0.113 |       0.062 |     0.298 |       0.144 |     1.047 |       0.522 |     2.700 |       1.335 |   2.701 |     1.362 |
| 2021-11-14 | 1         |                  19.647 |     0.005 |       0.003 |     0.001 |       0.001 |     0.011 |       0.004 |     0.032 |       0.029 |     0.159 |       0.081 |     0.537 |       0.181 |     1.815 |       0.665 |     3.857 |       2.086 |   4.362 |     5.818 |
| 2021-11-13 | 2         |                  45.344 |     0.013 |       0.007 |     0.003 |       0.003 |     0.027 |       0.011 |     0.079 |       0.053 |     0.344 |       0.215 |     1.241 |       0.439 |     3.839 |       1.985 |    10.260 |       5.174 |  10.387 |    11.264 |
| 2021-11-11 | 2         |                  20.940 |     0.006 |       0.003 |     0.001 |       0.001 |     0.011 |       0.005 |     0.031 |       0.025 |     0.149 |       0.089 |     0.412 |       0.166 |     1.350 |       0.836 |     4.706 |       2.253 |   6.440 |     4.456 |
| 2021-11-10 | 1         |                  20.573 |     0.006 |       0.003 |     0.002 |       0.001 |     0.013 |       0.005 |     0.040 |       0.029 |     0.141 |       0.114 |     0.401 |       0.200 |     2.141 |       0.750 |     3.626 |       2.545 |   4.986 |     5.570 |
| 2021-11-09 | 1         |                  13.875 |     0.004 |       0.002 |     0.001 |       0.001 |     0.011 |       0.005 |     0.026 |       0.022 |     0.118 |       0.070 |     0.401 |       0.129 |     1.117 |       0.608 |     3.934 |       1.335 |   3.739 |     2.352 |
| 2021-11-08 | 1         |                  10.266 |     0.002 |       0.001 |     0.000 |       0.000 |     0.004 |       0.002 |     0.013 |       0.009 |     0.064 |       0.024 |     0.130 |       0.065 |     0.721 |       0.361 |     2.237 |       1.085 |   2.701 |     2.847 |
| 2021-11-07 | 1         |                  12.849 |     0.003 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.025 |       0.014 |     0.122 |       0.059 |     0.303 |       0.129 |     1.070 |       0.551 |     3.008 |       1.711 |   3.116 |     2.723 |
| 2021-11-06 | 1         |                  18.134 |     0.004 |       0.002 |     0.001 |       0.001 |     0.010 |       0.004 |     0.030 |       0.016 |     0.125 |       0.077 |     0.379 |       0.125 |     1.256 |       0.522 |     2.700 |       1.836 |   4.362 |     6.684 |
| 2021-11-05 | 1         |                  17.391 |     0.004 |       0.002 |     0.001 |       0.001 |     0.010 |       0.004 |     0.035 |       0.021 |     0.118 |       0.082 |     0.406 |       0.159 |     1.373 |       0.646 |     2.546 |       1.878 |   5.401 |     4.704 |
| 2021-11-04 | 2         |                  18.482 |     0.005 |       0.002 |     0.001 |       0.001 |     0.011 |       0.005 |     0.032 |       0.018 |     0.143 |       0.095 |     0.439 |       0.174 |     1.350 |       0.551 |     3.548 |       1.794 |   5.609 |     4.704 |
| 2021-11-03 | 1         |                  18.240 |     0.002 |       0.001 |     0.001 |       0.001 |     0.011 |       0.002 |     0.027 |       0.018 |     0.096 |       0.063 |     0.309 |       0.136 |     1.536 |       0.513 |     2.314 |       2.128 |   3.531 |     7.551 |
| 2021-11-02 | 0         |                   6.407 |     0.002 |       0.001 |     0.000 |       0.000 |     0.003 |       0.002 |     0.011 |       0.008 |     0.053 |       0.018 |     0.114 |       0.062 |     0.582 |       0.275 |     0.849 |       0.709 |   0.623 |     3.095 |
| 2021-11-01 | 1         |                   7.661 |     0.002 |       0.001 |     0.000 |       0.000 |     0.004 |       0.002 |     0.012 |       0.008 |     0.051 |       0.027 |     0.163 |       0.045 |     0.372 |       0.209 |     1.543 |       0.876 |   1.870 |     2.476 |
| 2021-10-31 | 1         |                  12.762 |     0.002 |       0.001 |     0.001 |       0.001 |     0.007 |       0.002 |     0.020 |       0.010 |     0.065 |       0.041 |     0.238 |       0.101 |     0.838 |       0.370 |     2.237 |       1.252 |   3.739 |     3.837 |
