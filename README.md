COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, September 12, 2021)*

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
| 2021-09-12 |         1 |      8 |       821 |           17 |     -1 |          9823 |         115859 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-09-11 |         1 |     10 |      2096 |          -17 |      3 |         11002 |          29862 |                67 |                73 |                79 |                72 |               123 |               127 |                85 |                84 |                69 |                92 |                58 |                85 |                44 |                56 |                29 |                33 |              19 |              28 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |             3 |             0 |           4 |           2 |
| 2021-09-10 |         1 |      7 |      1936 |          -28 |     -9 |         11776 |          29805 |                64 |                67 |               107 |                96 |               130 |               119 |               113 |                80 |                88 |               105 |                55 |                77 |                43 |                55 |                36 |                34 |              22 |              32 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             0 |             1 |             2 |           0 |           2 |
| 2021-09-09 |         2 |     10 |      1823 |          -24 |     -8 |          9905 |          30921 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-09-08 |         2 |     10 |      2013 |          -29 |      0 |         11149 |          30459 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |

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
| 2021-09-12 |      1055 |  17861 |    999904 |          569 |    120 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       8436183 |        6293193 |
| 2021-09-11 |      1054 |  17853 |    999083 |          552 |    121 |             32715 |             31481 |             56452 |             56787 |             83601 |             88165 |             73088 |             82407 |             76060 |             93646 |             63897 |             80319 |             46577 |             51065 |             29491 |             33164 |           25108 |           49907 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           107 |            67 |           358 |           155 |          1127 |           498 |          2389 |          1435 |        5341 |        6312 |       8426360 |        6177334 |
| 2021-09-10 |      1053 |  17843 |    996987 |          569 |    118 |             32648 |             31408 |             56373 |             56715 |             83478 |             88038 |             73003 |             82323 |             75991 |             93554 |             63839 |             80234 |             46533 |             51009 |             29462 |             33131 |           25089 |           49879 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            67 |           358 |           155 |          1127 |           498 |          2386 |          1435 |        5337 |        6310 |       8415358 |        6147472 |
| 2021-09-09 |      1052 |  17836 |    995051 |          597 |    127 |             32584 |             31341 |             56266 |             56619 |             83348 |             87919 |             72890 |             82243 |             75903 |             93449 |             63784 |             80157 |             46490 |             50954 |             29426 |             33097 |           25067 |           49847 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            67 |           358 |           154 |          1126 |           498 |          2385 |          1433 |        5337 |        6308 |       8403582 |        6117667 |
| 2021-09-08 |      1050 |  17826 |    993228 |          621 |    135 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       8393677 |        6086746 |
| 2021-09-07 |      1048 |  17816 |    991215 |          650 |    135 |             32424 |             31182 |             56009 |             56379 |             83015 |             87651 |             72664 |             81988 |             75700 |             93189 |             63631 |             79980 |             46391 |             50810 |             29367 |             33025 |           25029 |           49768 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            67 |           357 |           154 |          1125 |           497 |          2383 |          1431 |        5332 |        6300 |       8382528 |        6056287 |
| 2021-09-06 |      1047 |  17810 |    987935 |          682 |    140 |             32358 |             31123 |             55933 |             56288 |             82889 |             87544 |             72560 |             81901 |             75606 |             93114 |             63567 |             79913 |             46341 |             50763 |             29330 |             32994 |           25010 |           49738 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            67 |           357 |           154 |          1124 |           497 |          2383 |          1430 |        5331 |        6297 |       8370475 |        6021520 |
| 2021-09-05 |      1047 |  17798 |    986826 |          665 |    138 |             32327 |             31090 |             55880 |             56230 |             82803 |             87497 |             72510 |             81859 |             75563 |             93057 |             63542 |             79877 |             46314 |             50739 |             29312 |             32982 |           25001 |           49725 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            67 |           357 |           153 |          1124 |           495 |          2382 |          1428 |        5329 |        6293 |       8359933 |        5981442 |
| 2021-09-04 |      1045 |  17785 |    985714 |          664 |    139 |             32260 |             31047 |             55786 |             56132 |             82658 |             87392 |             72424 |             81782 |             75489 |             92970 |             63487 |             79810 |             46280 |             50688 |             29286 |             32954 |           24981 |           49694 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           357 |           153 |          1124 |           494 |          2382 |          1427 |        5324 |        6288 |            NA |             NA |
| 2021-09-03 |      1044 |  17772 |    983063 |          681 |    136 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-09-02 |      1042 |  17766 |    980599 |          695 |    140 |             32097 |             30898 |             55486 |             55844 |             82257 |             87026 |             72180 |             81531 |             75278 |             92713 |             63308 |             79642 |             46157 |             50539 |             29220 |             32867 |           24933 |           49610 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           357 |           153 |          1122 |           493 |          2381 |          1426 |        5316 |        6282 |       8324011 |        5853926 |
| 2021-09-01 |      1039 |  17757 |    978462 |          681 |    131 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       8280066 |        5794207 |
| 2021-08-31 |      1037 |  17743 |    976097 |          677 |    136 |             31913 |             30711 |             55095 |             55472 |             81729 |             86622 |             71874 |             81237 |             75013 |             92365 |             63100 |             79379 |             46011 |             50373 |             29122 |             32743 |           24873 |           49555 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           354 |           153 |          1118 |           491 |          2377 |          1425 |        5314 |        6275 |       8256267 |        5767235 |
| 2021-08-30 |      1036 |  17730 |    972708 |          705 |    149 |             31837 |             30650 |             54928 |             55316 |             81499 |             86426 |             71728 |             81090 |             74897 |             92225 |             63011 |             79277 |             45948 |             50317 |             29073 |             32702 |           24853 |           49504 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           353 |           153 |          1118 |           490 |          2376 |          1422 |        5314 |        6268 |       8225272 |        5743397 |
| 2021-08-29 |      1034 |  17721 |    971567 |          698 |    148 |             31805 |             30604 |             54840 |             55221 |             81362 |             86302 |             71648 |             81005 |             74830 |             92161 |             62963 |             79219 |             45916 |             50283 |             29057 |             32683 |           24841 |           49466 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           353 |           153 |          1118 |           489 |          2376 |          1421 |        5309 |        6266 |       8198185 |        5740466 |
| 2021-08-28 |      1033 |  17711 |    970497 |          657 |    143 |             31733 |             30544 |             54656 |             55060 |             81117 |             86115 |             71521 |             80890 |             74736 |             92030 |             62875 |             79125 |             45866 |             50226 |             29022 |             32651 |           24819 |           49439 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           353 |           153 |          1118 |           489 |          2376 |          1420 |        5305 |        6261 |       8123122 |        5736684 |
| 2021-08-27 |      1030 |  17703 |    967662 |          675 |    144 |             31651 |             30461 |             54441 |             54816 |             80802 |             85838 |             71357 |             80726 |             74612 |             91856 |             62776 |             78987 |             45807 |             50143 |             28989 |             32610 |           24803 |           49384 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           353 |           153 |          1118 |           488 |          2374 |          1420 |        5302 |        6259 |       8085852 |        5713954 |
| 2021-08-26 |      1028 |  17689 |    965324 |          670 |    150 |             31578 |             30381 |             54203 |             54594 |             80453 |             85540 |             71189 |             80569 |             74496 |             91681 |             62691 |             78875 |             45733 |             50066 |             28949 |             32562 |           24778 |           49349 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           353 |           152 |          1117 |           487 |          2371 |          1419 |        5301 |        6253 |       8045122 |        5699370 |
| 2021-08-25 |      1025 |  17674 |    963205 |          688 |    144 |             31485 |             30298 |             53953 |             54362 |             80104 |             85223 |             70994 |             80422 |             74371 |             91533 |             62585 |             78750 |             45659 |             49976 |             28900 |             32497 |           24735 |           49289 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           352 |           151 |          1117 |           486 |          2371 |          1417 |        5298 |        6246 |       7996430 |        5683920 |
| 2021-08-24 |      1022 |  17658 |    960969 |          716 |    148 |             31376 |             30192 |             53627 |             54043 |             79662 |             84854 |             70824 |             80215 |             74233 |             91337 |             62469 |             78586 |             45586 |             49878 |             28844 |             32422 |           24704 |           49230 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           350 |           150 |          1116 |           486 |          2368 |          1416 |        5296 |        6240 |       7949298 |        5670487 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-09-11 | 1         |                  13.700 |     0.004 |       0.002 |     0.001 |       0.001 |     0.012 |       0.007 |     0.030 |       0.020 |     0.097 |       0.066 |     0.325 |       0.164 |     1.065 |       0.546 |     2.349 |       1.428 |   4.042 |     3.541 |
| 2021-09-10 | 1         |                  15.434 |     0.004 |       0.002 |     0.002 |       0.002 |     0.012 |       0.007 |     0.040 |       0.019 |     0.124 |       0.075 |     0.308 |       0.149 |     1.040 |       0.536 |     2.916 |       1.471 |   4.680 |     4.047 |
| 2021-09-09 | 2         |                  31.652 |     0.010 |       0.005 |     0.005 |       0.004 |     0.032 |       0.015 |     0.080 |       0.062 |     0.286 |       0.186 |     0.857 |       0.342 |     2.395 |       1.404 |     4.779 |       3.115 |   8.083 |     9.992 |
| 2021-09-07 | 1         |                  14.601 |     0.004 |       0.002 |     0.001 |       0.002 |     0.012 |       0.006 |     0.037 |       0.021 |     0.132 |       0.054 |     0.359 |       0.129 |     1.210 |       0.458 |     2.997 |       1.341 |   4.042 |     3.794 |
| 2021-09-06 | 0         |                   6.776 |     0.002 |       0.001 |     0.001 |       0.001 |     0.008 |       0.003 |     0.018 |       0.010 |     0.060 |       0.041 |     0.140 |       0.069 |     0.653 |       0.234 |     1.458 |       0.519 |   1.914 |     1.644 |
| 2021-09-05 | 2         |                  13.495 |     0.004 |       0.001 |     0.002 |       0.002 |     0.014 |       0.006 |     0.031 |       0.019 |     0.104 |       0.062 |     0.308 |       0.129 |     0.823 |       0.497 |     2.106 |       1.212 |   4.254 |     3.921 |
| 2021-09-04 | 1         |                  36.415 |     0.010 |       0.005 |     0.005 |       0.005 |     0.038 |       0.021 |     0.087 |       0.061 |     0.297 |       0.184 |     1.003 |       0.324 |     2.976 |       1.453 |     5.347 |       3.764 |  10.211 |    10.624 |
| 2021-09-02 | 3         |                  40.755 |     0.011 |       0.006 |     0.007 |       0.007 |     0.051 |       0.023 |     0.109 |       0.071 |     0.373 |       0.249 |     1.165 |       0.508 |     3.533 |       1.619 |     7.939 |       5.365 |  12.763 |     6.956 |
| 2021-08-31 | 1         |                  19.610 |     0.005 |       0.002 |     0.003 |       0.003 |     0.022 |       0.011 |     0.052 |       0.036 |     0.163 |       0.100 |     0.499 |       0.197 |     1.524 |       0.546 |     3.969 |       1.774 |   4.254 |     6.450 |
| 2021-08-30 | 2         |                  11.180 |     0.002 |       0.001 |     0.002 |       0.002 |     0.013 |       0.007 |     0.028 |       0.021 |     0.094 |       0.046 |     0.269 |       0.112 |     0.774 |       0.332 |     1.296 |       0.822 |   2.553 |     4.806 |
| 2021-08-29 | 1         |                  15.100 |     0.004 |       0.002 |     0.003 |       0.003 |     0.023 |       0.011 |     0.045 |       0.028 |     0.132 |       0.094 |     0.493 |       0.181 |     1.210 |       0.556 |     2.835 |       1.385 |   4.680 |     3.415 |
| 2021-08-28 | 3         |                  18.323 |     0.005 |       0.003 |     0.004 |       0.004 |     0.030 |       0.016 |     0.058 |       0.040 |     0.174 |       0.124 |     0.555 |       0.266 |     1.428 |       0.809 |     2.673 |       1.774 |   3.404 |     6.956 |
| 2021-08-27 | 2         |                  18.747 |     0.004 |       0.003 |     0.004 |       0.004 |     0.033 |       0.017 |     0.060 |       0.038 |     0.163 |       0.125 |     0.476 |       0.216 |     1.791 |       0.751 |     3.240 |       2.077 |   5.318 |     4.427 |
| 2021-08-26 | 3         |                  27.477 |     0.006 |       0.003 |     0.004 |       0.004 |     0.033 |       0.018 |     0.069 |       0.036 |     0.176 |       0.106 |     0.594 |       0.241 |     1.791 |       0.878 |     3.969 |       2.813 |   9.147 |     7.589 |
| 2021-08-25 | 3         |                  26.054 |     0.007 |       0.003 |     0.006 |       0.006 |     0.042 |       0.021 |     0.060 |       0.050 |     0.194 |       0.140 |     0.650 |       0.316 |     1.766 |       0.956 |     4.536 |       3.245 |   6.594 |     7.462 |
| 2021-08-24 | 2         |                  25.002 |     0.005 |       0.002 |     0.004 |       0.004 |     0.030 |       0.014 |     0.052 |       0.032 |     0.174 |       0.109 |     0.465 |       0.222 |     1.428 |       0.712 |     3.402 |       2.077 |   8.934 |     7.336 |
| 2021-08-23 | 1         |                   9.387 |     0.003 |       0.001 |     0.002 |       0.002 |     0.015 |       0.008 |     0.025 |       0.016 |     0.072 |       0.046 |     0.230 |       0.083 |     0.532 |       0.302 |     1.377 |       0.952 |   3.191 |     2.530 |
| 2021-08-22 | 2         |                  13.779 |     0.006 |       0.003 |     0.004 |       0.004 |     0.033 |       0.015 |     0.046 |       0.032 |     0.125 |       0.077 |     0.420 |       0.199 |     1.016 |       0.488 |     2.592 |       1.688 |   3.616 |     3.415 |
| 2021-08-21 | 3         |                  23.490 |     0.005 |       0.002 |     0.005 |       0.005 |     0.036 |       0.020 |     0.069 |       0.047 |     0.159 |       0.116 |     0.684 |       0.247 |     1.549 |       0.673 |     2.349 |       2.077 |   6.594 |     8.853 |
| 2021-08-20 | 2         |                  24.200 |     0.005 |       0.003 |     0.005 |       0.005 |     0.036 |       0.019 |     0.064 |       0.040 |     0.159 |       0.094 |     0.482 |       0.249 |     1.331 |       0.751 |     3.888 |       2.466 |   6.382 |     8.221 |
