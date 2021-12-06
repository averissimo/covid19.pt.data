COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, December 06, 2021)*

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
| 2021-12-06 |         3 |     14 |         2 |           37 |      1 |            NA |             NA |               149 |               158 |               142 |               109 |               174 |               140 |               161 |               173 |               192 |               211 |               128 |               144 |                94 |                94 |                48 |                59 |              19 |              19 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             6 |             0 |           5 |           3 |
| 2021-12-05 |         3 |     23 |         1 |           32 |      4 |            NA |             NA |               264 |               258 |               237 |               192 |               307 |               198 |               232 |               256 |               351 |               369 |               208 |               249 |               191 |               204 |                91 |                90 |              34 |              51 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             2 |             0 |             3 |             0 |           7 |          10 |
| 2021-12-04 |         6 |     22 |         3 |          -23 |      1 |            NA |             NA |               356 |               283 |               338 |               283 |               456 |               367 |               428 |               378 |               468 |               528 |               378 |               388 |               274 |               293 |               178 |               151 |              37 |              64 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             2 |             2 |             3 |             5 |           6 |           3 |
| 2021-12-03 |         3 |     21 |         4 |          -14 |      1 |            NA |             NA |               139 |               119 |               138 |               104 |               198 |               145 |               188 |               199 |               214 |               214 |               174 |               160 |               139 |               143 |                91 |                92 |              25 |              49 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             3 |             0 |             0 |             3 |          10 |           5 |
| 2021-12-02 |         3 |     13 |         1 |           75 |     12 |            NA |             NA |               201 |               195 |               158 |               163 |               221 |               157 |               224 |               228 |               233 |               241 |               182 |               195 |               138 |               121 |                86 |                76 |              32 |              47 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             1 |             4 |           3 |           4 |

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
| 2021-12-06 |      1169 |  18551 |      1088 |          948 |    135 |             39953 |             38500 |             62765 |             62099 |             93181 |             94867 |             81081 |             90394 |             84444 |            103152 |             70534 |             87995 |             51930 |             57078 |             33148 |             37142 |           26881 |           53048 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           376 |           160 |          1169 |           523 |          2478 |          1514 |        5548 |        6532 |            NA |             NA |
| 2021-12-05 |      1166 |  18537 |      1086 |          911 |    134 |             39804 |             38342 |             62623 |             61990 |             93007 |             94727 |             80920 |             90221 |             84252 |            102941 |             70406 |             87851 |             51836 |             56984 |             33100 |             37083 |           26862 |           53029 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           376 |           160 |          1169 |           523 |          2472 |          1514 |        5543 |        6529 |            NA |             NA |
| 2021-12-04 |      1163 |  18514 |      1085 |          879 |    130 |             39540 |             38084 |             62386 |             61798 |             92700 |             94529 |             80688 |             89965 |             83901 |            102572 |             70198 |             87602 |             51645 |             56780 |             33009 |             36993 |           26828 |           52978 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           375 |           160 |          1167 |           523 |          2469 |          1514 |        5536 |        6519 |            NA |             NA |
| 2021-12-03 |      1157 |  18492 |      1082 |          902 |    129 |             39184 |             37801 |             62048 |             61515 |             92244 |             94162 |             80260 |             89587 |             83433 |            102044 |             69820 |             87214 |             51371 |             56487 |             32831 |             36842 |           26791 |           52914 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           375 |           159 |          1165 |           521 |          2466 |          1509 |        5530 |        6516 |            NA |             NA |
| 2021-12-02 |      1154 |  18471 |      1078 |          916 |    128 |             39045 |             37682 |             61910 |             61411 |             92046 |             94017 |             80072 |             89388 |             83219 |            101830 |             69646 |             87054 |             51232 |             56344 |             32740 |             36750 |           26766 |           52865 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           375 |           159 |          1162 |           521 |          2466 |          1506 |        5520 |        6511 |            NA |             NA |
| 2021-12-01 |      1151 |  18458 |      1077 |          841 |    116 |             38844 |             37487 |             61752 |             61248 |             91825 |             93860 |             79848 |             89160 |             82986 |            101589 |             69464 |             86859 |             51094 |             56223 |             32654 |             36674 |           26734 |           52818 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           374 |           159 |          1162 |           521 |          2465 |          1502 |        5517 |        6507 |            NA |             NA |
| 2021-11-30 |      1147 |  18441 |      1075 |          833 |    116 |             38544 |             37164 |             61478 |             61041 |             91483 |             93617 |             79516 |             88793 |             82602 |            101188 |             69171 |             86532 |             50850 |             55984 |             32529 |             36521 |           26690 |           52749 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           373 |           159 |          1162 |           520 |          2460 |          1500 |        5512 |        6504 |            NA |             NA |
| 2021-11-29 |      1144 |  18430 |      1071 |          809 |    111 |             38369 |             37009 |             61320 |             60907 |             91246 |             93469 |             79308 |             88587 |             82382 |            100932 |             68986 |             86308 |             50708 |             55832 |             32421 |             36409 |           26661 |           52700 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           372 |           159 |          1161 |           520 |          2458 |          1498 |        5510 |        6501 |            NA |             NA |
| 2021-11-28 |      1142 |  18417 |      1070 |          764 |    104 |             38247 |             36902 |             61237 |             60834 |             91139 |             93387 |             79166 |             88450 |             82249 |            100790 |             68900 |             86192 |             50628 |             55751 |             32369 |             36363 |           26644 |           52672 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           371 |           159 |          1160 |           519 |          2457 |          1497 |        5504 |        6499 |            NA |             NA |
| 2021-11-27 |      1139 |  18405 |      1069 |          708 |    104 |             38024 |             36700 |             61046 |             60691 |             90882 |             93231 |             78977 |             88250 |             82026 |            100535 |             68741 |             86005 |             50497 |             55584 |             32292 |             36295 |           26618 |           52630 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           371 |           158 |          1158 |           519 |          2456 |          1495 |        5501 |        6496 |            NA |             NA |
| 2021-11-26 |      1136 |  18393 |      1067 |          705 |    100 |             37805 |             36465 |             60862 |             60541 |             90604 |             93044 |             78735 |             88016 |             81768 |            100296 |             68548 |             85778 |             50335 |             55387 |             32189 |             36160 |           26567 |           52562 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           371 |           158 |          1157 |           519 |          2453 |          1494 |        5499 |        6492 |            NA |             NA |
| 2021-11-25 |      1133 |  18385 |      1065 |          691 |    103 |             37612 |             36240 |             60664 |             60393 |             90341 |             92864 |             78520 |             87797 |             81514 |            100023 |             68359 |             85576 |             50174 |             55199 |             32094 |             36048 |           26538 |           52508 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           371 |           158 |          1157 |           519 |          2451 |          1494 |        5495 |        6490 |            NA |             NA |
| 2021-11-24 |      1130 |  18370 |      1063 |          681 |    105 |             37372 |             36023 |             60503 |             60231 |             90081 |             92711 |             78318 |             87596 |             81300 |             99750 |             68189 |             85374 |             49990 |             55015 |             31993 |             35911 |           26508 |           52454 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           371 |           158 |          1157 |           519 |          2447 |          1490 |        5491 |        6487 |            NA |             NA |
| 2021-11-23 |      1126 |  18353 |      1062 |          649 |     93 |             37127 |             35783 |             60301 |             60037 |             89793 |             92509 |             78082 |             87344 |             81013 |             99392 |             67958 |             85097 |             49803 |             54800 |             31882 |             35774 |           26466 |           52380 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           371 |           158 |          1154 |           519 |          2445 |          1488 |        5488 |        6480 |            NA |             NA |
| 2021-11-22 |      1123 |  18339 |      1059 |          628 |     93 |             36996 |             35628 |             60183 |             59929 |             89602 |             92386 |             77913 |             87165 |             80812 |             99145 |             67779 |             84898 |             49667 |             54666 |             31783 |             35672 |           26429 |           52333 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           370 |           158 |          1153 |           518 |          2442 |          1484 |        5486 |        6478 |            NA |             NA |
| 2021-11-21 |      1122 |  18321 |      1059 |          597 |     89 |             36865 |             35518 |             60097 |             59843 |             89502 |             92309 |             77831 |             87079 |             80693 |             99014 |             67688 |             84804 |             49607 |             54595 |             31735 |             35633 |           26404 |           52296 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           367 |           158 |          1153 |           517 |          2441 |          1483 |        5482 |        6471 |            NA |             NA |
| 2021-11-20 |      1119 |  18310 |      1058 |          544 |     88 |             36707 |             35359 |             59953 |             59737 |             89338 |             92169 |             77664 |             86926 |             80488 |             98810 |             67534 |             84652 |             49466 |             54429 |             31644 |             35517 |           26375 |           52244 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1151 |           517 |          2441 |          1482 |        5479 |        6467 |            NA |             NA |
| 2021-11-19 |      1117 |  18300 |      1056 |          528 |     79 |             36554 |             35226 |             59803 |             59638 |             89148 |             92032 |             77505 |             86784 |             80307 |             98603 |             67417 |             84504 |             49375 |             54276 |             31544 |             35420 |           26343 |           52203 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1151 |           516 |          2439 |          1481 |        5476 |        6464 |            NA |             NA |
| 2021-11-18 |      1115 |  18295 |      1055 |          523 |     72 |             36385 |             35069 |             59691 |             59549 |             88968 |             91862 |             77341 |             86629 |             80120 |             98396 |             67277 |             84358 |             49283 |             54151 |             31452 |             35312 |           26304 |           52163 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1151 |           516 |          2437 |          1481 |        5474 |        6463 |            NA |             NA |
| 2021-11-17 |      1112 |  18283 |      1054 |          514 |     75 |             36229 |             34901 |             59575 |             59444 |             88791 |             91748 |             77189 |             86444 |             79961 |             98182 |             67139 |             84186 |             49159 |             54019 |             31351 |             35195 |           26276 |           52121 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           112 |            72 |           366 |           158 |          1150 |           516 |          2437 |          1478 |        5471 |        6458 |            NA |             NA |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-12-06 | 3         |                  16.710 |     0.007 |       0.004 |     0.002 |       0.002 |     0.015 |       0.007 |     0.054 |       0.038 |     0.259 |       0.147 |     0.682 |       0.262 |     2.116 |       0.861 |     3.588 |       2.405 |   3.921 |     2.340 |
| 2021-12-05 | 3         |                  32.429 |     0.013 |       0.007 |     0.004 |       0.003 |     0.026 |       0.010 |     0.077 |       0.057 |     0.474 |       0.258 |     1.109 |       0.453 |     4.300 |       1.869 |     6.803 |       3.669 |   7.017 |     6.280 |
| 2021-12-04 | 6         |                  47.873 |     0.018 |       0.007 |     0.005 |       0.005 |     0.039 |       0.019 |     0.143 |       0.084 |     0.632 |       0.369 |     2.015 |       0.705 |     6.168 |       2.685 |    13.307 |       6.155 |   7.636 |     7.881 |
| 2021-12-03 | 3         |                  27.989 |     0.007 |       0.003 |     0.002 |       0.002 |     0.017 |       0.008 |     0.063 |       0.044 |     0.289 |       0.149 |     0.928 |       0.291 |     3.129 |       1.310 |     6.803 |       3.750 |   5.160 |     6.034 |
| 2021-12-02 | 3         |                  28.116 |     0.010 |       0.005 |     0.003 |       0.003 |     0.019 |       0.008 |     0.075 |       0.050 |     0.315 |       0.168 |     0.970 |       0.355 |     3.107 |       1.109 |     6.429 |       3.098 |   6.605 |     5.787 |
| 2021-12-01 | 4         |                  44.060 |     0.015 |       0.008 |     0.004 |       0.003 |     0.029 |       0.013 |     0.111 |       0.081 |     0.518 |       0.280 |     1.562 |       0.595 |     5.493 |       2.190 |     9.344 |       6.237 |   9.081 |     8.496 |
| 2021-11-30 | 3         |                  31.278 |     0.009 |       0.004 |     0.003 |       0.002 |     0.020 |       0.008 |     0.069 |       0.046 |     0.297 |       0.179 |     0.986 |       0.407 |     3.197 |       1.393 |     8.074 |       4.565 |   5.985 |     6.034 |
| 2021-11-29 | 2         |                  16.311 |     0.006 |       0.003 |     0.001 |       0.001 |     0.009 |       0.004 |     0.047 |       0.030 |     0.180 |       0.099 |     0.458 |       0.211 |     1.801 |       0.742 |     3.887 |       1.875 |   3.509 |     3.448 |
| 2021-11-28 | 3         |                  25.370 |     0.011 |       0.005 |     0.003 |       0.002 |     0.022 |       0.008 |     0.063 |       0.044 |     0.301 |       0.178 |     0.848 |       0.340 |     2.949 |       1.530 |     5.756 |       2.772 |   5.366 |     5.172 |
| 2021-11-27 | 3         |                  39.700 |     0.011 |       0.006 |     0.003 |       0.002 |     0.024 |       0.010 |     0.081 |       0.052 |     0.348 |       0.167 |     1.029 |       0.413 |     3.647 |       1.805 |     7.700 |       5.503 |  10.526 |     8.373 |
| 2021-11-26 | 3         |                  31.730 |     0.010 |       0.006 |     0.003 |       0.002 |     0.023 |       0.009 |     0.072 |       0.048 |     0.343 |       0.191 |     1.008 |       0.367 |     3.624 |       1.723 |     7.102 |       4.565 |   5.985 |     6.649 |
| 2021-11-25 | 3         |                  33.721 |     0.012 |       0.006 |     0.003 |       0.003 |     0.022 |       0.008 |     0.067 |       0.044 |     0.289 |       0.191 |     0.906 |       0.367 |     4.142 |       1.686 |     7.550 |       5.584 |   6.192 |     6.649 |
| 2021-11-24 | 4         |                  40.409 |     0.012 |       0.006 |     0.003 |       0.003 |     0.025 |       0.011 |     0.079 |       0.056 |     0.387 |       0.250 |     1.231 |       0.504 |     4.210 |       1.970 |     8.298 |       5.584 |   8.668 |     9.112 |
| 2021-11-23 | 3         |                  31.164 |     0.007 |       0.004 |     0.002 |       0.002 |     0.016 |       0.006 |     0.056 |       0.040 |     0.271 |       0.172 |     0.954 |       0.362 |     3.062 |       1.228 |     7.401 |       4.158 |   7.636 |     5.787 |
| 2021-11-22 | 1         |                  17.875 |     0.007 |       0.003 |     0.001 |       0.001 |     0.009 |       0.004 |     0.027 |       0.019 |     0.161 |       0.091 |     0.485 |       0.171 |     1.351 |       0.651 |     3.588 |       1.590 |   5.160 |     4.556 |
| 2021-11-21 | 3         |                  30.257 |     0.008 |       0.004 |     0.002 |       0.002 |     0.014 |       0.007 |     0.056 |       0.034 |     0.277 |       0.142 |     0.821 |       0.276 |     3.174 |       1.521 |     6.803 |       4.728 |   5.985 |     6.403 |
| 2021-11-20 | 2         |                  27.937 |     0.008 |       0.003 |     0.002 |       0.002 |     0.016 |       0.007 |     0.053 |       0.031 |     0.244 |       0.144 |     0.624 |       0.269 |     2.049 |       1.402 |     7.476 |       3.954 |   6.605 |     5.048 |
| 2021-11-19 | 2         |                  29.005 |     0.008 |       0.004 |     0.002 |       0.001 |     0.015 |       0.009 |     0.055 |       0.034 |     0.252 |       0.144 |     0.746 |       0.265 |     2.071 |       1.145 |     6.878 |       4.402 |   8.049 |     4.925 |
| 2021-11-18 | 3         |                  28.813 |     0.008 |       0.004 |     0.002 |       0.002 |     0.015 |       0.006 |     0.051 |       0.041 |     0.215 |       0.149 |     0.736 |       0.313 |     2.791 |       1.210 |     7.550 |       4.769 |   5.779 |     5.172 |
| 2021-11-17 | 2         |                  27.881 |     0.008 |       0.004 |     0.002 |       0.001 |     0.018 |       0.008 |     0.061 |       0.042 |     0.262 |       0.143 |     0.864 |       0.351 |     2.409 |       1.228 |     6.504 |       3.750 |   6.192 |     6.034 |
