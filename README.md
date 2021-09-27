COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, September 27, 2021)*

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
| 2021-09-27 |         1 |      1 |         0 |            5 |     -4 |          1675 |           4863 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-09-26 |         0 |      2 |         1 |            7 |      0 |            NA |             NA |                65 |                42 |                34 |                64 |                35 |                31 |                39 |                38 |                41 |                34 |                36 |                34 |                21 |                26 |                13 |                21 |               9 |              15 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |           1 |           0 |
| 2021-09-25 |         1 |      5 |         1 |           -2 |      7 |            NA |             NA |                49 |                59 |                51 |                42 |                51 |                37 |                52 |                45 |                48 |                45 |                38 |                36 |                36 |                25 |                20 |                32 |              13 |              36 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           2 |           3 |
| 2021-09-24 |         1 |      9 |         1 |           -2 |      1 |          6491 |           9440 |                52 |                40 |                48 |                44 |                51 |                44 |                48 |                56 |                38 |                46 |                44 |                74 |                26 |                48 |                24 |                27 |              19 |              34 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             2 |             1 |           1 |           4 |
| 2021-09-23 |         1 |      5 |         1 |          -14 |     -3 |          6177 |          13302 |                67 |                61 |                49 |                59 |                69 |                43 |                53 |                71 |                46 |                65 |                49 |                50 |                41 |                35 |                36 |                32 |              15 |              44 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             0 |             0 |           1 |           2 |

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
| 2021-09-27 |      1067 |  17955 |      1017 |          420 |     79 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       8532169 |        6680104 |
| 2021-09-26 |      1066 |  17954 |      1017 |          415 |     83 |             33479 |             32210 |             57167 |             57450 |             84578 |             88954 |             73929 |             83278 |             76820 |             94577 |             64585 |             81220 |             47109 |             51678 |             29859 |             33580 |           25348 |           50392 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            68 |           365 |           157 |          1133 |           502 |          2401 |          1445 |        5369 |        6341 |       8530494 |        6675241 |
| 2021-09-25 |      1066 |  17952 |      1016 |          408 |     83 |             33414 |             32168 |             57133 |             57386 |             84543 |             88923 |             73890 |             83240 |             76779 |             94543 |             64549 |             81186 |             47088 |             51652 |             29846 |             33559 |           25339 |           50377 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            68 |           365 |           157 |          1133 |           502 |          2401 |          1444 |        5368 |        6341 |            NA |             NA |
| 2021-09-24 |      1065 |  17947 |      1015 |          410 |     76 |             33365 |             32109 |             57082 |             57344 |             84492 |             88886 |             73838 |             83195 |             76731 |             94498 |             64511 |             81150 |             47052 |             51627 |             29826 |             33527 |           25326 |           50341 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            68 |           365 |           157 |          1133 |           502 |          2401 |          1444 |        5366 |        6338 |       8519067 |        6646737 |
| 2021-09-23 |      1064 |  17938 |      1014 |          412 |     75 |             33313 |             32069 |             57034 |             57300 |             84441 |             88842 |             73790 |             83139 |             76693 |             94452 |             64467 |             81076 |             47026 |             51579 |             29802 |             33500 |           25307 |           50307 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            67 |           365 |           157 |          1133 |           502 |          2399 |          1443 |        5365 |        6334 |       8512576 |        6637297 |
| 2021-09-22 |      1063 |  17933 |      1013 |          426 |     78 |             33246 |             32008 |             56985 |             57241 |             84372 |             88799 |             73737 |             83068 |             76647 |             94387 |             64418 |             81026 |             46985 |             51544 |             29766 |             33468 |           25292 |           50263 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            67 |           365 |           157 |          1133 |           500 |          2399 |          1443 |        5364 |        6332 |       8506399 |        6623995 |
| 2021-09-21 |      1063 |  17925 |      1012 |          455 |     78 |             33196 |             31958 |             56932 |             57189 |             84300 |             88751 |             73684 |             83000 |             76589 |             94323 |             64361 |             80959 |             46950 |             51508 |             29729 |             33436 |           25265 |           50227 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            67 |           365 |           156 |          1133 |           500 |          2398 |          1442 |        5361 |        6330 |       8500165 |        6605082 |
| 2021-09-20 |      1062 |  17914 |      1010 |          471 |     82 |             33144 |             31916 |             56887 |             57153 |             84223 |             88708 |             73621 |             82939 |             76533 |             94252 |             64316 |             80913 |             46921 |             51468 |             29710 |             33411 |           25252 |           50207 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            67 |           364 |           156 |          1132 |           500 |          2397 |          1441 |        5356 |        6328 |            NA |             NA |
| 2021-09-19 |      1062 |  17907 |      1010 |          455 |     86 |             33125 |             31903 |             56880 |             57146 |             84196 |             88691 |             73590 |             82917 |             76504 |             94234 |             64306 |             80901 |             46905 |             51455 |             29698 |             33400 |           25249 |           50203 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            67 |           363 |           156 |          1131 |           499 |          2396 |          1441 |        5356 |        6325 |            NA |             NA |
| 2021-09-18 |      1061 |  17902 |      1009 |          457 |     90 |             33068 |             31850 |             56838 |             57117 |             84144 |             88655 |             73548 |             82869 |             76465 |             94181 |             64271 |             80855 |             46871 |             51422 |             29675 |             33382 |           25236 |           50178 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            67 |           363 |           156 |          1131 |           499 |          2395 |          1439 |        5355 |        6324 |            NA |             NA |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed  | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:-----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-09-26 | 0          |                   6.887 |     0.004 |       0.001 |     0.001 |       0.001 |     0.003 |       0.002 |     0.014 |       0.009 |     0.058 |       0.024 |     0.203 |       0.066 |     0.505 |       0.253 |     1.045 |       0.904 |   1.906 |     1.888 |
| 2021-09-25 | 1          |                  11.806 |     0.003 |       0.002 |     0.001 |       0.001 |     0.005 |       0.002 |     0.018 |       0.011 |     0.068 |       0.032 |     0.215 |       0.070 |     0.866 |       0.243 |     1.608 |       1.377 |   2.754 |     4.530 |
| 2021-09-24 | 1          |                  13.007 |     0.003 |       0.001 |     0.001 |       0.001 |     0.005 |       0.002 |     0.017 |       0.013 |     0.054 |       0.033 |     0.249 |       0.143 |     0.625 |       0.466 |     1.930 |       1.162 |   4.024 |     4.278 |
| 2021-09-23 | 1          |                  14.851 |     0.004 |       0.002 |     0.001 |       0.001 |     0.007 |       0.002 |     0.019 |       0.017 |     0.065 |       0.047 |     0.277 |       0.097 |     0.986 |       0.340 |     2.895 |       1.377 |   3.177 |     5.537 |
| 2021-09-22 | 0          |                  16.425 |     0.003 |       0.002 |     0.001 |       0.001 |     0.007 |       0.003 |     0.019 |       0.016 |     0.082 |       0.046 |     0.322 |       0.130 |     0.842 |       0.350 |     2.975 |       1.377 |   5.719 |     4.530 |
| 2021-09-21 | 1          |                   9.486 |     0.003 |       0.001 |     0.001 |       0.001 |     0.007 |       0.002 |     0.022 |       0.015 |     0.079 |       0.051 |     0.254 |       0.089 |     0.697 |       0.389 |     1.528 |       1.076 |   2.754 |     2.517 |
| 2021-09-20 | 0          |                   3.242 |     0.001 |       0.000 |     0.000 |       0.000 |     0.003 |       0.001 |     0.011 |       0.005 |     0.041 |       0.013 |     0.057 |       0.023 |     0.385 |       0.126 |     0.965 |       0.473 |   0.635 |     0.503 |
| 2021-09-19 | 1          |                  10.084 |     0.003 |       0.002 |     0.001 |       0.001 |     0.005 |       0.002 |     0.015 |       0.012 |     0.055 |       0.038 |     0.198 |       0.089 |     0.818 |       0.321 |     1.849 |       0.775 |   2.754 |     3.146 |
| 2021-09-18 | 1          |                  20.089 |     0.003 |       0.002 |     0.001 |       0.001 |     0.007 |       0.004 |     0.025 |       0.013 |     0.065 |       0.041 |     0.203 |       0.143 |     1.178 |       0.515 |     2.573 |       1.291 |   5.719 |     8.305 |
| 2021-09-17 | 1          |                  13.310 |     0.003 |       0.002 |     0.001 |       0.001 |     0.008 |       0.003 |     0.022 |       0.018 |     0.094 |       0.068 |     0.300 |       0.184 |     1.034 |       0.486 |     2.171 |       1.850 |   1.906 |     5.159 |
| 2021-09-16 | 1          |                  14.047 |     0.004 |       0.002 |     0.001 |       0.001 |     0.007 |       0.004 |     0.025 |       0.016 |     0.088 |       0.069 |     0.396 |       0.203 |     1.178 |       0.544 |     2.332 |       1.463 |   3.813 |     3.901 |
| 2021-09-15 | 1          |                  20.612 |     0.004 |       0.003 |     0.001 |       0.001 |     0.008 |       0.006 |     0.026 |       0.021 |     0.101 |       0.068 |     0.430 |       0.186 |     1.275 |       0.680 |     2.975 |       1.678 |   6.354 |     6.795 |
| 2021-09-14 | -1 054 985 |                  16.924 |     0.003 |       0.001 |     0.001 |       0.001 |     0.009 |       0.004 |     0.028 |       0.018 |     0.087 |       0.067 |     0.367 |       0.143 |     1.058 |       0.622 |     2.091 |       1.592 |   5.295 |     5.537 |
| 2021-09-13 | 1 054 987  |                   5.360 |     0.002 |       0.001 |     0.000 |       0.000 |     0.003 |       0.002 |     0.012 |       0.010 |     0.043 |       0.025 |     0.141 |       0.046 |     0.433 |       0.262 |     1.206 |       0.301 |   2.118 |     0.755 |
| 2021-09-12 | 1          |                  10.089 |     0.003 |       0.002 |     0.001 |       0.001 |     0.009 |       0.004 |     0.023 |       0.014 |     0.098 |       0.046 |     0.277 |       0.131 |     0.914 |       0.359 |     1.447 |       1.205 |   1.906 |     3.649 |
| 2021-09-11 | 1          |                  13.634 |     0.004 |       0.002 |     0.001 |       0.001 |     0.012 |       0.007 |     0.030 |       0.020 |     0.098 |       0.066 |     0.328 |       0.164 |     1.058 |       0.544 |     2.332 |       1.420 |   4.024 |     3.523 |
| 2021-09-10 | 1          |                  15.361 |     0.004 |       0.002 |     0.002 |       0.002 |     0.012 |       0.007 |     0.040 |       0.019 |     0.125 |       0.075 |     0.311 |       0.149 |     1.034 |       0.534 |     2.895 |       1.463 |   4.660 |     4.027 |
| 2021-09-09 | 2          |                  31.503 |     0.010 |       0.005 |     0.004 |       0.004 |     0.031 |       0.015 |     0.079 |       0.061 |     0.288 |       0.187 |     0.865 |       0.342 |     2.381 |       1.399 |     4.744 |       3.098 |   8.049 |     9.941 |
| 2021-09-07 | 1          |                  14.532 |     0.004 |       0.002 |     0.001 |       0.002 |     0.012 |       0.006 |     0.037 |       0.021 |     0.133 |       0.054 |     0.362 |       0.130 |     1.203 |       0.457 |     2.975 |       1.334 |   4.024 |     3.775 |
| 2021-09-06 | 0          |                   6.744 |     0.002 |       0.001 |     0.001 |       0.001 |     0.008 |       0.003 |     0.018 |       0.010 |     0.061 |       0.041 |     0.141 |       0.070 |     0.649 |       0.233 |     1.447 |       0.516 |   1.906 |     1.636 |
