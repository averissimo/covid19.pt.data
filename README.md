COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Monday, September 06, 2021)*

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
| 2021-09-06 |         0 |     12 |      1109 |           17 |      2 |         10542 |          40078 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-09-05 |         2 |     13 |      1112 |            1 |     -1 |            NA |             NA |                67 |                43 |                94 |                98 |               145 |               105 |                86 |                77 |                74 |                87 |                55 |                67 |                34 |                51 |                26 |                28 |              20 |              31 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             1 |             0 |             1 |           5 |           5 |
| 2021-09-04 |         1 |     13 |      2651 |          -17 |      3 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-09-03 |         2 |      6 |      2464 |          -14 |     -4 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-09-02 |         3 |      9 |      2137 |           14 |      9 |         43945 |          59719 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |

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
| 2021-09-06 |      1047 |  17810 |    987935 |          682 |    140 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       8370475 |        6021520 |
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
| 2021-08-23 |      1020 |  17645 |    957359 |          733 |    151 |             31292 |             30123 |             53406 |             53796 |             79346 |             84606 |             70677 |             80083 |             74109 |             91184 |             62386 |             78471 |             45527 |             49805 |             28802 |             32374 |           24662 |           49172 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           350 |           149 |          1114 |           486 |          2368 |          1415 |        5292 |        6235 |            NA |             NA |
| 2021-08-22 |      1019 |  17639 |    956316 |          708 |    152 |             31244 |             30085 |             53265 |             53667 |             79186 |             84457 |             70606 |             80017 |             74058 |             91120 |             62345 |             78428 |             45505 |             49774 |             28785 |             32352 |           24647 |           49152 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           350 |           149 |          1114 |           485 |          2367 |          1415 |        5292 |        6231 |       7894394 |        5655895 |
| 2021-08-21 |      1017 |  17630 |    955090 |          681 |    145 |             31151 |             29986 |             53038 |             53433 |             78841 |             84188 |             70478 |             79884 |             73969 |             91012 |             62270 |             78325 |             45463 |             49724 |             28753 |             32313 |           24630 |           49125 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           105 |            66 |           350 |           149 |          1113 |           485 |          2366 |          1414 |        5288 |        6230 |       7725566 |        5651939 |
| 2021-08-20 |      1014 |  17622 |    952094 |          687 |    143 |             31069 |             29917 |             52757 |             53152 |             78465 |             83828 |             70283 |             79690 |             73856 |             90850 |             62148 |             78197 |             45399 |             49655 |             28724 |             32265 |           24599 |           49055 |             2 |             1 |             1 |             1 |             8 |             5 |            25 |            20 |           105 |            66 |           350 |           149 |          1113 |           484 |          2364 |          1414 |        5285 |        6229 |       7669932 |        5627559 |
| 2021-08-19 |      1012 |  17613 |    949703 |          688 |    141 |             30995 |             29836 |             52502 |             52895 |             78090 |             83500 |             70103 |             79527 |             73743 |             90718 |             62062 |             78068 |             45344 |             49578 |             28676 |             32208 |           24569 |           48990 |             2 |             1 |             1 |             1 |             8 |             5 |            25 |            20 |           105 |            66 |           350 |           148 |          1113 |           484 |          2361 |          1414 |        5283 |        6226 |       7610679 |        5612217 |
| 2021-08-18 |      1009 |  17601 |    947465 |          695 |    139 |             30915 |             29738 |             52259 |             52639 |             77693 |             83152 |             69927 |             79359 |             73620 |             90564 |             61967 |             77954 |             45273 |             49503 |             28640 |             32171 |           24543 |           48933 |             2 |             1 |             1 |             1 |             8 |             5 |            25 |            20 |           104 |            66 |           350 |           148 |          1112 |           484 |          2359 |          1413 |        5279 |        6223 |       7549813 |        5593475 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-09-05 | 2         |                  13.517 |     0.004 |       0.001 |     0.002 |       0.002 |     0.014 |       0.006 |     0.031 |       0.019 |     0.104 |       0.063 |     0.309 |       0.128 |     0.825 |       0.498 |     2.113 |       1.212 |   4.263 |     3.923 |
| 2021-09-04 | 1         |                  36.473 |     0.010 |       0.005 |     0.005 |       0.005 |     0.039 |       0.021 |     0.087 |       0.061 |     0.296 |       0.185 |     1.006 |       0.322 |     2.985 |       1.454 |     5.363 |       3.767 |  10.231 |    10.631 |
| 2021-09-02 | 3         |                  40.828 |     0.011 |       0.006 |     0.007 |       0.007 |     0.051 |       0.023 |     0.110 |       0.072 |     0.372 |       0.251 |     1.169 |       0.504 |     3.543 |       1.619 |     7.964 |       5.369 |  12.789 |     6.961 |
| 2021-08-31 | 1         |                  19.642 |     0.005 |       0.002 |     0.003 |       0.003 |     0.022 |       0.011 |     0.052 |       0.036 |     0.163 |       0.101 |     0.500 |       0.195 |     1.529 |       0.546 |     3.982 |       1.775 |   4.263 |     6.454 |
| 2021-08-30 | 2         |                  11.197 |     0.002 |       0.001 |     0.002 |       0.002 |     0.013 |       0.007 |     0.029 |       0.021 |     0.094 |       0.046 |     0.270 |       0.111 |     0.777 |       0.332 |     1.300 |       0.823 |   2.558 |     4.809 |
| 2021-08-29 | 1         |                  15.125 |     0.004 |       0.002 |     0.003 |       0.003 |     0.024 |       0.011 |     0.046 |       0.028 |     0.132 |       0.094 |     0.494 |       0.180 |     1.213 |       0.556 |     2.844 |       1.385 |   4.689 |     3.417 |
| 2021-08-28 | 3         |                  18.350 |     0.005 |       0.003 |     0.004 |       0.004 |     0.030 |       0.016 |     0.059 |       0.040 |     0.174 |       0.125 |     0.556 |       0.264 |     1.432 |       0.810 |     2.682 |       1.775 |   3.410 |     6.961 |
| 2021-08-27 | 2         |                  18.781 |     0.005 |       0.003 |     0.004 |       0.004 |     0.034 |       0.017 |     0.060 |       0.038 |     0.163 |       0.126 |     0.478 |       0.215 |     1.796 |       0.751 |     3.251 |       2.078 |   5.329 |     4.429 |
| 2021-08-26 | 3         |                  27.521 |     0.006 |       0.003 |     0.004 |       0.004 |     0.034 |       0.018 |     0.070 |       0.036 |     0.175 |       0.107 |     0.596 |       0.239 |     1.796 |       0.878 |     3.982 |       2.814 |   9.166 |     7.593 |
| 2021-08-25 | 3         |                  26.100 |     0.007 |       0.003 |     0.006 |       0.006 |     0.043 |       0.021 |     0.061 |       0.051 |     0.194 |       0.141 |     0.652 |       0.314 |     1.772 |       0.956 |     4.551 |       3.247 |   6.608 |     7.467 |
| 2021-08-24 | 2         |                  25.042 |     0.005 |       0.002 |     0.004 |       0.004 |     0.031 |       0.014 |     0.053 |       0.032 |     0.174 |       0.110 |     0.466 |       0.220 |     1.432 |       0.712 |     3.413 |       2.078 |   8.952 |     7.340 |
| 2021-08-23 | 1         |                   9.402 |     0.003 |       0.001 |     0.003 |       0.002 |     0.015 |       0.009 |     0.025 |       0.016 |     0.072 |       0.046 |     0.230 |       0.082 |     0.534 |       0.302 |     1.381 |       0.953 |   3.197 |     2.531 |
| 2021-08-22 | 2         |                  13.801 |     0.006 |       0.003 |     0.004 |       0.004 |     0.033 |       0.015 |     0.046 |       0.032 |     0.125 |       0.078 |     0.421 |       0.197 |     1.019 |       0.488 |     2.600 |       1.689 |   3.624 |     3.417 |
| 2021-08-21 | 3         |                  23.525 |     0.005 |       0.002 |     0.005 |       0.005 |     0.036 |       0.021 |     0.070 |       0.047 |     0.159 |       0.117 |     0.685 |       0.245 |     1.553 |       0.673 |     2.357 |       2.078 |   6.608 |     8.859 |
| 2021-08-20 | 2         |                  24.238 |     0.005 |       0.003 |     0.005 |       0.005 |     0.036 |       0.019 |     0.065 |       0.040 |     0.159 |       0.095 |     0.483 |       0.247 |     1.335 |       0.751 |     3.901 |       2.468 |   6.395 |     8.226 |
| 2021-08-19 | 3         |                  20.953 |     0.005 |       0.003 |     0.004 |       0.005 |     0.038 |       0.020 |     0.063 |       0.041 |     0.173 |       0.111 |     0.534 |       0.218 |     1.723 |       0.732 |     2.925 |       1.602 |   5.542 |     7.214 |
| 2021-08-18 | 3         |                  18.921 |     0.007 |       0.003 |     0.006 |       0.006 |     0.043 |       0.025 |     0.066 |       0.044 |     0.227 |       0.141 |     0.635 |       0.270 |     1.553 |       0.654 |     3.251 |       2.078 |   3.837 |     6.075 |
| 2021-08-17 | 2         |                  25.471 |     0.006 |       0.003 |     0.006 |       0.006 |     0.044 |       0.024 |     0.073 |       0.052 |     0.245 |       0.141 |     0.893 |       0.291 |     1.577 |       0.868 |     3.901 |       2.035 |   7.460 |     7.846 |
| 2021-08-15 | 2         |                  16.967 |     0.005 |       0.003 |     0.004 |       0.004 |     0.033 |       0.016 |     0.053 |       0.034 |     0.149 |       0.082 |     0.506 |       0.184 |     1.432 |       0.585 |     2.600 |       1.992 |   4.476 |     4.809 |
| 2021-08-14 | -997 546  |                  18.845 |     0.006 |       0.002 |     0.005 |       0.005 |     0.037 |       0.019 |     0.065 |       0.046 |     0.173 |       0.107 |     0.478 |       0.232 |     1.626 |       0.644 |     2.844 |       2.078 |   5.542 |     4.936 |
