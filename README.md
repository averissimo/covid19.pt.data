COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, May 17, 2021)*

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
| 2021-05-17 |       199 |      2 |       291 |            1 |     -4 |            NA |             NA |                -5 |                 0 |                14 |                11 |                 8 |                14 |                21 |                -5 |                17 |                24 |                16 |                16 |                19 |                14 |                 9 |                 6 |               5 |              15 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |           0 |           0 |
| 2021-05-16 |       334 |      1 |       229 |           22 |      5 |         43476 |         150532 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-15 |       469 |      7 |       386 |          -13 |     -1 |         23649 |          56192 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-14 |       450 |      0 |       324 |           -8 |      2 |         52900 |          19597 |                 2 |                 9 |                12 |                12 |                63 |                52 |                33 |                42 |                35 |                35 |                36 |                24 |                21 |                25 |                13 |                11 |               8 |              10 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |
| 2021-05-13 |       436 |      1 |       340 |           -4 |     -1 |         53282 |          15117 |                14 |                16 |                16 |                18 |                44 |                44 |                29 |                21 |                42 |                41 |                30 |                33 |                20 |                22 |                10 |                19 |               7 |               7 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |           0 |           0 |

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
| 2021-05-17 |    842381 |  17009 |    803191 |          246 |     72 |             23893 |             22807 |             38888 |             39251 |             56757 |             63706 |             55509 |             65527 |             62027 |             77844 |             54981 |             69815 |             41152 |             44835 |             26239 |             29475 |           23055 |           46269 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           132 |          1067 |           461 |          2285 |          1341 |        5131 |        6051 |            NA |             NA |
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
| 2021-04-30 |    836493 |  16974 |    795838 |          324 |     89 |             23775 |             22723 |             38657 |             38961 |             56159 |             63229 |             55020 |             65185 |             61500 |             77375 |             54572 |             69365 |             40873 |             44376 |             26059 |             29330 |           22935 |           46086 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1059 |           460 |          2279 |          1335 |        5124 |        6046 |       2321673 |         844080 |
| 2021-04-29 |    836033 |  16974 |    795326 |          324 |     89 |             23756 |             22712 |             38625 |             38958 |             56119 |             63186 |             54968 |             65165 |             61456 |             77327 |             54553 |             69331 |             40845 |             44352 |             26043 |             29318 |           22930 |           46077 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1059 |           460 |          2279 |          1335 |        5124 |        6046 |       2259097 |         825849 |
| 2021-04-28 |    835563 |  16973 |    794781 |          332 |     88 |             23744 |             22702 |             38585 |             38923 |             56083 |             63135 |             54926 |             65144 |             61432 |             77295 |             54529 |             69298 |             40815 |             44318 |             26030 |             29306 |           22922 |           46066 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1059 |           460 |          2279 |          1335 |        5124 |        6045 |       2205184 |         806991 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-05-17 | 199       |                   4.951 |     0.000 |       0.000 |     0.000 |       0.000 |     0.001 |       0.001 |     0.008 |       0.002 |     0.025 |       0.019 |     0.096 |       0.030 |     0.493 |       0.144 |     0.784 |       0.273 |   1.113 |     1.962 |
| 2021-05-16 | 334       |                  10.895 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.005 |     0.028 |       0.012 |     0.120 |       0.063 |     0.415 |       0.129 |     0.415 |       0.627 |     2.177 |       0.546 |   3.338 |     3.008 |
| 2021-05-14 | 450       |                   5.899 |     0.000 |       0.000 |     0.000 |       0.000 |     0.008 |       0.004 |     0.012 |       0.013 |     0.051 |       0.028 |     0.217 |       0.045 |     0.544 |       0.257 |     1.132 |       0.500 |   1.780 |     1.308 |
| 2021-05-13 | 436       |                   5.318 |     0.001 |       0.001 |     0.000 |       0.000 |     0.005 |       0.003 |     0.011 |       0.006 |     0.062 |       0.033 |     0.181 |       0.062 |     0.519 |       0.226 |     0.871 |       0.864 |   1.558 |     0.915 |
| 2021-05-12 | 485       |                   5.847 |     0.001 |       0.000 |     0.000 |       0.001 |     0.007 |       0.002 |     0.017 |       0.012 |     0.067 |       0.033 |     0.138 |       0.062 |     0.752 |       0.339 |     1.045 |       0.819 |   1.113 |     1.439 |
| 2021-05-11 | 268       |                1991.575 |     0.000 |       0.000 |     0.000 |       0.000 |     0.004 |       0.001 |     0.006 |       0.006 |     0.045 |       0.013 |     0.120 |       0.049 |     0.441 |       0.185 |  1294.070 |     693.953 |   1.113 |     1.569 |
| 2021-05-10 | 158       |                1998.402 |     0.000 |       0.000 |     0.000 |       0.001 |     0.006 |       0.002 |     0.015 |       0.008 |     0.067 |       0.034 |     0.120 |       0.066 |     0.648 |       0.432 |  1297.640 |     695.045 |   2.226 |     2.092 |
| 2021-05-08 | 406       |                  11.398 |     0.000 |       0.001 |     0.001 |       0.001 |     0.013 |       0.004 |     0.033 |       0.015 |     0.057 |       0.041 |     0.373 |       0.134 |     1.063 |       0.627 |     0.435 |       0.591 |   5.786 |     2.223 |
| 2021-05-06 | 373       |                   6.170 |     0.001 |       0.000 |     0.000 |       0.000 |     0.004 |       0.003 |     0.014 |       0.001 |     0.067 |       0.022 |     0.102 |       0.062 |     0.467 |       0.308 |     0.784 |       0.409 |   2.226 |     1.700 |
| 2021-05-05 | 387       |                  13.571 |     0.001 |       0.000 |     0.001 |       0.001 |     0.011 |       0.004 |     0.021 |       0.018 |     0.122 |       0.037 |     0.331 |       0.091 |     1.167 |       1.028 |     2.613 |       0.864 |   3.338 |     3.923 |
| 2021-05-02 | 330       |                  11.758 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.006 |     0.021 |       0.014 |     0.088 |       0.051 |     0.367 |       0.119 |     0.726 |       0.545 |     2.264 |       0.637 |   3.116 |     3.793 |
| 2021-04-30 | 460       |                   5.519 |     0.001 |       0.000 |     0.001 |       0.000 |     0.005 |       0.003 |     0.020 |       0.006 |     0.065 |       0.038 |     0.114 |       0.064 |     0.726 |       0.247 |     1.393 |       0.546 |   1.113 |     1.177 |
| 2021-04-29 | 470       |                   6.324 |     0.001 |       0.000 |     0.001 |       0.001 |     0.004 |       0.004 |     0.016 |       0.006 |     0.035 |       0.025 |     0.144 |       0.062 |     0.778 |       0.350 |     1.132 |       0.546 |   1.780 |     1.439 |
| 2021-04-28 | 572       |                  11.022 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.021 |       0.014 |     0.069 |       0.037 |     0.138 |       0.051 |     0.519 |       0.391 |     1.568 |       0.364 |   3.783 |     4.054 |
| 2021-04-27 | 353       |                   8.046 |     0.000 |       0.000 |     0.000 |       0.001 |     0.003 |       0.001 |     0.009 |       0.012 |     0.041 |       0.018 |     0.138 |       0.047 |     0.622 |       0.278 |     0.610 |       0.273 |   3.116 |     2.877 |
| 2021-04-26 | 196       |                  11.381 |     0.001 |       0.001 |     0.001 |       0.001 |     0.004 |       0.003 |     0.011 |       0.018 |     0.081 |       0.037 |     0.187 |       0.081 |     0.985 |       0.514 |     1.829 |       1.228 |   3.783 |     2.616 |
| 2021-04-24 | 567       |                  15.429 |     0.002 |       0.001 |     0.003 |       0.003 |     0.007 |       0.006 |     0.032 |       0.016 |     0.097 |       0.061 |     0.367 |       0.176 |     1.348 |       0.658 |     2.525 |       1.137 |   4.674 |     4.316 |
| 2021-04-22 | 636       |                  13.748 |     0.003 |       0.002 |     0.002 |       0.003 |     0.011 |       0.007 |     0.033 |       0.032 |     0.150 |       0.072 |     0.391 |       0.178 |     1.530 |       0.627 |     1.829 |       1.274 |   5.119 |     2.485 |
| 2021-04-20 | 424       |                   6.779 |     0.001 |       0.000 |     0.001 |       0.001 |     0.005 |       0.002 |     0.012 |       0.013 |     0.053 |       0.031 |     0.151 |       0.023 |     0.363 |       0.247 |     0.523 |       0.682 |   2.448 |     2.223 |
| 2021-04-19 | 220       |                   5.297 |     0.000 |       0.000 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.007 |     0.035 |       0.019 |     0.054 |       0.040 |     0.441 |       0.144 |     0.871 |       0.455 |   1.780 |     1.439 |
