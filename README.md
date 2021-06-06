COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, June 06, 2021)*

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
| 2021-06-06 |       612 |      2 |       257 |            0 |      1 |         35830 |          45100 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-05 |       573 |      3 |       681 |           -2 |     -2 |         49047 |          41626 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-04 |       430 |      0 |       300 |           13 |      1 |         41859 |          29785 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-03 |       769 |      3 |       388 |          -10 |     -1 |         53190 |          36291 |                18 |                21 |                56 |                58 |                79 |                69 |                80 |                48 |                64 |                74 |                43 |                51 |                31 |                23 |                15 |                21 |               7 |               8 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |           0 |           0 |
| 2021-06-02 |       724 |      1 |       458 |           -4 |      3 |         41640 |          47116 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |

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
| 2021-06-06 |    852646 |  17034 |    811897 |          265 |     52 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       3938442 |        2025651 |
| 2021-06-05 |    852034 |  17032 |    811640 |          265 |     51 |             24097 |             22967 |             39460 |             39849 |             57723 |             64586 |             56444 |             66275 |             62792 |             78654 |             55665 |             70527 |             41528 |             45290 |             26446 |             29685 |           23185 |           46481 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           132 |          1069 |           464 |          2286 |          1346 |        5132 |        6055 |       3902612 |        1980551 |
| 2021-06-04 |    851461 |  17029 |    810959 |          267 |     53 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       3853565 |        1938925 |
| 2021-06-03 |    851031 |  17029 |    810659 |          254 |     52 |             24062 |             22952 |             39407 |             39794 |             57618 |             64497 |             56351 |             66193 |             62694 |             78582 |             55593 |             70470 |             41495 |             45235 |             26413 |             29661 |           23173 |           46463 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           132 |          1069 |           464 |          2286 |          1344 |        5131 |        6055 |       3811706 |        1909140 |
| 2021-06-02 |    850262 |  17026 |    810271 |          264 |     53 |             24044 |             22931 |             39351 |             39736 |             57539 |             64428 |             56271 |             66145 |             62630 |             78508 |             55550 |             70419 |             41464 |             45212 |             26398 |             29640 |           23166 |           46455 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           333 |           132 |          1069 |           463 |          2286 |          1343 |        5131 |        6055 |       3758516 |        1872849 |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-06-05 | 573       |                  11.183 |     0.001 |       0.001 |     0.001 |       0.001 |     0.013 |       0.007 |     0.040 |       0.025 |     0.144 |       0.058 |     0.431 |       0.107 |     0.849 |       0.563 |     2.853 |       1.088 |   2.656 |     2.345 |
| 2021-06-03 | 769       |                   6.446 |     0.001 |       0.001 |     0.001 |       0.001 |     0.010 |       0.005 |     0.034 |       0.014 |     0.094 |       0.059 |     0.257 |       0.095 |     0.798 |       0.236 |     1.297 |       0.952 |   1.549 |     1.042 |
| 2021-06-02 | 724       |                  10.472 |     0.001 |       0.001 |     0.002 |       0.002 |     0.013 |       0.008 |     0.045 |       0.033 |     0.104 |       0.077 |     0.544 |       0.221 |     0.901 |       0.451 |     0.864 |       0.589 |   3.099 |     3.517 |
| 2021-05-31 | 435       |                  10.839 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.007 |     0.034 |       0.019 |     0.072 |       0.059 |     0.538 |       0.090 |     0.592 |       0.338 |     2.420 |       1.043 |   2.878 |     2.736 |
| 2021-05-29 | 609       |                   5.868 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.026 |       0.014 |     0.082 |       0.049 |     0.233 |       0.073 |     0.849 |       0.174 |     0.778 |       0.725 |   1.549 |     1.303 |
| 2021-05-28 | 598       |                   5.972 |     0.000 |       0.000 |     0.001 |       0.001 |     0.005 |       0.004 |     0.027 |       0.014 |     0.075 |       0.048 |     0.269 |       0.110 |     0.360 |       0.205 |     1.815 |       0.317 |   1.549 |     1.172 |
| 2021-05-27 | 572       |                   8.022 |     0.001 |       0.000 |     0.001 |       0.001 |     0.006 |       0.004 |     0.023 |       0.011 |     0.063 |       0.039 |     0.203 |       0.105 |     0.849 |       0.236 |     0.432 |       0.408 |   1.992 |     3.648 |
| 2021-05-26 | 594       |                   5.903 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.004 |     0.028 |       0.012 |     0.062 |       0.038 |     0.251 |       0.105 |     0.772 |       0.225 |     0.432 |       0.499 |   1.771 |     1.693 |
| 2021-05-25 | 375       |                   6.013 |     0.000 |       0.000 |     0.001 |       0.000 |     0.004 |       0.002 |     0.020 |       0.011 |     0.038 |       0.032 |     0.179 |       0.058 |     0.257 |       0.143 |     0.346 |       0.272 |   2.435 |     2.215 |
| 2021-05-24 | 241       |                   4.247 |     0.000 |       0.000 |     0.000 |       0.000 |     0.002 |       0.001 |     0.004 |       0.005 |     0.035 |       0.026 |     0.150 |       0.015 |     0.489 |       0.236 |     0.519 |       0.317 |   0.885 |     1.563 |
| 2021-05-23 | 413       |                   5.070 |     0.001 |       0.000 |     0.000 |       0.001 |     0.004 |       0.004 |     0.015 |       0.009 |     0.048 |       0.014 |     0.108 |       0.060 |     0.644 |       0.297 |     0.951 |       0.544 |   1.328 |     1.042 |
| 2021-05-22 | 523       |                   5.095 |     0.000 |       0.001 |     0.001 |       0.001 |     0.007 |       0.003 |     0.028 |       0.014 |     0.060 |       0.033 |     0.185 |       0.069 |     0.438 |       0.328 |     1.383 |       0.408 |   0.443 |     1.693 |
| 2021-05-21 | 559       |                   5.659 |     0.000 |       0.000 |     0.001 |       0.001 |     0.007 |       0.005 |     0.028 |       0.011 |     0.075 |       0.048 |     0.227 |       0.052 |     0.695 |       0.277 |     0.432 |       0.453 |   2.435 |     0.912 |
| 2021-05-20 | 451       |                   4.924 |     0.000 |       0.000 |     0.001 |       0.001 |     0.006 |       0.004 |     0.016 |       0.014 |     0.054 |       0.021 |     0.168 |       0.054 |     0.154 |       0.379 |     1.210 |       0.680 |   1.771 |     0.391 |
| 2021-05-19 | 511       |                  10.475 |     0.000 |       0.001 |     0.001 |       0.001 |     0.016 |       0.007 |     0.030 |       0.021 |     0.116 |       0.048 |     0.347 |       0.118 |     1.030 |       0.574 |     2.161 |       1.224 |   2.435 |     2.345 |
| 2021-05-17 | 199       |                   4.926 |     0.000 |       0.000 |     0.000 |       0.000 |     0.001 |       0.001 |     0.009 |       0.002 |     0.025 |       0.019 |     0.096 |       0.030 |     0.489 |       0.143 |     0.778 |       0.272 |   1.107 |     1.954 |
| 2021-05-16 | 334       |                  10.841 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.005 |     0.031 |       0.012 |     0.120 |       0.063 |     0.413 |       0.127 |     0.412 |       0.625 |     2.161 |       0.544 |   3.320 |     2.996 |
| 2021-05-14 | 450       |                   5.872 |     0.000 |       0.000 |     0.000 |       0.000 |     0.008 |       0.004 |     0.014 |       0.013 |     0.051 |       0.028 |     0.215 |       0.045 |     0.541 |       0.256 |     1.124 |       0.499 |   1.771 |     1.303 |
| 2021-05-13 | 436       |                   5.291 |     0.001 |       0.001 |     0.000 |       0.000 |     0.005 |       0.003 |     0.012 |       0.006 |     0.062 |       0.033 |     0.179 |       0.062 |     0.515 |       0.225 |     0.864 |       0.862 |   1.549 |     0.912 |
| 2021-05-12 | 485       |                   5.821 |     0.001 |       0.000 |     0.000 |       0.001 |     0.007 |       0.002 |     0.019 |       0.012 |     0.067 |       0.034 |     0.138 |       0.062 |     0.747 |       0.338 |     1.037 |       0.816 |   1.107 |     1.433 |
