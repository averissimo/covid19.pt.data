COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, May 10, 2021)*

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
| 2021-05-10 |        NA |     NA |        NA |           NA |     NA |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-09 |       324 |      1 |       270 |            8 |      0 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-08 |       406 |      2 |       565 |          -20 |     -1 |         47432 |          56818 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-07 |       377 |      1 |       490 |           -3 |     -2 |         49727 |          51297 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-05-06 |       373 |      5 |       538 |          -14 |     -6 |         48557 |          42372 |                14 |                 4 |                 7 |                18 |                32 |                44 |                36 |                 4 |                46 |                27 |                17 |                33 |                18 |                30 |                 9 |                 9 |              10 |              13 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             1 |           1 |           1 |

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
| 2021-05-10 |        NA |     NA |        NA |           NA |     NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2814783 |        1069269 |
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
| 2021-04-27 |    834991 |  16970 |    794205 |          346 |     86 |             23724 |             22690 |             38545 |             38886 |             56036 |             63099 |             54870 |             65099 |             61385 |             77249 |             54506 |             69271 |             40795 |             44280 |             26012 |             29298 |           22905 |           46035 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1059 |           460 |          2278 |          1335 |        5123 |        6044 |       2166003 |         796791 |
| 2021-04-26 |    834638 |  16965 |    793011 |          365 |     91 |             23718 |             22682 |             38529 |             38860 |             56014 |             63085 |             54845 |             65061 |             61357 |             77227 |             54483 |             69246 |             40771 |             44253 |             26005 |             29292 |           22891 |           46013 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1058 |           460 |          2277 |          1333 |        5122 |        6044 |       2125721 |         788174 |
| 2021-04-25 |    834442 |  16965 |    792685 |          348 |     98 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2113699 |         786452 |
| 2021-04-24 |    833964 |  16959 |    792377 |          342 |     98 |             23687 |             22656 |             38475 |             38803 |             55982 |             63048 |             54816 |             65001 |             61302 |             77181 |             54452 |             69203 |             40733 |             44203 |             25984 |             29265 |           22874 |           45993 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1058 |           460 |          2277 |          1331 |        5122 |        6040 |            NA |             NA |
| 2021-04-23 |    833397 |  16957 |    791751 |          384 |     98 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2082368 |         774170 |
| 2021-04-22 |    832891 |  16956 |    791171 |          395 |    104 |             23651 |             22627 |             38368 |             38694 |             55929 |             62967 |             54732 |             64949 |             61236 |             77105 |             54391 |             69110 |             40681 |             44139 |             25955 |             29240 |           22853 |           45960 |             1 |             1 |             1 |             1 |             7 |             5 |            21 |            20 |            91 |            62 |           331 |           130 |          1058 |           460 |          2276 |          1331 |        5121 |        6039 |       2042747 |         736235 |
| 2021-04-21 |    832255 |  16952 |    790650 |          397 |    110 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       2014270 |         696904 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-05-08 | 406       |                  11.420 |     0.000 |       0.001 |     0.001 |       0.001 |     0.013 |       0.004 |     0.033 |       0.015 |     0.057 |       0.041 |     0.375 |       0.134 |     1.063 |       0.630 |     0.437 |       0.591 |   5.797 |     2.227 |
| 2021-05-06 | 373       |                   6.183 |     0.001 |       0.000 |     0.000 |       0.000 |     0.004 |       0.003 |     0.014 |       0.001 |     0.068 |       0.022 |     0.103 |       0.062 |     0.467 |       0.310 |     0.786 |       0.409 |   2.230 |     1.703 |
| 2021-05-05 | 387       |                  13.596 |     0.001 |       0.000 |     0.001 |       0.001 |     0.011 |       0.004 |     0.021 |       0.018 |     0.122 |       0.038 |     0.332 |       0.090 |     1.167 |       1.033 |     2.620 |       0.864 |   3.344 |     3.929 |
| 2021-05-02 | 330       |                  11.780 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.006 |     0.021 |       0.014 |     0.088 |       0.051 |     0.369 |       0.119 |     0.726 |       0.548 |     2.271 |       0.637 |   3.121 |     3.798 |
| 2021-04-30 | 460       |                   5.529 |     0.001 |       0.000 |     0.001 |       0.000 |     0.005 |       0.003 |     0.020 |       0.006 |     0.065 |       0.038 |     0.115 |       0.064 |     0.726 |       0.248 |     1.397 |       0.546 |   1.115 |     1.179 |
| 2021-04-29 | 470       |                   6.336 |     0.001 |       0.000 |     0.001 |       0.001 |     0.004 |       0.004 |     0.016 |       0.006 |     0.035 |       0.026 |     0.145 |       0.062 |     0.778 |       0.351 |     1.135 |       0.546 |   1.784 |     1.441 |
| 2021-04-28 | 572       |                  11.041 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.021 |       0.014 |     0.069 |       0.037 |     0.139 |       0.051 |     0.518 |       0.393 |     1.572 |       0.364 |   3.790 |     4.060 |
| 2021-04-27 | 353       |                   8.060 |     0.000 |       0.000 |     0.000 |       0.001 |     0.003 |       0.001 |     0.010 |       0.012 |     0.041 |       0.018 |     0.139 |       0.047 |     0.622 |       0.279 |     0.611 |       0.273 |   3.121 |     2.882 |
| 2021-04-26 | 196       |                  11.400 |     0.001 |       0.001 |     0.001 |       0.001 |     0.004 |       0.003 |     0.011 |       0.018 |     0.081 |       0.037 |     0.187 |       0.081 |     0.985 |       0.517 |     1.834 |       1.228 |   3.790 |     2.620 |
| 2021-04-24 | 567       |                  15.455 |     0.002 |       0.001 |     0.003 |       0.003 |     0.007 |       0.006 |     0.032 |       0.016 |     0.097 |       0.061 |     0.369 |       0.175 |     1.348 |       0.661 |     2.533 |       1.137 |   4.682 |     4.322 |
| 2021-04-22 | 636       |                  13.770 |     0.003 |       0.002 |     0.002 |       0.003 |     0.011 |       0.007 |     0.033 |       0.032 |     0.150 |       0.073 |     0.393 |       0.177 |     1.529 |       0.630 |     1.834 |       1.274 |   5.128 |     2.489 |
| 2021-04-20 | 424       |                   6.790 |     0.001 |       0.000 |     0.001 |       0.001 |     0.005 |       0.002 |     0.012 |       0.013 |     0.053 |       0.031 |     0.151 |       0.023 |     0.363 |       0.248 |     0.524 |       0.682 |   2.453 |     2.227 |
| 2021-04-19 | 220       |                   5.306 |     0.000 |       0.000 |     0.001 |       0.000 |     0.001 |       0.001 |     0.009 |       0.007 |     0.035 |       0.019 |     0.054 |       0.040 |     0.441 |       0.145 |     0.873 |       0.455 |   1.784 |     1.441 |
| 2021-04-18 | 441       |                   6.429 |     0.001 |       0.001 |     0.000 |       0.001 |     0.005 |       0.002 |     0.018 |       0.013 |     0.028 |       0.026 |     0.187 |       0.049 |     0.518 |       0.186 |     1.572 |       0.728 |   1.784 |     1.310 |
| 2021-04-17 | 649       |                   8.158 |     0.001 |       0.000 |     0.001 |       0.001 |     0.007 |       0.004 |     0.023 |       0.017 |     0.068 |       0.037 |     0.272 |       0.083 |     0.518 |       0.434 |     1.659 |       0.682 |   1.338 |     3.013 |
| 2021-04-16 | 553       |                   6.724 |     0.002 |       0.001 |     0.001 |       0.001 |     0.005 |       0.002 |     0.021 |       0.014 |     0.044 |       0.034 |     0.224 |       0.073 |     0.752 |       0.289 |     1.572 |       0.910 |   1.338 |     1.441 |
| 2021-04-15 | 501       |                   6.870 |     0.001 |       0.001 |     0.000 |       0.000 |     0.007 |       0.002 |     0.023 |       0.013 |     0.074 |       0.025 |     0.187 |       0.081 |     0.674 |       0.248 |     1.223 |       0.955 |   1.784 |     1.572 |
| 2021-04-14 | 684       |                   9.149 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.022 |       0.015 |     0.088 |       0.050 |     0.272 |       0.098 |     1.167 |       0.341 |     1.310 |       0.910 |   2.898 |     1.965 |
| 2021-04-13 | 408       |                   8.825 |     0.000 |       0.000 |     0.000 |       0.000 |     0.003 |       0.003 |     0.015 |       0.009 |     0.037 |       0.031 |     0.157 |       0.073 |     0.674 |       0.145 |     1.135 |       0.409 |   3.121 |     3.013 |
| 2021-04-12 | 271       |                   5.470 |     0.000 |       0.000 |     0.000 |       0.000 |     0.005 |       0.001 |     0.015 |       0.007 |     0.010 |       0.006 |     0.139 |       0.056 |     0.000 |       0.186 |     1.572 |       0.864 |   1.561 |     1.048 |
