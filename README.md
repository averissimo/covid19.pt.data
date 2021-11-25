COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Thursday, November 25, 2021)*

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
| 2021-11-25 |         3 |     15 |         2 |           10 |     -2 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-11-24 |         4 |     17 |         1 |           32 |     12 |            NA |             NA |               245 |               240 |               202 |               194 |               288 |               202 |               236 |               252 |               287 |               358 |               231 |               277 |               187 |               215 |               111 |               137 |              42 |              74 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             3 |             0 |             2 |             2 |           3 |           7 |
| 2021-11-23 |         3 |     14 |         3 |           21 |      0 |            NA |             NA |               131 |               155 |               118 |               108 |               191 |               123 |               169 |               179 |               201 |               247 |               179 |               199 |               136 |               134 |                99 |               102 |              37 |              47 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             1 |             3 |             4 |           2 |           2 |
| 2021-11-22 |         1 |     18 |         0 |           31 |      4 |            NA |             NA |               131 |               110 |                86 |                86 |               100 |                77 |                82 |                86 |               119 |               131 |                91 |                94 |                60 |                71 |                48 |                39 |              25 |              37 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             3 |             0 |             0 |             1 |             1 |             1 |           4 |           7 |
| 2021-11-21 |         3 |     11 |         1 |           53 |      1 |            NA |             NA |               158 |               159 |               144 |               106 |               164 |               140 |               167 |               153 |               205 |               204 |               154 |               152 |               141 |               166 |                91 |               116 |              29 |              52 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             2 |             0 |             0 |             1 |           3 |           4 |

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
| 2021-11-25 |      1133 |  18385 |      1065 |          691 |    103 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-11-24 |      1130 |  18370 |      1063 |          681 |    105 |             37372 |             36023 |             60503 |             60231 |             90081 |             92711 |             78318 |             87596 |             81300 |             99750 |             68189 |             85374 |             49990 |             55015 |             31993 |             35911 |           26508 |           52454 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           371 |           158 |          1157 |           519 |          2447 |          1490 |        5491 |        6487 |            NA |             NA |
| 2021-11-23 |      1126 |  18353 |      1062 |          649 |     93 |             37127 |             35783 |             60301 |             60037 |             89793 |             92509 |             78082 |             87344 |             81013 |             99392 |             67958 |             85097 |             49803 |             54800 |             31882 |             35774 |           26466 |           52380 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           371 |           158 |          1154 |           519 |          2445 |          1488 |        5488 |        6480 |            NA |             NA |
| 2021-11-22 |      1123 |  18339 |      1059 |          628 |     93 |             36996 |             35628 |             60183 |             59929 |             89602 |             92386 |             77913 |             87165 |             80812 |             99145 |             67779 |             84898 |             49667 |             54666 |             31783 |             35672 |           26429 |           52333 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           370 |           158 |          1153 |           518 |          2442 |          1484 |        5486 |        6478 |            NA |             NA |
| 2021-11-21 |      1122 |  18321 |      1059 |          597 |     89 |             36865 |             35518 |             60097 |             59843 |             89502 |             92309 |             77831 |             87079 |             80693 |             99014 |             67688 |             84804 |             49607 |             54595 |             31735 |             35633 |           26404 |           52296 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           367 |           158 |          1153 |           517 |          2441 |          1483 |        5482 |        6471 |            NA |             NA |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-11-24 | 4         |                  41.011 |     0.013 |       0.007 |     0.003 |       0.003 |     0.026 |       0.011 |     0.081 |       0.058 |     0.399 |       0.258 |     1.257 |       0.513 |     4.328 |       2.028 |     8.490 |       5.684 |   8.700 |     9.152 |
| 2021-11-23 | 3         |                  31.630 |     0.007 |       0.004 |     0.002 |       0.002 |     0.017 |       0.007 |     0.058 |       0.041 |     0.279 |       0.178 |     0.974 |       0.368 |     3.148 |       1.264 |     7.572 |       4.232 |   7.664 |     5.813 |
| 2021-11-22 | 1         |                  18.105 |     0.007 |       0.003 |     0.001 |       0.001 |     0.009 |       0.004 |     0.028 |       0.020 |     0.165 |       0.095 |     0.495 |       0.174 |     1.389 |       0.670 |     3.671 |       1.618 |   5.179 |     4.576 |
| 2021-11-21 | 3         |                  30.723 |     0.008 |       0.004 |     0.002 |       0.002 |     0.015 |       0.008 |     0.058 |       0.035 |     0.285 |       0.147 |     0.838 |       0.281 |     3.263 |       1.566 |     6.960 |       4.813 |   6.007 |     6.431 |
| 2021-11-20 | 2         |                  28.361 |     0.008 |       0.004 |     0.002 |       0.002 |     0.017 |       0.007 |     0.055 |       0.032 |     0.252 |       0.149 |     0.637 |       0.274 |     2.106 |       1.443 |     7.649 |       4.025 |   6.629 |     5.070 |
| 2021-11-19 | 2         |                  29.426 |     0.009 |       0.004 |     0.002 |       0.001 |     0.016 |       0.009 |     0.057 |       0.035 |     0.260 |       0.149 |     0.762 |       0.270 |     2.129 |       1.179 |     7.037 |       4.481 |   8.079 |     4.947 |
| 2021-11-18 | 3         |                  29.266 |     0.008 |       0.005 |     0.002 |       0.002 |     0.016 |       0.006 |     0.052 |       0.042 |     0.221 |       0.154 |     0.751 |       0.318 |     2.870 |       1.245 |     7.725 |       4.855 |   5.800 |     5.194 |
| 2021-11-17 | 2         |                  28.289 |     0.009 |       0.004 |     0.002 |       0.001 |     0.018 |       0.008 |     0.063 |       0.043 |     0.270 |       0.148 |     0.881 |       0.357 |     2.476 |       1.264 |     6.654 |       3.817 |   6.214 |     6.060 |
| 2021-11-16 | 2         |                  20.404 |     0.006 |       0.003 |     0.002 |       0.001 |     0.011 |       0.005 |     0.042 |       0.027 |     0.177 |       0.106 |     0.495 |       0.194 |     1.620 |       1.038 |     5.048 |       3.195 |   4.971 |     3.463 |
| 2021-11-15 | 1         |                  10.294 |     0.003 |       0.002 |     0.001 |       0.001 |     0.008 |       0.003 |     0.028 |       0.013 |     0.113 |       0.061 |     0.299 |       0.143 |     1.042 |       0.519 |     2.677 |       1.328 |   2.693 |     1.360 |
| 2021-11-14 | 1         |                  19.570 |     0.005 |       0.003 |     0.001 |       0.001 |     0.011 |       0.004 |     0.032 |       0.029 |     0.158 |       0.080 |     0.539 |       0.180 |     1.805 |       0.660 |     3.824 |       2.075 |   4.350 |     5.813 |
| 2021-11-13 | 2         |                  45.152 |     0.013 |       0.006 |     0.003 |       0.003 |     0.027 |       0.011 |     0.079 |       0.053 |     0.343 |       0.213 |     1.246 |       0.435 |     3.819 |       1.972 |    10.173 |       5.145 |  10.357 |    11.254 |
| 2021-11-11 | 2         |                  20.850 |     0.006 |       0.003 |     0.001 |       0.001 |     0.011 |       0.005 |     0.031 |       0.025 |     0.149 |       0.088 |     0.413 |       0.165 |     1.342 |       0.830 |     4.666 |       2.241 |   6.421 |     4.452 |
| 2021-11-10 | 1         |                  20.489 |     0.006 |       0.003 |     0.002 |       0.001 |     0.013 |       0.005 |     0.040 |       0.029 |     0.140 |       0.113 |     0.403 |       0.198 |     2.129 |       0.745 |     3.595 |       2.531 |   4.971 |     5.565 |
| 2021-11-09 | 1         |                  13.812 |     0.004 |       0.002 |     0.001 |       0.001 |     0.011 |       0.005 |     0.026 |       0.021 |     0.118 |       0.069 |     0.403 |       0.128 |     1.111 |       0.604 |     3.901 |       1.328 |   3.729 |     2.350 |
| 2021-11-08 | 1         |                  10.224 |     0.002 |       0.001 |     0.000 |       0.000 |     0.004 |       0.002 |     0.013 |       0.009 |     0.064 |       0.024 |     0.131 |       0.065 |     0.717 |       0.358 |     2.218 |       1.079 |   2.693 |     2.844 |
| 2021-11-07 | 1         |                  12.792 |     0.003 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.024 |       0.013 |     0.122 |       0.058 |     0.305 |       0.128 |     1.065 |       0.547 |     2.983 |       1.701 |   3.107 |     2.721 |
| 2021-11-06 | 1         |                  18.072 |     0.003 |       0.002 |     0.001 |       0.001 |     0.010 |       0.004 |     0.029 |       0.016 |     0.125 |       0.076 |     0.381 |       0.124 |     1.250 |       0.519 |     2.677 |       1.826 |   4.350 |     6.678 |
| 2021-11-05 | 1         |                  17.326 |     0.004 |       0.002 |     0.001 |       0.001 |     0.010 |       0.004 |     0.035 |       0.021 |     0.118 |       0.082 |     0.408 |       0.157 |     1.366 |       0.641 |     2.524 |       1.867 |   5.386 |     4.699 |
| 2021-11-04 | 2         |                  18.408 |     0.005 |       0.002 |     0.001 |       0.001 |     0.011 |       0.005 |     0.031 |       0.018 |     0.143 |       0.095 |     0.441 |       0.172 |     1.342 |       0.547 |     3.518 |       1.784 |   5.593 |     4.699 |
