COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Friday, September 17, 2021)*

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
| 2021-09-17 |         1 |      7 |         1 |          -23 |     -6 |            NA |             NA |                46 |                58 |                55 |                61 |                85 |                58 |                62 |                73 |                66 |                95 |                53 |                95 |                43 |                50 |                27 |                43 |               9 |              41 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             0 |             1 |             0 |             1 |             0 |           2 |           1 |
| 2021-09-16 |         1 |      6 |         2 |          -30 |    -16 |            NA |             NA |                68 |                49 |                63 |                51 |                76 |                69 |                72 |                68 |                62 |                96 |                70 |               105 |                49 |                56 |                29 |                34 |              18 |              31 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |           4 |           1 |
| 2021-09-15 |         1 |     10 |         1 |          -24 |      3 |            NA |             NA |                65 |                89 |                70 |                47 |                89 |               100 |                75 |                89 |                71 |                95 |                76 |                96 |                53 |                70 |                37 |                39 |              30 |              54 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             1 |             0 |             0 |             2 |             0 |           4 |           1 |
| 2021-09-14 |  -1054985 |      6 |         3 |          -35 |     -3 |          9841 |          45600 |                42 |                31 |                64 |                54 |                98 |                75 |                79 |                77 |                61 |                93 |                65 |                74 |                44 |                64 |                26 |                37 |              25 |              44 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |           1 |           2 |
| 2021-09-13 |   1054987 |      5 |   -998904 |           17 |     -1 |          5420 |          32283 |                39 |                23 |                28 |                27 |                34 |                34 |                34 |                42 |                30 |                35 |                25 |                24 |                18 |                27 |                15 |                 7 |              10 |               6 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             0 |           1 |           2 |

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
| 2021-09-17 |      1060 |  17895 |      1007 |          474 |     97 |             33023 |             31787 |             56791 |             57076 |             84075 |             88579 |             73476 |             82813 |             76419 |             94124 |             64235 |             80781 |             46822 |             51369 |             29643 |             33352 |           25209 |           50112 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            67 |           362 |           156 |          1129 |           499 |          2394 |          1438 |        5354 |        6323 |            NA |             NA |
| 2021-09-16 |      1059 |  17888 |      1006 |          497 |    103 |             32977 |             31729 |             56736 |             57015 |             83990 |             88521 |             73414 |             82740 |             76353 |             94029 |             64182 |             80686 |             46779 |             51319 |             29616 |             33309 |           25200 |           50071 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           108 |            67 |           361 |           156 |          1128 |           499 |          2393 |          1438 |        5352 |        6322 |            NA |             NA |
| 2021-09-15 |      1058 |  17882 |      1004 |          527 |    119 |             32909 |             31680 |             56673 |             56964 |             83914 |             88452 |             73342 |             82672 |             76291 |             93933 |             64112 |             80581 |             46730 |             51263 |             29587 |             33275 |           25182 |           50040 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           108 |            67 |           360 |           156 |          1128 |           499 |          2393 |          1438 |        5348 |        6321 |            NA |             NA |
| 2021-09-14 |      1057 |  17872 |      1003 |          551 |    116 |             32844 |             31591 |             56603 |             56917 |             83825 |             88352 |             73267 |             82583 |             76220 |             93838 |             64036 |             80485 |             46677 |             51193 |             29550 |             33236 |           25152 |           49986 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           108 |            67 |           358 |           155 |          1128 |           499 |          2391 |          1438 |        5344 |        6320 |       8451444 |        6371076 |
| 2021-09-13 |   1056042 |  17866 |      1000 |          586 |    119 |             32802 |             31560 |             56539 |             56863 |             83727 |             88277 |             73188 |             82506 |             76159 |             93745 |             63971 |             80411 |             46633 |             51129 |             29524 |             33199 |           25127 |           49942 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           107 |            67 |           358 |           155 |          1128 |           499 |          2391 |          1436 |        5343 |        6318 |       8441603 |        6325476 |
| 2021-09-12 |      1055 |  17861 |    999904 |          569 |    120 |             32763 |             31537 |             56511 |             56836 |             83693 |             88243 |             73154 |             82464 |             76129 |             93710 |             63946 |             80387 |             46615 |             51102 |             29509 |             33192 |           25117 |           49936 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           107 |            67 |           358 |           155 |          1127 |           499 |          2390 |          1436 |        5342 |        6316 |       8436183 |        6293193 |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed  | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:-----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-09-17 | 1          |                  13.344 |     0.003 |       0.002 |     0.001 |       0.001 |     0.008 |       0.003 |     0.022 |       0.018 |     0.094 |       0.068 |     0.299 |       0.183 |     1.037 |       0.486 |     2.181 |       1.854 |   1.911 |     5.173 |
| 2021-09-16 | 1          |                  14.081 |     0.004 |       0.002 |     0.001 |       0.001 |     0.007 |       0.004 |     0.025 |       0.016 |     0.088 |       0.068 |     0.394 |       0.203 |     1.182 |       0.544 |     2.342 |       1.466 |   3.823 |     3.911 |
| 2021-09-15 | 1          |                  20.667 |     0.004 |       0.003 |     0.001 |       0.001 |     0.008 |       0.006 |     0.027 |       0.021 |     0.101 |       0.068 |     0.428 |       0.185 |     1.278 |       0.680 |     2.988 |       1.682 |   6.372 |     6.814 |
| 2021-09-14 | -1 054 985 |                  16.968 |     0.003 |       0.001 |     0.001 |       0.001 |     0.009 |       0.004 |     0.028 |       0.019 |     0.087 |       0.066 |     0.366 |       0.143 |     1.061 |       0.622 |     2.100 |       1.595 |   5.310 |     5.552 |
| 2021-09-13 | 1 054 987  |                   5.375 |     0.002 |       0.001 |     0.000 |       0.000 |     0.003 |       0.002 |     0.012 |       0.010 |     0.043 |       0.025 |     0.141 |       0.046 |     0.434 |       0.262 |     1.211 |       0.302 |   2.124 |     0.757 |
| 2021-09-12 | 1          |                  10.114 |     0.003 |       0.002 |     0.001 |       0.001 |     0.009 |       0.004 |     0.023 |       0.014 |     0.098 |       0.046 |     0.276 |       0.131 |     0.916 |       0.359 |     1.454 |       1.207 |   1.911 |     3.659 |
| 2021-09-11 | 1          |                  13.669 |     0.004 |       0.002 |     0.001 |       0.001 |     0.012 |       0.007 |     0.030 |       0.020 |     0.098 |       0.065 |     0.327 |       0.164 |     1.061 |       0.544 |     2.342 |       1.423 |   4.035 |     3.533 |
| 2021-09-10 | 1          |                  15.402 |     0.004 |       0.002 |     0.002 |       0.002 |     0.012 |       0.007 |     0.040 |       0.019 |     0.126 |       0.075 |     0.310 |       0.149 |     1.037 |       0.534 |     2.907 |       1.466 |   4.672 |     4.038 |
| 2021-09-09 | 2          |                  31.586 |     0.010 |       0.005 |     0.005 |       0.004 |     0.032 |       0.015 |     0.080 |       0.062 |     0.290 |       0.185 |     0.862 |       0.342 |     2.387 |       1.399 |     4.765 |       3.104 |   8.071 |     9.968 |
| 2021-09-07 | 1          |                  14.570 |     0.004 |       0.002 |     0.001 |       0.002 |     0.012 |       0.006 |     0.037 |       0.021 |     0.134 |       0.053 |     0.361 |       0.129 |     1.206 |       0.457 |     2.988 |       1.337 |   4.035 |     3.785 |
| 2021-09-06 | 0          |                   6.763 |     0.002 |       0.001 |     0.001 |       0.001 |     0.008 |       0.003 |     0.018 |       0.010 |     0.061 |       0.041 |     0.141 |       0.070 |     0.651 |       0.233 |     1.454 |       0.517 |   1.911 |     1.640 |
| 2021-09-05 | 2          |                  13.466 |     0.004 |       0.001 |     0.002 |       0.002 |     0.014 |       0.006 |     0.030 |       0.019 |     0.106 |       0.062 |     0.310 |       0.129 |     0.820 |       0.495 |     2.100 |       1.207 |   4.248 |     3.911 |
| 2021-09-04 | 1          |                  36.335 |     0.010 |       0.005 |     0.005 |       0.005 |     0.038 |       0.021 |     0.086 |       0.061 |     0.301 |       0.183 |     1.009 |       0.324 |     2.966 |       1.447 |     5.330 |       3.751 |  10.194 |    10.599 |
| 2021-09-02 | 3          |                  40.666 |     0.011 |       0.006 |     0.007 |       0.007 |     0.050 |       0.023 |     0.108 |       0.071 |     0.378 |       0.248 |     1.172 |       0.508 |     3.520 |       1.613 |     7.915 |       5.346 |  12.743 |     6.940 |
| 2021-08-31 | 1          |                  19.569 |     0.005 |       0.002 |     0.003 |       0.003 |     0.022 |       0.011 |     0.052 |       0.036 |     0.165 |       0.100 |     0.502 |       0.197 |     1.519 |       0.544 |     3.957 |       1.768 |   4.248 |     6.435 |
| 2021-08-30 | 2          |                  11.158 |     0.002 |       0.001 |     0.002 |       0.002 |     0.013 |       0.007 |     0.028 |       0.021 |     0.096 |       0.046 |     0.271 |       0.112 |     0.772 |       0.330 |     1.292 |       0.819 |   2.549 |     4.795 |
| 2021-08-29 | 1          |                  15.070 |     0.004 |       0.002 |     0.003 |       0.003 |     0.023 |       0.011 |     0.045 |       0.028 |     0.134 |       0.093 |     0.496 |       0.182 |     1.206 |       0.554 |     2.827 |       1.380 |   4.672 |     3.407 |
| 2021-08-28 | 3          |                  18.285 |     0.005 |       0.003 |     0.004 |       0.004 |     0.030 |       0.016 |     0.058 |       0.040 |     0.177 |       0.124 |     0.558 |       0.266 |     1.423 |       0.806 |     2.665 |       1.768 |   3.398 |     6.940 |
| 2021-08-27 | 2          |                  18.705 |     0.004 |       0.003 |     0.004 |       0.004 |     0.033 |       0.017 |     0.059 |       0.038 |     0.165 |       0.125 |     0.479 |       0.216 |     1.784 |       0.748 |     3.230 |       2.070 |   5.310 |     4.416 |
| 2021-08-26 | 3          |                  27.416 |     0.006 |       0.003 |     0.004 |       0.004 |     0.033 |       0.018 |     0.069 |       0.036 |     0.178 |       0.105 |     0.597 |       0.241 |     1.784 |       0.874 |     3.957 |       2.803 |   9.133 |     7.571 |
