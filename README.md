COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Tuesday, May 25, 2021)*

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
| 2021-05-25 |       375 |      3 |       669 |           -2 |     -5 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-24 |       241 |      1 |       287 |           19 |     -1 |            NA |             NA |                 4 |                -9 |                 9 |                18 |                19 |                11 |                10 |                16 |                24 |                33 |                25 |                 8 |                19 |                23 |                 6 |                 7 |               4 |              12 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |
| 2021-05-23 |       413 |      0 |       226 |           10 |     -1 |            NA |             NA |                14 |                 9 |                19 |                30 |                36 |                48 |                35 |                29 |                33 |                17 |                18 |                32 |                25 |                29 |                11 |                12 |               6 |               8 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |
| 2021-05-22 |       523 |      0 |       482 |            3 |      4 |            NA |             NA |                 8 |                15 |                23 |                25 |                57 |                43 |                65 |                46 |                41 |                41 |                31 |                37 |                17 |                32 |                16 |                 9 |               2 |              13 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |
| 2021-05-21 |       559 |      3 |       462 |           -1 |     -3 |            NA |             NA |                 2 |                -1 |                33 |                38 |                61 |                59 |                67 |                38 |                51 |                60 |                38 |                28 |                27 |                27 |                 5 |                10 |              11 |               7 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             2 |           0 |           0 |

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
| 2021-05-25 |    845840 |  17021 |    806648 |          237 |     52 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       3456990 |        1552920 |
| 2021-05-24 |    845465 |  17018 |    805979 |          239 |     57 |             23939 |             22846 |             39036 |             39412 |             57117 |             64007 |             55794 |             65770 |             62292 |             78081 |             55179 |             70012 |             41286 |             45039 |             26316 |             29555 |           23097 |           46330 |             1 |             1 |             1 |             1 |             7 |             5 |            22 |            20 |            92 |            62 |           332 |           132 |          1067 |           463 |          2286 |          1343 |        5131 |        6052 |            NA |             NA |
| 2021-05-23 |    845224 |  17017 |    805692 |          220 |     58 |             23935 |             22855 |             39027 |             39394 |             57098 |             63996 |             55784 |             65754 |             62268 |             78048 |             55154 |             70004 |             41267 |             45016 |             26310 |             29548 |           23093 |           46318 |             1 |             1 |             1 |             1 |             7 |             5 |            22 |            20 |            92 |            62 |           331 |           132 |          1067 |           463 |          2286 |          1343 |        5131 |        6052 |       3413468 |        1528496 |
| 2021-05-22 |    844811 |  17017 |    805466 |          210 |     59 |             23921 |             22846 |             39008 |             39364 |             57062 |             63948 |             55749 |             65725 |             62235 |             78031 |             55136 |             69972 |             41242 |             44987 |             26299 |             29536 |           23087 |           46310 |             1 |             1 |             1 |             1 |             7 |             5 |            22 |            20 |            92 |            62 |           331 |           132 |          1067 |           463 |          2286 |          1343 |        5131 |        6052 |            NA |             NA |
| 2021-05-21 |    844288 |  17017 |    804984 |          207 |     55 |             23913 |             22831 |             38985 |             39339 |             57005 |             63905 |             55684 |             65679 |             62194 |             77990 |             55105 |             69935 |             41225 |             44955 |             26283 |             29527 |           23085 |           46297 |             1 |             1 |             1 |             1 |             7 |             5 |            22 |            20 |            92 |            62 |           331 |           132 |          1067 |           463 |          2286 |          1343 |        5131 |        6052 |            NA |             NA |
| 2021-05-20 |    843729 |  17014 |    804522 |          208 |     58 |             23911 |             22832 |             38952 |             39301 |             56944 |             63846 |             55617 |             65641 |             62143 |             77930 |             55067 |             69907 |             41198 |             44928 |             26278 |             29517 |           23074 |           46290 |             1 |             1 |             1 |             1 |             7 |             5 |            22 |            20 |            92 |            62 |           331 |           132 |          1067 |           462 |          2286 |          1341 |        5131 |        6052 |       3396928 |        1516159 |
| 2021-05-19 |    843278 |  17013 |    804176 |          211 |     56 |             23903 |             22825 |             38924 |             39277 |             56891 |             63798 |             55579 |             65596 |             62106 |             77904 |             55039 |             69878 |             41192 |             44891 |             26264 |             29502 |           23066 |           46287 |             1 |             1 |             1 |             1 |             7 |             5 |            22 |            20 |            92 |            62 |           331 |           132 |          1067 |           462 |          2286 |          1341 |        5131 |        6051 |       3203905 |        1390715 |
| 2021-05-18 |    842767 |  17011 |    803759 |          233 |     66 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-05-17 |    842381 |  17009 |    803191 |          246 |     72 |             23893 |             22807 |             38888 |             39251 |             56757 |             63706 |             55509 |             65527 |             62027 |             77844 |             54981 |             69815 |             41152 |             44835 |             26239 |             29475 |           23055 |           46269 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           132 |          1067 |           461 |          2285 |          1341 |        5131 |        6051 |       3147970 |        1367154 |
| 2021-05-16 |    842182 |  17007 |    802900 |          245 |     76 |             23898 |             22807 |             38874 |             39240 |             56749 |             63692 |             55488 |             65532 |             62010 |             77820 |             54965 |             69799 |             41133 |             44821 |             26230 |             29469 |           23050 |           46254 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           132 |          1067 |           461 |          2284 |          1340 |        5131 |        6051 |       3100195 |        1346459 |
| 2021-05-15 |    841848 |  17006 |    802671 |          223 |     71 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       3056719 |        1195927 |
| 2021-05-14 |    841379 |  16999 |    802285 |          236 |     72 |             23883 |             22804 |             38829 |             39198 |             56677 |             63632 |             55415 |             65492 |             61928 |             77741 |             54896 |             69731 |             41117 |             44760 |             26205 |             29457 |           23035 |           46231 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           131 |          1065 |           461 |          2282 |          1340 |        5129 |        6050 |       3033070 |        1139735 |
| 2021-05-13 |    840929 |  16999 |    801961 |          244 |     70 |             23881 |             22795 |             38817 |             39186 |             56614 |             63580 |             55382 |             65450 |             61893 |             77706 |             54860 |             69707 |             41096 |             44735 |             26192 |             29446 |           23027 |           46221 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           131 |          1065 |           461 |          2282 |          1340 |        5129 |        6050 |       2980170 |        1120138 |
| 2021-05-12 |    840493 |  16998 |    801621 |          248 |     71 |             23867 |             22779 |             38801 |             39168 |             56570 |             63536 |             55353 |             65429 |             61851 |             77665 |             54830 |             69674 |             41076 |             44713 |             26182 |             29427 |           23020 |           46214 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           131 |          1065 |           461 |          2282 |          1339 |        5129 |        6050 |       2926888 |        1105021 |
| 2021-05-11 |    840008 |  16994 |    801306 |          257 |     71 |             23850 |             22774 |             38786 |             39146 |             56513 |             63505 |             55309 |             65389 |             61805 |             77623 |             54807 |             69641 |             41047 |             44680 |             26170 |             29409 |           23015 |           46203 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           131 |          1064 |           461 |          2282 |          1338 |        5128 |        6049 |       2873644 |        1088954 |
| 2021-05-10 |    839740 |  16993 |    800645 |          277 |     73 |             23845 |             22772 |             38786 |             39129 |             56484 |             63490 |             55292 |             65369 |             61774 |             77607 |             54787 |             69615 |             41030 |             44662 |             41030 |             44662 |           23010 |           46191 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           131 |          1064 |           461 |          2282 |          1338 |        5128 |        6048 |       2814783 |        1069269 |
| 2021-05-09 |    839582 |  16992 |    800277 |          268 |     74 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-05-08 |    839258 |  16991 |    800007 |          260 |     74 |             23836 |             22761 |             38772 |             39105 |             56439 |             63459 |             55253 |             65344 |             61728 |             77564 |             54767 |             69580 |             41005 |             44620 |             26129 |             29385 |           23000 |           46175 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           131 |          1063 |           461 |          2282 |          1337 |        5128 |        6048 |       2708964 |        1053691 |
| 2021-05-07 |    838852 |  16989 |    799442 |          280 |     75 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2661532 |         996873 |
| 2021-05-06 |    838475 |  16988 |    798952 |          283 |     77 |             23832 |             22747 |             38740 |             39065 |             56336 |             63404 |             55167 |             65295 |             61689 |             77513 |             54705 |             69509 |             40964 |             44559 |             26124 |             29372 |           22974 |           46158 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           131 |          1062 |           460 |          2282 |          1337 |        5127 |        6048 |       2611805 |         945576 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-05-24 | 241       |                   4.261 |     0.000 |       0.000 |     0.000 |       0.000 |     0.002 |       0.001 |     0.004 |       0.005 |     0.035 |       0.026 |     0.150 |       0.015 |     0.491 |       0.236 |     0.521 |       0.318 |   0.889 |     1.568 |
| 2021-05-23 | 413       |                   5.086 |     0.001 |       0.000 |     0.000 |       0.001 |     0.004 |       0.004 |     0.014 |       0.009 |     0.049 |       0.013 |     0.108 |       0.060 |     0.646 |       0.298 |     0.956 |       0.545 |   1.333 |     1.045 |
| 2021-05-22 | 523       |                   5.113 |     0.000 |       0.001 |     0.001 |       0.001 |     0.007 |       0.003 |     0.026 |       0.014 |     0.061 |       0.033 |     0.187 |       0.070 |     0.439 |       0.329 |     1.390 |       0.409 |   0.444 |     1.698 |
| 2021-05-21 | 559       |                   5.679 |     0.000 |       0.000 |     0.001 |       0.001 |     0.007 |       0.005 |     0.026 |       0.012 |     0.075 |       0.048 |     0.229 |       0.053 |     0.698 |       0.278 |     0.434 |       0.454 |   2.444 |     0.914 |
| 2021-05-20 | 451       |                   4.942 |     0.000 |       0.000 |     0.001 |       0.001 |     0.006 |       0.004 |     0.015 |       0.014 |     0.055 |       0.021 |     0.168 |       0.055 |     0.155 |       0.380 |     1.216 |       0.682 |   1.777 |     0.392 |
| 2021-05-19 | 511       |                  10.512 |     0.000 |       0.001 |     0.001 |       0.001 |     0.016 |       0.007 |     0.028 |       0.021 |     0.117 |       0.048 |     0.349 |       0.119 |     1.034 |       0.576 |     2.172 |       1.227 |   2.444 |     2.351 |
| 2021-05-17 | 199       |                   4.942 |     0.000 |       0.000 |     0.000 |       0.000 |     0.001 |       0.001 |     0.008 |       0.002 |     0.025 |       0.019 |     0.096 |       0.030 |     0.491 |       0.144 |     0.782 |       0.273 |   1.111 |     1.959 |
| 2021-05-16 | 334       |                  10.879 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.005 |     0.029 |       0.012 |     0.121 |       0.063 |     0.415 |       0.128 |     0.414 |       0.627 |     2.172 |       0.545 |   3.332 |     3.004 |
| 2021-05-14 | 450       |                   5.892 |     0.000 |       0.000 |     0.000 |       0.000 |     0.008 |       0.004 |     0.013 |       0.013 |     0.052 |       0.028 |     0.217 |       0.045 |     0.543 |       0.257 |     1.129 |       0.500 |   1.777 |     1.306 |
| 2021-05-13 | 436       |                   5.309 |     0.001 |       0.001 |     0.000 |       0.000 |     0.005 |       0.003 |     0.011 |       0.006 |     0.062 |       0.033 |     0.181 |       0.062 |     0.517 |       0.226 |     0.869 |       0.863 |   1.555 |     0.914 |
| 2021-05-12 | 485       |                   5.837 |     0.001 |       0.000 |     0.000 |       0.001 |     0.007 |       0.002 |     0.017 |       0.012 |     0.068 |       0.033 |     0.138 |       0.062 |     0.749 |       0.339 |     1.042 |       0.818 |   1.111 |     1.437 |
| 2021-05-11 | 268       |                1987.504 |     0.000 |       0.000 |     0.000 |       0.000 |     0.004 |       0.001 |     0.007 |       0.006 |     0.046 |       0.013 |     0.120 |       0.049 |     0.439 |       0.185 |  1290.848 |     693.107 |   1.111 |     1.568 |
| 2021-05-10 | 158       |                1994.318 |     0.000 |       0.000 |     0.000 |       0.001 |     0.006 |       0.002 |     0.015 |       0.008 |     0.068 |       0.034 |     0.120 |       0.066 |     0.646 |       0.432 |  1294.410 |     694.198 |   2.222 |     2.090 |
| 2021-05-08 | 406       |                  11.383 |     0.000 |       0.001 |     0.001 |       0.001 |     0.013 |       0.004 |     0.034 |       0.015 |     0.058 |       0.040 |     0.373 |       0.134 |     1.060 |       0.627 |     0.434 |       0.591 |   5.776 |     2.221 |
| 2021-05-06 | 373       |                   6.160 |     0.001 |       0.000 |     0.000 |       0.000 |     0.004 |       0.003 |     0.014 |       0.001 |     0.068 |       0.021 |     0.102 |       0.062 |     0.465 |       0.308 |     0.782 |       0.409 |   2.222 |     1.698 |
| 2021-05-05 | 387       |                  13.550 |     0.001 |       0.000 |     0.001 |       0.001 |     0.011 |       0.004 |     0.022 |       0.018 |     0.123 |       0.037 |     0.331 |       0.090 |     1.163 |       1.028 |     2.606 |       0.863 |   3.332 |     3.919 |
| 2021-05-02 | 330       |                  11.741 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.006 |     0.022 |       0.014 |     0.089 |       0.051 |     0.367 |       0.119 |     0.724 |       0.545 |     2.259 |       0.636 |   3.110 |     3.788 |
| 2021-04-30 | 460       |                   5.511 |     0.001 |       0.000 |     0.001 |       0.000 |     0.005 |       0.003 |     0.021 |       0.006 |     0.065 |       0.038 |     0.114 |       0.064 |     0.724 |       0.247 |     1.390 |       0.545 |   1.111 |     1.176 |
| 2021-04-29 | 470       |                   6.313 |     0.001 |       0.000 |     0.001 |       0.001 |     0.004 |       0.004 |     0.017 |       0.006 |     0.035 |       0.025 |     0.144 |       0.062 |     0.775 |       0.350 |     1.129 |       0.545 |   1.777 |     1.437 |
| 2021-04-28 | 572       |                  11.006 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.022 |       0.014 |     0.069 |       0.037 |     0.138 |       0.051 |     0.517 |       0.391 |     1.564 |       0.364 |   3.777 |     4.049 |
