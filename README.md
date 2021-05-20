COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Thursday, May 20, 2021)*

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
| 2021-05-20 |       451 |      1 |       346 |           -3 |      2 |         52747 |          26549 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-19 |       511 |      2 |       417 |          -22 |    -10 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-18 |       386 |      2 |       568 |          -13 |     -6 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-17 |       199 |      2 |       291 |            1 |     -4 |         47775 |          20695 |                -5 |                 0 |                14 |                11 |                 8 |                14 |                21 |                -5 |                17 |                24 |                16 |                16 |                19 |                14 |                 9 |                 6 |               5 |              15 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |           0 |           0 |
| 2021-05-16 |       334 |      1 |       229 |           22 |      5 |         43476 |         150532 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |

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
| 2021-05-20 |    843729 |  17014 |    804522 |          208 |     58 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       3256652 |        1417264 |
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
| 2021-05-05 |    838102 |  16983 |    798414 |          297 |     83 |             23818 |             22743 |             38733 |             39047 |             56304 |             63360 |             55131 |             65291 |             61643 |             77486 |             54688 |             69476 |             40946 |             44529 |             26115 |             29363 |           22964 |           46145 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           131 |          1061 |           460 |          2281 |          1336 |        5126 |        6047 |       2563248 |         903204 |
| 2021-05-04 |    837715 |  16981 |    797901 |          296 |     87 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2503050 |         886295 |
| 2021-05-03 |    837457 |  16977 |    797124 |          322 |     90 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2451606 |         872679 |
| 2021-05-02 |    837277 |  16977 |    796721 |          311 |     85 |             23802 |             22735 |             38705 |             39010 |             56213 |             63305 |             55076 |             65232 |             61560 |             77439 |             54633 |             69428 |             40901 |             44429 |             26085 |             29344 |           22949 |           46115 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1061 |           460 |          2279 |          1336 |        5124 |        6046 |            NA |             NA |
| 2021-05-01 |    836947 |  16976 |    796477 |          302 |     84 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2433008 |         870552 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-05-19 | 511       |                  10.523 |     0.000 |       0.001 |     0.001 |       0.001 |     0.016 |       0.007 |     0.028 |       0.021 |     0.117 |       0.048 |     0.349 |       0.119 |     1.036 |       0.576 |     2.176 |       1.227 |   2.447 |     2.353 |
| 2021-05-17 | 199       |                   4.947 |     0.000 |       0.000 |     0.000 |       0.000 |     0.001 |       0.001 |     0.008 |       0.002 |     0.025 |       0.019 |     0.096 |       0.030 |     0.492 |       0.144 |     0.783 |       0.273 |   1.112 |     1.961 |
| 2021-05-16 | 334       |                  10.892 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.005 |     0.029 |       0.012 |     0.121 |       0.063 |     0.415 |       0.128 |     0.414 |       0.628 |     2.176 |       0.545 |   3.337 |     3.007 |
| 2021-05-14 | 450       |                   5.900 |     0.000 |       0.000 |     0.000 |       0.000 |     0.008 |       0.004 |     0.013 |       0.013 |     0.052 |       0.028 |     0.217 |       0.045 |     0.544 |       0.257 |     1.132 |       0.500 |   1.780 |     1.307 |
| 2021-05-13 | 436       |                   5.314 |     0.001 |       0.001 |     0.000 |       0.000 |     0.005 |       0.003 |     0.011 |       0.006 |     0.062 |       0.033 |     0.180 |       0.062 |     0.518 |       0.226 |     0.870 |       0.864 |   1.557 |     0.915 |
| 2021-05-12 | 485       |                   5.844 |     0.001 |       0.000 |     0.000 |       0.001 |     0.007 |       0.002 |     0.017 |       0.012 |     0.068 |       0.033 |     0.138 |       0.062 |     0.751 |       0.340 |     1.044 |       0.818 |   1.112 |     1.438 |
| 2021-05-11 | 268       |                1990.274 |     0.000 |       0.000 |     0.000 |       0.000 |     0.004 |       0.001 |     0.007 |       0.006 |     0.046 |       0.013 |     0.120 |       0.049 |     0.440 |       0.185 |  1293.404 |     693.318 |   1.112 |     1.569 |
| 2021-05-10 | 158       |                1997.098 |     0.000 |       0.000 |     0.000 |       0.001 |     0.006 |       0.002 |     0.015 |       0.008 |     0.068 |       0.034 |     0.120 |       0.066 |     0.648 |       0.432 |  1296.973 |     694.409 |   2.224 |     2.092 |
| 2021-05-08 | 406       |                  11.397 |     0.000 |       0.001 |     0.001 |       0.001 |     0.013 |       0.004 |     0.034 |       0.015 |     0.058 |       0.041 |     0.373 |       0.134 |     1.062 |       0.628 |     0.435 |       0.591 |   5.784 |     2.222 |
| 2021-05-06 | 373       |                   6.166 |     0.001 |       0.000 |     0.000 |       0.000 |     0.004 |       0.003 |     0.014 |       0.001 |     0.068 |       0.021 |     0.102 |       0.062 |     0.466 |       0.309 |     0.783 |       0.409 |   2.224 |     1.699 |
| 2021-05-05 | 387       |                  13.569 |     0.001 |       0.000 |     0.001 |       0.001 |     0.011 |       0.004 |     0.022 |       0.018 |     0.123 |       0.037 |     0.331 |       0.091 |     1.166 |       1.029 |     2.611 |       0.864 |   3.337 |     3.922 |
| 2021-05-02 | 330       |                  11.753 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.006 |     0.022 |       0.014 |     0.089 |       0.051 |     0.367 |       0.119 |     0.725 |       0.545 |     2.263 |       0.636 |   3.114 |     3.791 |
| 2021-04-30 | 460       |                   5.517 |     0.001 |       0.000 |     0.001 |       0.000 |     0.005 |       0.003 |     0.021 |       0.006 |     0.065 |       0.038 |     0.114 |       0.064 |     0.725 |       0.247 |     1.393 |       0.545 |   1.112 |     1.177 |
| 2021-04-29 | 470       |                   6.323 |     0.001 |       0.000 |     0.001 |       0.001 |     0.004 |       0.004 |     0.017 |       0.006 |     0.036 |       0.025 |     0.144 |       0.062 |     0.777 |       0.350 |     1.132 |       0.545 |   1.780 |     1.438 |
| 2021-04-28 | 572       |                  11.020 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.022 |       0.014 |     0.070 |       0.037 |     0.138 |       0.051 |     0.518 |       0.391 |     1.567 |       0.364 |   3.782 |     4.053 |
| 2021-04-27 | 353       |                   8.043 |     0.000 |       0.000 |     0.000 |       0.001 |     0.003 |       0.001 |     0.010 |       0.012 |     0.041 |       0.018 |     0.138 |       0.047 |     0.622 |       0.278 |     0.609 |       0.273 |   3.114 |     2.876 |
| 2021-04-26 | 196       |                  11.376 |     0.001 |       0.001 |     0.001 |       0.001 |     0.004 |       0.003 |     0.011 |       0.018 |     0.081 |       0.037 |     0.186 |       0.081 |     0.984 |       0.515 |     1.828 |       1.227 |   3.782 |     2.615 |
| 2021-04-24 | 567       |                  15.423 |     0.002 |       0.001 |     0.003 |       0.003 |     0.007 |       0.006 |     0.033 |       0.016 |     0.098 |       0.060 |     0.367 |       0.176 |     1.347 |       0.659 |     2.524 |       1.136 |   4.671 |     4.314 |
| 2021-04-22 | 636       |                  13.743 |     0.003 |       0.002 |     0.002 |       0.003 |     0.011 |       0.007 |     0.034 |       0.032 |     0.151 |       0.072 |     0.391 |       0.178 |     1.528 |       0.628 |     1.828 |       1.273 |   5.116 |     2.484 |
| 2021-04-20 | 424       |                   6.776 |     0.001 |       0.000 |     0.001 |       0.001 |     0.005 |       0.002 |     0.013 |       0.013 |     0.053 |       0.031 |     0.150 |       0.023 |     0.363 |       0.247 |     0.522 |       0.682 |   2.447 |     2.222 |
