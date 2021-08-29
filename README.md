COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, August 29, 2021)*

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
| 2021-08-29 |         1 |     10 |      1070 |           41 |      5 |            NA |             NA |                72 |                60 |               184 |               161 |               245 |               187 |               127 |               115 |                94 |               131 |                88 |                94 |                50 |                57 |                35 |                32 |              22 |              27 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |           4 |           5 |
| 2021-08-28 |         3 |      8 |      2835 |          -18 |     -1 |         37270 |          22730 |                82 |                83 |               215 |               244 |               315 |               277 |               164 |               164 |               124 |               174 |                99 |               138 |                59 |                83 |                33 |                41 |              16 |              55 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             2 |             0 |           3 |           2 |
| 2021-08-27 |         2 |     14 |      2338 |            5 |     -6 |         40730 |          14584 |                73 |                80 |               238 |               222 |               349 |               298 |               168 |               157 |               116 |               175 |                85 |               112 |                74 |                77 |                40 |                48 |              25 |              35 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             1 |             3 |             1 |           1 |           6 |
| 2021-08-26 |         3 |     15 |      2119 |          -18 |      6 |         48692 |          15450 |                93 |                83 |               250 |               232 |               349 |               317 |               195 |               147 |               125 |               148 |               106 |               125 |                74 |                90 |                49 |                65 |              43 |              60 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             0 |             1 |             0 |             2 |           3 |           7 |
| 2021-08-25 |         3 |     16 |      2236 |          -28 |     -4 |         47132 |          13433 |               109 |               106 |               326 |               319 |               442 |               369 |               170 |               207 |               138 |               196 |               116 |               164 |                73 |                98 |                56 |                75 |              31 |              59 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             1 |             1 |             0 |             3 |             1 |           2 |           6 |

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
| 2021-08-29 |      1034 |  17721 |    971567 |          698 |    148 |             31805 |             30604 |             54840 |             55221 |             81362 |             86302 |             71648 |             81005 |             74830 |             92161 |             62963 |             79219 |             45916 |             50283 |             29057 |             32683 |           24841 |           49466 |             2 |             1 |             1 |             1 |             8 |             5 |            26 |            20 |           106 |            66 |           353 |           153 |          1118 |           489 |          2376 |          1421 |        5309 |        6266 |            NA |             NA |
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
| 2021-08-17 |      1006 |  17584 |    945259 |          744 |    144 |             30804 |             29646 |             51937 |             52323 |             77253 |             82717 |             69744 |             79178 |             73458 |             90368 |             61854 |             77813 |             45209 |             49436 |             28600 |             32123 |           24525 |           48885 |             2 |             1 |             1 |             1 |             8 |             5 |            25 |            20 |           104 |            66 |           350 |           148 |          1111 |           484 |          2357 |          1411 |        5272 |        6218 |       7494705 |        5567766 |
| 2021-08-16 |      1004 |  17573 |    941593 |          768 |    154 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       7427563 |        5536360 |
| 2021-08-15 |      1003 |  17562 |    940406 |          744 |    157 |             30708 |             29543 |             51585 |             51966 |             76796 |             82292 |             69541 |             78965 |             73283 |             90172 |             61695 |             77661 |             45144 |             49347 |             28552 |             32076 |           24490 |           48823 |             2 |             1 |             1 |             1 |             8 |             5 |            25 |            20 |           104 |            66 |           350 |           148 |          1108 |           484 |          2356 |          1404 |        5268 |        6211 |       7379028 |        5533012 |
| 2021-08-14 |      1001 |  17549 |    939376 |          727 |    161 |             30623 |             29448 |             51340 |             51745 |             76454 |             82019 |             69392 |             78824 |             73177 |             90058 |             61605 |             77565 |             45085 |             49287 |             28520 |             32030 |           24469 |           48785 |             2 |             1 |             1 |             1 |             8 |             5 |            25 |            20 |           104 |            66 |           350 |           148 |          1108 |           483 |          2352 |          1404 |        5265 |        6206 |       7280047 |        5528274 |
| 2021-08-13 |    998547 |  17537 |    936555 |          732 |    162 |             30525 |             29371 |             51066 |             51479 |             76072 |             81681 |             69210 |             78634 |             73054 |             89910 |             61520 |             77444 |             45018 |             49221 |             28485 |             31982 |           24443 |           48746 |             2 |             1 |             1 |             1 |             8 |             5 |            25 |            20 |           103 |            66 |           350 |           147 |          1107 |           483 |          2351 |          1402 |        5263 |        6202 |       7201615 |        5488338 |
| 2021-08-12 |    995949 |  17525 |    934017 |          754 |    169 |             30428 |             29265 |             50795 |             51220 |             75713 |             81330 |             69041 |             78471 |             72936 |             89738 |             61406 |             77325 |             44960 |             49142 |             28451 |             31949 |           24404 |           48697 |             2 |             1 |             1 |             1 |             7 |             5 |            25 |            20 |           103 |            66 |           350 |           147 |          1105 |           483 |          2349 |          1401 |        5260 |        6199 |       7155540 |        5443210 |
| 2021-08-11 |    993241 |  17514 |    931808 |          785 |    181 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       7094437 |        5411701 |
| 2021-08-10 |    990293 |  17502 |    929547 |          829 |    186 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       7031406 |        5373928 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-08-29 | 1         |                  15.170 |     0.005 |       0.002 |     0.003 |       0.003 |     0.024 |       0.011 |     0.046 |       0.028 |     0.133 |       0.094 |     0.493 |       0.182 |     1.217 |       0.554 |     2.862 |       1.391 |   4.702 |     3.420 |
| 2021-08-28 | 3         |                  18.398 |     0.005 |       0.003 |     0.004 |       0.004 |     0.031 |       0.016 |     0.060 |       0.040 |     0.176 |       0.125 |     0.555 |       0.267 |     1.437 |       0.807 |     2.698 |       1.783 |   3.420 |     6.967 |
| 2021-08-27 | 2         |                  18.835 |     0.005 |       0.003 |     0.004 |       0.004 |     0.034 |       0.017 |     0.061 |       0.039 |     0.164 |       0.125 |     0.477 |       0.216 |     1.802 |       0.749 |     3.271 |       2.087 |   5.343 |     4.434 |
| 2021-08-26 | 3         |                  27.595 |     0.006 |       0.003 |     0.005 |       0.004 |     0.034 |       0.018 |     0.071 |       0.036 |     0.177 |       0.106 |     0.594 |       0.241 |     1.802 |       0.875 |     4.007 |       2.826 |   9.190 |     7.600 |
| 2021-08-25 | 3         |                  26.170 |     0.007 |       0.003 |     0.006 |       0.006 |     0.043 |       0.021 |     0.062 |       0.051 |     0.195 |       0.140 |     0.650 |       0.317 |     1.777 |       0.953 |     4.579 |       3.261 |   6.625 |     7.474 |
| 2021-08-24 | 2         |                  25.110 |     0.005 |       0.002 |     0.004 |       0.004 |     0.031 |       0.014 |     0.053 |       0.033 |     0.176 |       0.110 |     0.465 |       0.222 |     1.437 |       0.710 |     3.434 |       2.087 |   8.976 |     7.347 |
| 2021-08-23 | 1         |                   9.430 |     0.003 |       0.001 |     0.003 |       0.002 |     0.016 |       0.009 |     0.026 |       0.016 |     0.072 |       0.046 |     0.230 |       0.083 |     0.536 |       0.301 |     1.390 |       0.957 |   3.206 |     2.533 |
| 2021-08-22 | 2         |                  13.843 |     0.006 |       0.003 |     0.004 |       0.004 |     0.034 |       0.016 |     0.046 |       0.033 |     0.126 |       0.077 |     0.420 |       0.199 |     1.023 |       0.486 |     2.617 |       1.696 |   3.633 |     3.420 |
| 2021-08-21 | 3         |                  23.580 |     0.005 |       0.002 |     0.005 |       0.005 |     0.037 |       0.021 |     0.071 |       0.048 |     0.160 |       0.116 |     0.684 |       0.247 |     1.558 |       0.671 |     2.371 |       2.087 |   6.625 |     8.867 |
| 2021-08-20 | 2         |                  24.302 |     0.005 |       0.003 |     0.005 |       0.005 |     0.037 |       0.019 |     0.065 |       0.040 |     0.160 |       0.095 |     0.482 |       0.249 |     1.339 |       0.749 |     3.925 |       2.478 |   6.412 |     8.234 |
| 2021-08-19 | 3         |                  21.006 |     0.005 |       0.003 |     0.004 |       0.005 |     0.039 |       0.020 |     0.064 |       0.041 |     0.174 |       0.110 |     0.533 |       0.220 |     1.729 |       0.729 |     2.944 |       1.609 |   5.557 |     7.220 |
| 2021-08-18 | 3         |                  18.971 |     0.007 |       0.003 |     0.006 |       0.006 |     0.043 |       0.025 |     0.066 |       0.045 |     0.229 |       0.140 |     0.634 |       0.272 |     1.558 |       0.652 |     3.271 |       2.087 |   3.847 |     6.080 |
| 2021-08-17 | 2         |                  25.542 |     0.006 |       0.003 |     0.006 |       0.006 |     0.045 |       0.025 |     0.074 |       0.053 |     0.248 |       0.140 |     0.891 |       0.294 |     1.583 |       0.866 |     3.925 |       2.043 |   7.480 |     7.854 |
| 2021-08-15 | 2         |                  17.016 |     0.005 |       0.003 |     0.004 |       0.004 |     0.034 |       0.016 |     0.054 |       0.035 |     0.150 |       0.082 |     0.505 |       0.185 |     1.437 |       0.583 |     2.617 |       2.000 |   4.488 |     4.814 |
| 2021-08-14 | -997 546  |                  18.900 |     0.006 |       0.003 |     0.005 |       0.005 |     0.038 |       0.020 |     0.066 |       0.047 |     0.174 |       0.106 |     0.477 |       0.234 |     1.631 |       0.642 |     2.862 |       2.087 |   5.557 |     4.940 |
| 2021-08-13 | 2 598     |                  22.271 |     0.006 |       0.003 |     0.005 |       0.005 |     0.035 |       0.020 |     0.061 |       0.040 |     0.167 |       0.123 |     0.639 |       0.230 |     1.412 |       0.768 |     2.780 |       1.435 |   8.335 |     6.207 |
| 2021-08-12 | 2 708     |                 598.640 |     0.223 |       0.116 |     0.124 |       0.123 |     1.001 |       0.541 |     2.431 |       1.616 |     7.087 |       4.053 |    16.954 |       6.878 |    46.336 |      20.179 |    92.400 |      56.870 | 162.213 |   179.495 |
| 2021-07-14 | 4 153     |                  27.266 |     0.013 |       0.006 |     0.005 |       0.005 |     0.056 |       0.030 |     0.140 |       0.087 |     0.432 |       0.236 |     0.729 |       0.311 |     1.997 |       0.972 |     5.152 |       3.043 |   6.198 |     7.854 |
| 2021-07-13 | 2 650     |                  14.451 |     0.007 |       0.004 |     0.002 |       0.003 |     0.039 |       0.019 |     0.089 |       0.054 |     0.313 |       0.153 |     0.628 |       0.212 |     1.388 |       0.720 |     2.371 |       1.609 |   3.420 |     3.420 |
| 2021-07-12 | 1 782     |                   7.970 |     0.006 |       0.003 |     0.002 |       0.002 |     0.022 |       0.012 |     0.071 |       0.043 |     0.200 |       0.086 |     0.392 |       0.160 |     0.584 |       0.467 |     1.227 |       1.217 |   1.069 |     2.407 |
