COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, October 03, 2021)*

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
| 2021-10-03 |         1 |      7 |         0 |            5 |      4 |            NA |             NA |                41 |                43 |                23 |                20 |                33 |                30 |                35 |                30 |                28 |                31 |                27 |                29 |                17 |                27 |                12 |                14 |               3 |               7 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             2 |             1 |           1 |           2 |
| 2021-10-02 |         1 |      7 |         1 |          -20 |     -2 |            NA |             NA |                42 |                51 |                48 |                32 |                70 |                41 |                39 |                51 |                27 |                43 |                29 |                48 |                24 |                31 |                19 |                21 |              30 |              42 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           4 |           2 |
| 2021-10-01 |         0 |      4 |         1 |           -9 |      1 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-09-30 |         1 |      7 |         0 |          -20 |     -2 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-09-29 |         1 |      6 |         1 |          -13 |     -6 |            NA |             NA |                67 |                70 |                41 |                47 |                51 |                40 |                47 |                41 |                38 |                50 |                36 |                48 |                39 |                59 |                25 |                29 |               8 |              21 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             2 |             0 |           1 |           2 |

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
| 2021-10-03 |      1071 |  17993 |      1022 |          342 |     69 |             33803 |             32550 |             57386 |             57640 |             84881 |             89186 |             74231 |             83558 |             77067 |             94874 |             64797 |             81503 |             47298 |             51914 |             29985 |             33701 |           25449 |           50557 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           109 |            69 |           365 |           157 |          1138 |           504 |          2406 |          1447 |        5382 |        6351 |            NA |             NA |
| 2021-10-02 |      1070 |  17986 |      1022 |          337 |     65 |             33762 |             32507 |             57363 |             57620 |             84848 |             89156 |             74196 |             83528 |             77039 |             94843 |             64770 |             81474 |             47281 |             51887 |             29973 |             33687 |           25446 |           50550 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           109 |            69 |           365 |           157 |          1137 |           504 |          2404 |          1446 |        5381 |        6349 |            NA |             NA |
| 2021-10-01 |      1069 |  17979 |      1021 |          357 |     67 |             33720 |             32456 |             57315 |             57588 |             84778 |             89115 |             74157 |             83477 |             77012 |             94800 |             64741 |             81426 |             47257 |             51856 |             29954 |             33666 |           25416 |           50508 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            69 |           365 |           157 |          1137 |           504 |          2404 |          1446 |        5377 |        6347 |            NA |             NA |
| 2021-09-30 |      1069 |  17975 |      1020 |          366 |     66 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-09-29 |      1068 |  17968 |      1020 |          386 |     68 |             33605 |             32346 |             57238 |             57525 |             84686 |             89039 |             74042 |             83378 |             76908 |             94699 |             64658 |             81330 |             47191 |             51788 |             29916 |             33631 |           25380 |           50440 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            68 |           365 |           157 |          1135 |           503 |          2403 |          1445 |        5373 |        6346 |            NA |             NA |
| 2021-09-28 |      1067 |  17962 |      1019 |          399 |     74 |             33538 |             32276 |             57197 |             57478 |             84635 |             88999 |             73995 |             83337 |             76870 |             94649 |             64622 |             81282 |             47152 |             51729 |             29891 |             33602 |           25372 |           50419 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            68 |           365 |           157 |          1135 |           502 |          2401 |          1445 |        5372 |        6344 |            NA |             NA |
| 2021-09-27 |      1067 |  17955 |      1017 |          420 |     79 |             33489 |             32226 |             57174 |             57454 |             84596 |             88970 |             73949 |             83289 |             76834 |             94600 |             64594 |             81238 |             47120 |             51694 |             29871 |             33587 |           25355 |           50401 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            68 |           365 |           157 |          1133 |           502 |          2401 |          1445 |        5369 |        6342 |       8532169 |        6680104 |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed  | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:-----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-10-03 | 1          |                   4.047 |     0.002 |       0.001 |     0.000 |       0.000 |     0.003 |       0.002 |     0.013 |       0.007 |     0.040 |       0.023 |     0.152 |       0.056 |     0.409 |       0.262 |     0.963 |       0.601 |   0.634 |     0.879 |
| 2021-10-02 | 1          |                  15.290 |     0.002 |       0.002 |     0.001 |       0.001 |     0.007 |       0.002 |     0.014 |       0.012 |     0.038 |       0.031 |     0.163 |       0.092 |     0.577 |       0.301 |     1.525 |       0.902 |   6.344 |     5.276 |
| 2021-10-01 | 0          |                  23.919 |     0.007 |       0.003 |     0.001 |       0.001 |     0.009 |       0.004 |     0.042 |       0.024 |     0.147 |       0.073 |     0.468 |       0.185 |     1.588 |       0.660 |     3.049 |       1.503 |   7.613 |     8.542 |
| 2021-09-29 | 1          |                   9.519 |     0.004 |       0.002 |     0.001 |       0.001 |     0.005 |       0.002 |     0.017 |       0.010 |     0.054 |       0.036 |     0.203 |       0.092 |     0.938 |       0.573 |     2.006 |       1.245 |   1.692 |     2.638 |
| 2021-09-28 | 0          |                   9.584 |     0.003 |       0.002 |     0.000 |       0.000 |     0.004 |       0.002 |     0.017 |       0.011 |     0.051 |       0.036 |     0.158 |       0.085 |     0.770 |       0.340 |     1.605 |       0.644 |   3.595 |     2.261 |
| 2021-09-27 | 1          |                   4.432 |     0.001 |       0.000 |     0.000 |       0.000 |     0.002 |       0.001 |     0.007 |       0.003 |     0.020 |       0.017 |     0.051 |       0.035 |     0.265 |       0.155 |     0.963 |       0.301 |   1.480 |     1.131 |
| 2021-09-26 | 0          |                   6.875 |     0.004 |       0.001 |     0.001 |       0.001 |     0.003 |       0.002 |     0.014 |       0.009 |     0.058 |       0.025 |     0.203 |       0.065 |     0.505 |       0.252 |     1.043 |       0.902 |   1.903 |     1.884 |
| 2021-09-25 | 1          |                  11.787 |     0.003 |       0.002 |     0.001 |       0.001 |     0.005 |       0.002 |     0.019 |       0.011 |     0.068 |       0.033 |     0.214 |       0.069 |     0.866 |       0.243 |     1.605 |       1.374 |   2.749 |     4.522 |
| 2021-09-24 | 1          |                  12.987 |     0.003 |       0.001 |     0.001 |       0.001 |     0.005 |       0.002 |     0.017 |       0.013 |     0.054 |       0.033 |     0.248 |       0.143 |     0.626 |       0.466 |     1.926 |       1.159 |   4.018 |     4.271 |
| 2021-09-23 | 1          |                  14.825 |     0.004 |       0.002 |     0.001 |       0.001 |     0.007 |       0.002 |     0.019 |       0.017 |     0.065 |       0.047 |     0.276 |       0.096 |     0.986 |       0.340 |     2.889 |       1.374 |   3.172 |     5.527 |
| 2021-09-22 | 0          |                  16.398 |     0.003 |       0.002 |     0.001 |       0.001 |     0.007 |       0.003 |     0.019 |       0.016 |     0.082 |       0.047 |     0.321 |       0.129 |     0.842 |       0.350 |     2.969 |       1.374 |   5.710 |     4.522 |
| 2021-09-21 | 1          |                   9.471 |     0.003 |       0.001 |     0.001 |       0.001 |     0.007 |       0.002 |     0.023 |       0.015 |     0.079 |       0.052 |     0.253 |       0.089 |     0.698 |       0.388 |     1.525 |       1.073 |   2.749 |     2.512 |
| 2021-09-20 | 0          |                   3.236 |     0.001 |       0.000 |     0.000 |       0.000 |     0.003 |       0.001 |     0.011 |       0.005 |     0.041 |       0.013 |     0.056 |       0.023 |     0.385 |       0.126 |     0.963 |       0.472 |   0.634 |     0.502 |
| 2021-09-19 | 1          |                  10.067 |     0.003 |       0.002 |     0.001 |       0.001 |     0.005 |       0.002 |     0.015 |       0.011 |     0.055 |       0.039 |     0.197 |       0.089 |     0.818 |       0.320 |     1.846 |       0.773 |   2.749 |     3.141 |
| 2021-09-18 | 1          |                  20.060 |     0.003 |       0.002 |     0.001 |       0.001 |     0.007 |       0.004 |     0.026 |       0.013 |     0.065 |       0.041 |     0.203 |       0.143 |     1.179 |       0.515 |     2.568 |       1.288 |   5.710 |     8.291 |
| 2021-09-17 | 1          |                  13.287 |     0.003 |       0.002 |     0.001 |       0.001 |     0.008 |       0.003 |     0.023 |       0.017 |     0.093 |       0.069 |     0.299 |       0.183 |     1.035 |       0.485 |     2.166 |       1.846 |   1.903 |     5.150 |
| 2021-09-16 | 1          |                  14.026 |     0.004 |       0.002 |     0.001 |       0.001 |     0.007 |       0.004 |     0.026 |       0.016 |     0.088 |       0.070 |     0.394 |       0.202 |     1.179 |       0.544 |     2.327 |       1.460 |   3.807 |     3.894 |
| 2021-09-15 | 1          |                  20.580 |     0.004 |       0.003 |     0.001 |       0.001 |     0.008 |       0.006 |     0.027 |       0.021 |     0.100 |       0.069 |     0.428 |       0.185 |     1.275 |       0.680 |     2.969 |       1.675 |   6.344 |     6.784 |
| 2021-09-14 | -1 054 985 |                  16.897 |     0.002 |       0.001 |     0.001 |       0.001 |     0.009 |       0.004 |     0.029 |       0.018 |     0.086 |       0.068 |     0.366 |       0.143 |     1.059 |       0.621 |     2.086 |       1.589 |   5.287 |     5.527 |
| 2021-09-13 | 1 054 987  |                   5.353 |     0.002 |       0.001 |     0.000 |       0.000 |     0.003 |       0.002 |     0.012 |       0.010 |     0.042 |       0.025 |     0.141 |       0.046 |     0.433 |       0.262 |     1.204 |       0.301 |   2.115 |     0.754 |
