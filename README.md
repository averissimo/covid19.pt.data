COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Wednesday, June 02, 2021)*

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
| 2021-06-02 |       724 |      1 |       458 |           -4 |      3 |         41640 |          47116 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-01 |       445 |      0 |       678 |          -15 |     -2 |         32055 |          38065 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-31 |       435 |      2 |       322 |           12 |     -2 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-30 |       445 |      0 |       256 |           27 |      5 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-29 |       609 |      0 |       510 |           -2 |     -3 |            NA |             NA |                14 |                14 |                38 |                49 |                52 |                43 |                60 |                45 |                56 |                61 |                39 |                39 |                33 |                17 |                 9 |                16 |               7 |              10 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |

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
| 2021-06-02 |    850262 |  17026 |    810271 |          264 |     53 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       3758516 |        1872849 |
| 2021-06-01 |    849538 |  17025 |    809813 |          268 |     50 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       3716876 |        1825733 |
| 2021-05-31 |    849093 |  17025 |    809135 |          283 |     52 |             24018 |             22906 |             39270 |             39651 |             57431 |             64327 |             56164 |             66036 |             62559 |             78412 |             55459 |             70301 |             41429 |             45168 |             26388 |             29627 |           23152 |           46428 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           332 |           132 |          1069 |           463 |          2286 |          1343 |        5131 |        6055 |       3684821 |        1787668 |
| 2021-05-30 |    848658 |  17023 |    808813 |          271 |     54 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-05-29 |    848213 |  17023 |    808557 |          244 |     49 |             23983 |             22891 |             39212 |             39594 |             57353 |             64233 |             56083 |             65974 |             62510 |             78338 |             55369 |             70253 |             41406 |             45135 |             26360 |             29604 |           23139 |           46407 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           332 |           132 |          1068 |           463 |          2286 |          1343 |        5131 |        6054 |            NA |             NA |
| 2021-05-28 |    847604 |  17023 |    808047 |          246 |     52 |             23969 |             22877 |             39174 |             39545 |             57301 |             64190 |             56023 |             65929 |             62454 |             78277 |             55330 |             70214 |             41373 |             45118 |             26351 |             29588 |           23132 |           46397 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           332 |           132 |          1068 |           463 |          2286 |          1343 |        5131 |        6054 |       3666216 |        1776366 |
| 2021-05-27 |    847006 |  17022 |    807532 |          233 |     53 |             23963 |             22874 |             39126 |             39502 |             57257 |             64140 |             55960 |             65883 |             62403 |             78217 |             55285 |             70155 |             41359 |             45098 |             26330 |             29581 |           23125 |           46388 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           332 |           132 |          1067 |           463 |          2286 |          1343 |        5131 |        6054 |       3550863 |        1615693 |
| 2021-05-26 |    846434 |  17022 |    807065 |          233 |     53 |             23950 |             22868 |             39096 |             39464 |             57205 |             64087 |             55905 |             65847 |             62360 |             78168 |             55251 |             70099 |             41326 |             45075 |             26325 |             29572 |           23116 |           46360 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           332 |           132 |          1067 |           463 |          2286 |          1343 |        5131 |        6054 |       3506470 |        1572242 |
| 2021-05-25 |    845840 |  17021 |    806648 |          237 |     52 |             23932 |             22852 |             39068 |             39428 |             57148 |             64031 |             55840 |             65806 |             62318 |             78121 |             55209 |             70043 |             41296 |             45053 |             26320 |             29561 |           23108 |           46347 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           332 |           132 |          1067 |           463 |          2286 |          1343 |        5131 |        6053 |       3456990 |        1552920 |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-05-31 | 435       |                  10.853 |     0.001 |       0.001 |     0.001 |       0.001 |     0.010 |       0.007 |     0.033 |       0.019 |     0.072 |       0.059 |     0.539 |       0.090 |     0.593 |       0.338 |     2.426 |       1.043 |   2.881 |     2.739 |
| 2021-05-29 | 609       |                   5.875 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.025 |       0.014 |     0.082 |       0.049 |     0.233 |       0.073 |     0.852 |       0.174 |     0.780 |       0.725 |   1.551 |     1.304 |
| 2021-05-28 | 598       |                   5.981 |     0.000 |       0.000 |     0.001 |       0.001 |     0.005 |       0.004 |     0.026 |       0.014 |     0.075 |       0.048 |     0.269 |       0.111 |     0.361 |       0.205 |     1.819 |       0.317 |   1.551 |     1.174 |
| 2021-05-27 | 572       |                   8.034 |     0.001 |       0.000 |     0.001 |       0.001 |     0.006 |       0.004 |     0.023 |       0.011 |     0.063 |       0.039 |     0.204 |       0.105 |     0.852 |       0.236 |     0.433 |       0.408 |   1.995 |     3.652 |
| 2021-05-26 | 594       |                   5.910 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.004 |     0.027 |       0.012 |     0.062 |       0.038 |     0.251 |       0.105 |     0.774 |       0.226 |     0.433 |       0.499 |   1.773 |     1.695 |
| 2021-05-25 | 375       |                   6.021 |     0.000 |       0.000 |     0.001 |       0.000 |     0.004 |       0.002 |     0.019 |       0.011 |     0.038 |       0.032 |     0.180 |       0.058 |     0.258 |       0.144 |     0.347 |       0.272 |   2.438 |     2.217 |
| 2021-05-24 | 241       |                   4.253 |     0.000 |       0.000 |     0.000 |       0.000 |     0.002 |       0.001 |     0.004 |       0.005 |     0.035 |       0.027 |     0.150 |       0.015 |     0.490 |       0.236 |     0.520 |       0.317 |   0.886 |     1.565 |
| 2021-05-23 | 413       |                   5.076 |     0.001 |       0.000 |     0.000 |       0.001 |     0.004 |       0.004 |     0.014 |       0.009 |     0.049 |       0.014 |     0.108 |       0.060 |     0.645 |       0.297 |     0.953 |       0.544 |   1.330 |     1.043 |
| 2021-05-22 | 523       |                   5.101 |     0.000 |       0.001 |     0.001 |       0.001 |     0.007 |       0.003 |     0.027 |       0.014 |     0.060 |       0.033 |     0.186 |       0.069 |     0.439 |       0.328 |     1.386 |       0.408 |   0.443 |     1.695 |
| 2021-05-21 | 559       |                   5.667 |     0.000 |       0.000 |     0.001 |       0.001 |     0.007 |       0.005 |     0.027 |       0.012 |     0.075 |       0.048 |     0.227 |       0.053 |     0.697 |       0.277 |     0.433 |       0.453 |   2.438 |     0.913 |
| 2021-05-20 | 451       |                   4.930 |     0.000 |       0.000 |     0.001 |       0.001 |     0.006 |       0.004 |     0.016 |       0.014 |     0.054 |       0.021 |     0.168 |       0.054 |     0.155 |       0.379 |     1.213 |       0.680 |   1.773 |     0.391 |
| 2021-05-19 | 511       |                  10.487 |     0.000 |       0.001 |     0.001 |       0.001 |     0.016 |       0.007 |     0.029 |       0.021 |     0.116 |       0.048 |     0.347 |       0.118 |     1.032 |       0.574 |     2.166 |       1.224 |   2.438 |     2.348 |
| 2021-05-17 | 199       |                   4.933 |     0.000 |       0.000 |     0.000 |       0.000 |     0.001 |       0.001 |     0.009 |       0.002 |     0.025 |       0.019 |     0.096 |       0.030 |     0.490 |       0.144 |     0.780 |       0.272 |   1.108 |     1.956 |
| 2021-05-16 | 334       |                  10.856 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.005 |     0.030 |       0.012 |     0.121 |       0.063 |     0.413 |       0.128 |     0.413 |       0.625 |     2.166 |       0.544 |   3.324 |     3.000 |
| 2021-05-14 | 450       |                   5.879 |     0.000 |       0.000 |     0.000 |       0.000 |     0.008 |       0.004 |     0.014 |       0.013 |     0.051 |       0.028 |     0.216 |       0.045 |     0.542 |       0.256 |     1.126 |       0.499 |   1.773 |     1.304 |
| 2021-05-13 | 436       |                   5.298 |     0.001 |       0.001 |     0.000 |       0.000 |     0.005 |       0.003 |     0.012 |       0.006 |     0.062 |       0.033 |     0.180 |       0.062 |     0.516 |       0.226 |     0.866 |       0.861 |   1.551 |     0.913 |
| 2021-05-12 | 485       |                   5.828 |     0.001 |       0.000 |     0.000 |       0.001 |     0.007 |       0.002 |     0.018 |       0.012 |     0.068 |       0.034 |     0.138 |       0.062 |     0.748 |       0.338 |     1.040 |       0.816 |   1.108 |     1.435 |
| 2021-05-11 | 268       |                1982.292 |     0.000 |       0.000 |     0.000 |       0.000 |     0.004 |       0.001 |     0.007 |       0.006 |     0.046 |       0.013 |     0.120 |       0.049 |     0.439 |       0.185 |  1287.326 |     691.423 |   1.108 |     1.565 |
| 2021-05-10 | 158       |                1989.089 |     0.000 |       0.000 |     0.000 |       0.001 |     0.005 |       0.002 |     0.016 |       0.008 |     0.068 |       0.035 |     0.120 |       0.066 |     0.645 |       0.431 |  1290.878 |     692.511 |   2.216 |     2.087 |
| 2021-05-08 | 406       |                  11.356 |     0.000 |       0.001 |     0.001 |       0.001 |     0.013 |       0.004 |     0.035 |       0.015 |     0.057 |       0.041 |     0.371 |       0.133 |     1.058 |       0.625 |     0.433 |       0.589 |   5.762 |     2.217 |
