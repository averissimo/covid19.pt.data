COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Saturday, October 16, 2021)*

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
| 2021-10-16 |         1 |     10 |         1 |          -16 |      4 |            NA |             NA |                30 |                31 |                56 |                38 |                59 |                52 |                46 |                31 |                31 |                54 |                24 |                38 |                23 |                31 |                19 |                14 |              14 |              18 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |           7 |           1 |
| 2021-10-15 |         1 |      7 |         1 |          -20 |     -1 |            NA |             NA |                34 |                35 |                50 |                45 |               101 |                57 |                57 |                50 |                43 |                51 |                38 |                46 |                38 |                28 |                22 |                24 |              14 |              34 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |           1 |           5 |
| 2021-10-14 |         0 |      6 |         0 |          -14 |      2 |            NA |             NA |                42 |                38 |                52 |                49 |                94 |                53 |                44 |                46 |                48 |                53 |                51 |                42 |                31 |                32 |                17 |                21 |              25 |              43 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |           4 |           0 |
| 2021-10-13 |         1 |      9 |         1 |          -10 |     -2 |            NA |             NA |                35 |                43 |                54 |                45 |                90 |                69 |                53 |                48 |                55 |                65 |                47 |                54 |                35 |                37 |                20 |                25 |              19 |              33 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             1 |             1 |             2 |           1 |           3 |
| 2021-10-12 |         1 |      8 |         1 |          -11 |     -2 |            NA |             NA |                33 |                43 |                30 |                25 |                82 |                59 |                51 |                44 |                52 |                53 |                38 |                38 |                25 |                32 |                27 |                26 |              24 |              37 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |           3 |           4 |

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
| 2021-10-16 |      1079 |  18088 |      1031 |          285 |     59 |             34249 |             32997 |             57832 |             58048 |             85695 |             89706 |             74806 |             84127 |             77573 |             95495 |             65226 |             82001 |             47647 |             52289 |             30235 |             33981 |           25677 |           51017 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            70 |           366 |           157 |          1139 |           507 |          2415 |          1457 |        5421 |        6380 |            NA |             NA |
| 2021-10-15 |      1078 |  18078 |      1030 |          301 |     55 |             34219 |             32966 |             57776 |             58010 |             85636 |             89654 |             74760 |             84096 |             77542 |             95441 |             65202 |             81963 |             47624 |             52258 |             30216 |             33967 |           25663 |           50999 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            70 |           366 |           157 |          1139 |           507 |          2415 |          1455 |        5414 |        6379 |            NA |             NA |
| 2021-10-14 |      1077 |  18071 |      1029 |          321 |     56 |             34185 |             32931 |             57726 |             57965 |             85535 |             89597 |             74703 |             84046 |             77499 |             95390 |             65164 |             81917 |             47586 |             52230 |             30194 |             33943 |           25649 |           50965 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            70 |           366 |           157 |          1139 |           507 |          2414 |          1455 |        5413 |        6374 |            NA |             NA |
| 2021-10-13 |      1077 |  18065 |      1029 |          335 |     54 |             34143 |             32893 |             57674 |             57916 |             85441 |             89544 |             74659 |             84000 |             77451 |             95337 |             65113 |             81875 |             47555 |             52198 |             30177 |             33922 |           25624 |           50922 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            70 |           366 |           157 |          1139 |           507 |          2413 |          1454 |        5409 |        6374 |            NA |             NA |
| 2021-10-12 |      1076 |  18056 |      1028 |          345 |     56 |             34108 |             32850 |             57620 |             57871 |             85351 |             89475 |             74606 |             83952 |             77396 |             95272 |             65066 |             81821 |             47520 |             52161 |             30157 |             33897 |           25605 |           50889 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            69 |           366 |           157 |          1139 |           506 |          2412 |          1452 |        5408 |        6371 |            NA |             NA |
| 2021-10-11 |      1075 |  18048 |      1027 |          356 |     58 |             34075 |             32807 |             57590 |             57846 |             85269 |             89416 |             74555 |             83908 |             77344 |             95219 |             65028 |             81783 |             47495 |             52129 |             30130 |             33871 |           25581 |           50852 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            69 |           366 |           157 |          1139 |           506 |          2412 |          1451 |        5405 |        6367 |            NA |             NA |
| 2021-10-10 |      1075 |  18041 |      1027 |          334 |     55 |             34057 |             32787 |             57583 |             57827 |             85232 |             89395 |             74523 |             83888 |             77325 |             95193 |             65007 |             81762 |             47481 |             52118 |             30120 |             33861 |           25576 |           50837 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            69 |           366 |           157 |          1139 |           506 |          2412 |          1450 |        5401 |        6365 |            NA |             NA |
| 2021-10-09 |      1074 |  18034 |      1026 |          321 |     55 |             34031 |             32751 |             57554 |             57798 |             85177 |             89369 |             74486 |             83848 |             77299 |             95165 |             64981 |             81732 |             47461 |             52098 |             30104 |             33844 |           25562 |           50814 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            69 |           366 |           157 |          1139 |           505 |          2410 |          1449 |        5399 |        6364 |            NA |             NA |
| 2021-10-08 |      1074 |  18027 |      1026 |          332 |     52 |             33995 |             32715 |             57510 |             57766 |             85105 |             89331 |             74433 |             83779 |             77261 |             95103 |             64948 |             81689 |             47425 |             52052 |             30083 |             33821 |           25556 |           50799 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           111 |            69 |           366 |           157 |          1139 |           505 |          2409 |          1448 |        5397 |        6361 |            NA |             NA |
| 2021-10-07 |      1073 |  18019 |      1025 |          353 |     57 |             33956 |             32679 |             57469 |             57732 |             85029 |             89283 |             74369 |             83714 |             77200 |             95045 |             64904 |             81624 |             47389 |             52003 |             30060 |             33788 |           25530 |           50756 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           110 |            69 |           366 |           157 |          1139 |           505 |          2408 |          1448 |        5394 |        6358 |            NA |             NA |
| 2021-10-06 |      1072 |  18008 |      1024 |          349 |     60 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-10-05 |      1072 |  18004 |        24 |          346 |     62 |             33879 |             32617 |             57429 |             57683 |             84944 |             89232 |             74294 |             83626 |             77128 |             94954 |             64833 |             81558 |             47336 |             51958 |             30018 |             33734 |           25473 |           50605 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           110 |            69 |           366 |           157 |          1139 |           504 |          2408 |          1448 |        5385 |        6353 |            NA |             NA |
| 2021-10-04 |      1071 |  18000 |      1023 |          351 |     68 |             33824 |             32567 |             57394 |             57645 |             84897 |             89194 |             74249 |             83570 |             77077 |             94883 |             64809 |             81513 |             47304 |             51928 |             29991 |             33708 |           25455 |           50564 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           110 |            69 |           365 |           157 |          1138 |           504 |          2407 |          1448 |        5384 |        6353 |            NA |             NA |
| 2021-10-03 |      1071 |  17993 |      1022 |          342 |     69 |             33803 |             32550 |             57386 |             57640 |             84881 |             89186 |             74231 |             83558 |             77067 |             94874 |             64797 |             81503 |             47298 |             51914 |             29985 |             33701 |           25449 |           50557 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           109 |            69 |           365 |           157 |          1138 |           504 |          2406 |          1447 |        5382 |        6351 |            NA |             NA |
| 2021-10-02 |      1070 |  17986 |      1022 |          337 |     65 |             33762 |             32507 |             57363 |             57620 |             84848 |             89156 |             74196 |             83528 |             77039 |             94843 |             64770 |             81474 |             47281 |             51887 |             29973 |             33687 |           25446 |           50550 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           109 |            69 |           365 |           157 |          1137 |           504 |          2404 |          1446 |        5381 |        6349 |            NA |             NA |
| 2021-10-01 |      1069 |  17979 |      1021 |          357 |     67 |             33720 |             32456 |             57315 |             57588 |             84778 |             89115 |             74157 |             83477 |             77012 |             94800 |             64741 |             81426 |             47257 |             51856 |             29954 |             33666 |           25416 |           50508 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            69 |           365 |           157 |          1137 |           504 |          2404 |          1446 |        5377 |        6347 |            NA |             NA |
| 2021-09-30 |      1069 |  17975 |      1020 |          366 |     66 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-09-29 |      1068 |  17968 |      1020 |          386 |     68 |             33605 |             32346 |             57238 |             57525 |             84686 |             89039 |             74042 |             83378 |             76908 |             94699 |             64658 |             81330 |             47191 |             51788 |             29916 |             33631 |           25380 |           50440 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            68 |           365 |           157 |          1135 |           503 |          2403 |          1445 |        5373 |        6346 |            NA |             NA |
| 2021-09-28 |      1067 |  17962 |      1019 |          399 |     74 |             33538 |             32276 |             57197 |             57478 |             84635 |             88999 |             73995 |             83337 |             76870 |             94649 |             64622 |             81282 |             47152 |             51729 |             29891 |             33602 |           25372 |           50419 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            68 |           365 |           157 |          1135 |           502 |          2401 |          1445 |        5372 |        6344 |            NA |             NA |
| 2021-09-27 |      1067 |  17955 |      1017 |          420 |     79 |             33489 |             32226 |             57174 |             57454 |             84596 |             88970 |             73949 |             83289 |             76834 |             94600 |             64594 |             81238 |             47120 |             51694 |             29871 |             33587 |           25355 |           50401 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           109 |            68 |           365 |           157 |          1133 |           502 |          2401 |          1445 |        5369 |        6342 |       8532169 |        6680104 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-10-16 | 1         |                   8.506 |     0.002 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.017 |       0.007 |     0.044 |       0.040 |     0.135 |       0.073 |     0.550 |       0.301 |     1.518 |       0.600 |   2.956 |     2.251 |
| 2021-10-15 | 1         |                  11.623 |     0.002 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.021 |       0.012 |     0.062 |       0.037 |     0.213 |       0.088 |     0.908 |       0.271 |     1.757 |       1.029 |   2.956 |     4.252 |
| 2021-10-14 | 0         |                  14.482 |     0.002 |       0.001 |     0.001 |       0.001 |     0.009 |       0.003 |     0.016 |       0.011 |     0.069 |       0.039 |     0.286 |       0.080 |     0.741 |       0.310 |     1.358 |       0.900 |   5.278 |     5.377 |
| 2021-10-13 | 1         |                  12.544 |     0.002 |       0.001 |     0.001 |       0.001 |     0.008 |       0.004 |     0.019 |       0.011 |     0.079 |       0.048 |     0.264 |       0.103 |     0.837 |       0.359 |     1.597 |       1.072 |   4.011 |     4.127 |
| 2021-10-12 | 1         |                  14.316 |     0.002 |       0.001 |     0.001 |       0.000 |     0.008 |       0.003 |     0.018 |       0.010 |     0.074 |       0.039 |     0.213 |       0.073 |     0.598 |       0.310 |     2.157 |       1.115 |   5.067 |     4.627 |
| 2021-10-11 | 0         |                   4.829 |     0.001 |       0.001 |     0.000 |       0.000 |     0.003 |       0.001 |     0.012 |       0.005 |     0.027 |       0.019 |     0.118 |       0.040 |     0.335 |       0.107 |     0.799 |       0.429 |   1.056 |     1.876 |
| 2021-10-10 | 1         |                   8.805 |     0.002 |       0.001 |     0.001 |       0.000 |     0.005 |       0.001 |     0.013 |       0.010 |     0.037 |       0.021 |     0.146 |       0.057 |     0.478 |       0.194 |     1.278 |       0.729 |   2.956 |     2.876 |
| 2021-10-09 | 0         |                   7.528 |     0.002 |       0.001 |     0.001 |       0.001 |     0.007 |       0.002 |     0.019 |       0.016 |     0.054 |       0.045 |     0.185 |       0.082 |     0.861 |       0.446 |     1.677 |       0.986 |   1.267 |     1.876 |
| 2021-10-08 | 1         |                  16.008 |     0.002 |       0.001 |     0.001 |       0.001 |     0.007 |       0.003 |     0.023 |       0.015 |     0.087 |       0.043 |     0.247 |       0.124 |     0.861 |       0.475 |     1.837 |       1.415 |   5.489 |     5.377 |
| 2021-10-07 | 1         |                  39.052 |     0.004 |       0.002 |     0.001 |       0.001 |     0.008 |       0.003 |     0.027 |       0.021 |     0.103 |       0.067 |     0.398 |       0.126 |     1.267 |       0.436 |     3.355 |       2.315 |  12.034 |    18.884 |
| 2021-10-05 | 1         |                  13.643 |     0.003 |       0.002 |     0.001 |       0.001 |     0.004 |       0.002 |     0.016 |       0.013 |     0.073 |       0.052 |     0.135 |       0.086 |     0.765 |       0.291 |     2.157 |       1.115 |   3.800 |     5.127 |
| 2021-10-04 | 0         |                   3.319 |     0.001 |       0.001 |     0.000 |       0.000 |     0.001 |       0.000 |     0.006 |       0.003 |     0.014 |       0.007 |     0.067 |       0.019 |     0.143 |       0.136 |     0.479 |       0.300 |   1.267 |     0.875 |
| 2021-10-03 | 1         |                   4.033 |     0.002 |       0.001 |     0.000 |       0.000 |     0.003 |       0.002 |     0.013 |       0.007 |     0.040 |       0.023 |     0.152 |       0.056 |     0.406 |       0.262 |     0.958 |       0.600 |   0.633 |     0.875 |
| 2021-10-02 | 1         |                  15.246 |     0.002 |       0.002 |     0.001 |       0.001 |     0.007 |       0.002 |     0.014 |       0.012 |     0.039 |       0.032 |     0.163 |       0.092 |     0.574 |       0.301 |     1.518 |       0.900 |   6.334 |     5.252 |
| 2021-10-01 | 0         |                  23.841 |     0.007 |       0.003 |     0.001 |       0.001 |     0.009 |       0.004 |     0.042 |       0.024 |     0.149 |       0.074 |     0.466 |       0.184 |     1.578 |       0.659 |     3.035 |       1.501 |   7.600 |     8.504 |
| 2021-09-29 | 1         |                   9.486 |     0.004 |       0.002 |     0.001 |       0.001 |     0.005 |       0.002 |     0.017 |       0.010 |     0.054 |       0.037 |     0.202 |       0.092 |     0.932 |       0.572 |     1.997 |       1.243 |   1.689 |     2.626 |
| 2021-09-28 | 0         |                   9.552 |     0.003 |       0.002 |     0.000 |       0.000 |     0.004 |       0.002 |     0.017 |       0.011 |     0.052 |       0.036 |     0.157 |       0.084 |     0.765 |       0.339 |     1.597 |       0.643 |   3.589 |     2.251 |
| 2021-09-27 | 1         |                   4.416 |     0.001 |       0.000 |     0.000 |       0.000 |     0.002 |       0.001 |     0.007 |       0.003 |     0.020 |       0.017 |     0.051 |       0.034 |     0.263 |       0.155 |     0.958 |       0.300 |   1.478 |     1.126 |
| 2021-09-26 | 0         |                   6.854 |     0.004 |       0.001 |     0.001 |       0.001 |     0.003 |       0.002 |     0.014 |       0.009 |     0.059 |       0.025 |     0.202 |       0.065 |     0.502 |       0.252 |     1.038 |       0.900 |   1.900 |     1.876 |
| 2021-09-25 | 1         |                  11.747 |     0.003 |       0.002 |     0.001 |       0.001 |     0.005 |       0.002 |     0.019 |       0.011 |     0.069 |       0.033 |     0.213 |       0.069 |     0.861 |       0.242 |     1.597 |       1.372 |   2.745 |     4.502 |
