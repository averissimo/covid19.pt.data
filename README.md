COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, August 22, 2021)*

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
| 2021-08-22 |         2 |      9 |      1226 |           27 |      7 |        126189 |           2345 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-08-21 |         3 |      8 |      2996 |           -6 |      2 |         55634 |          24380 |                82 |                69 |               281 |               281 |               376 |               360 |               195 |               194 |               113 |               162 |               122 |               128 |                64 |                69 |                29 |                48 |              31 |              70 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             2 |             0 |           3 |           1 |
| 2021-08-20 |         2 |      9 |      2391 |           -1 |      2 |         59253 |          15342 |                74 |                81 |               255 |               257 |               375 |               328 |               180 |               163 |               113 |               132 |                86 |               129 |                55 |                77 |                48 |                57 |              30 |              65 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             3 |             0 |           2 |           3 |
| 2021-08-19 |         3 |     12 |      2238 |           -7 |      2 |         60866 |          18742 |                80 |                98 |               243 |               256 |               397 |               348 |               176 |               168 |               123 |               154 |                95 |               114 |                71 |                75 |                36 |                37 |              26 |              57 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             1 |             0 |             2 |             1 |           4 |           3 |
| 2021-08-18 |         3 |     17 |      2206 |          -49 |     -5 |         55108 |          25709 |               111 |                92 |               322 |               316 |               440 |               435 |               183 |               181 |               162 |               196 |               113 |               141 |                64 |                67 |                40 |                48 |              18 |              48 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             2 |             2 |           7 |           5 |

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
| 2021-08-22 |      1019 |  17639 |    956316 |          708 |    152 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       7851755 |        5654284 |
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
| 2021-08-09 |    988061 |  17485 |    925842 |          857 |    189 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6981341 |        5337603 |
| 2021-08-08 |    986967 |  17467 |    924567 |          849 |    184 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6959984 |        5313927 |
| 2021-08-07 |    984985 |  17457 |    923510 |          838 |    186 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6924895 |        5261530 |
| 2021-08-06 |    982364 |  17440 |    920278 |          866 |    194 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6884703 |        5200840 |
| 2021-08-05 |    979987 |  17422 |    917367 |          898 |    196 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6847225 |        5135830 |
| 2021-08-04 |    977406 |  17412 |    912620 |          919 |    204 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6800840 |        5076293 |
| 2021-08-03 |    974203 |  17397 |    909330 |          945 |    204 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-08-21 | 3         |                  23.662 |     0.005 |       0.002 |     0.005 |       0.005 |     0.038 |       0.021 |     0.072 |       0.049 |     0.160 |       0.117 |     0.686 |       0.243 |     1.567 |       0.673 |     2.386 |       2.100 |   6.656 |     8.877 |
| 2021-08-20 | 2         |                  24.391 |     0.005 |       0.003 |     0.005 |       0.005 |     0.038 |       0.019 |     0.066 |       0.041 |     0.160 |       0.096 |     0.483 |       0.245 |     1.346 |       0.751 |     3.950 |       2.494 |   6.441 |     8.243 |
| 2021-08-19 | 3         |                  21.086 |     0.005 |       0.003 |     0.005 |       0.005 |     0.040 |       0.021 |     0.065 |       0.042 |     0.175 |       0.112 |     0.534 |       0.217 |     1.738 |       0.732 |     2.962 |       1.619 |   5.582 |     7.229 |
| 2021-08-18 | 3         |                  19.045 |     0.007 |       0.003 |     0.006 |       0.006 |     0.045 |       0.026 |     0.068 |       0.045 |     0.230 |       0.142 |     0.635 |       0.268 |     1.567 |       0.654 |     3.291 |       2.100 |   3.865 |     6.087 |
| 2021-08-17 | 2         |                  25.638 |     0.006 |       0.003 |     0.007 |       0.007 |     0.046 |       0.025 |     0.075 |       0.053 |     0.248 |       0.142 |     0.894 |       0.289 |     1.591 |       0.868 |     3.950 |       2.057 |   7.514 |     7.863 |
| 2021-08-15 | 2         |                  17.083 |     0.005 |       0.003 |     0.005 |       0.004 |     0.035 |       0.016 |     0.055 |       0.035 |     0.150 |       0.083 |     0.506 |       0.183 |     1.444 |       0.585 |     2.633 |       2.013 |   4.509 |     4.819 |
| 2021-08-14 | -997 546  |                  18.975 |     0.006 |       0.003 |     0.005 |       0.005 |     0.039 |       0.020 |     0.067 |       0.048 |     0.175 |       0.107 |     0.478 |       0.230 |     1.640 |       0.644 |     2.880 |       2.100 |   5.582 |     4.946 |
| 2021-08-13 | 2 598     |                  22.360 |     0.006 |       0.004 |     0.005 |       0.005 |     0.036 |       0.021 |     0.062 |       0.041 |     0.168 |       0.125 |     0.641 |       0.226 |     1.420 |       0.771 |     2.798 |       1.444 |   8.373 |     6.214 |
| 2021-08-12 | 2 708     |                 600.983 |     0.228 |       0.118 |     0.128 |       0.128 |     1.033 |       0.555 |     2.471 |       1.639 |     7.102 |       4.104 |    16.997 |       6.774 |    46.588 |      20.239 |    92.984 |      57.237 | 162.955 |   179.703 |
| 2021-07-14 | 4 153     |                  27.377 |     0.013 |       0.006 |     0.005 |       0.005 |     0.058 |       0.031 |     0.143 |       0.089 |     0.433 |       0.239 |     0.731 |       0.306 |     2.007 |       0.975 |     5.184 |       3.063 |   6.226 |     7.863 |
| 2021-07-13 | 2 650     |                  14.510 |     0.007 |       0.004 |     0.003 |       0.003 |     0.040 |       0.019 |     0.091 |       0.055 |     0.314 |       0.154 |     0.630 |       0.209 |     1.395 |       0.722 |     2.386 |       1.619 |   3.435 |     3.424 |
| 2021-07-12 | 1 782     |                   7.999 |     0.006 |       0.003 |     0.002 |       0.002 |     0.023 |       0.012 |     0.072 |       0.043 |     0.200 |       0.087 |     0.393 |       0.158 |     0.588 |       0.468 |     1.234 |       1.225 |   1.073 |     2.410 |
| 2021-07-11 | 2 323     |                  25.805 |     0.016 |       0.010 |     0.008 |       0.008 |     0.070 |       0.039 |     0.184 |       0.117 |     0.544 |       0.323 |     1.197 |       0.495 |     3.011 |       1.131 |     4.526 |       3.326 |   4.079 |     6.721 |
| 2021-07-09 | 3 194     |                  33.882 |     0.019 |       0.011 |     0.008 |       0.010 |     0.083 |       0.049 |     0.218 |       0.148 |     0.728 |       0.377 |     1.158 |       0.476 |     3.354 |       1.502 |     5.102 |       3.545 |   6.441 |    10.653 |
| 2021-07-07 | 3 285     |                  15.072 |     0.012 |       0.005 |     0.004 |       0.004 |     0.042 |       0.023 |     0.114 |       0.074 |     0.349 |       0.210 |     0.669 |       0.283 |     1.861 |       0.849 |     3.374 |       1.882 |   2.147 |     3.170 |
| 2021-07-06 | 2 170     |                  10.317 |     0.005 |       0.003 |     0.002 |       0.003 |     0.031 |       0.016 |     0.080 |       0.047 |     0.277 |       0.137 |     0.500 |       0.177 |     0.759 |       0.575 |     2.304 |       1.050 |   2.576 |     1.775 |
| 2021-07-05 | 1 483     |                   7.366 |     0.005 |       0.002 |     0.002 |       0.002 |     0.019 |       0.011 |     0.052 |       0.035 |     0.155 |       0.088 |     0.259 |       0.126 |     0.783 |       0.234 |     1.728 |       1.006 |   1.718 |     1.141 |
| 2021-07-04 | 2 041     |                   9.162 |     0.007 |       0.003 |     0.003 |       0.003 |     0.026 |       0.015 |     0.072 |       0.047 |     0.217 |       0.119 |     0.399 |       0.183 |     0.881 |       0.449 |     1.893 |       1.138 |   1.932 |     1.775 |
| 2021-07-03 | 2 605     |                  12.015 |     0.008 |       0.004 |     0.003 |       0.004 |     0.035 |       0.017 |     0.098 |       0.067 |     0.267 |       0.156 |     0.579 |       0.194 |     1.518 |       0.488 |     1.810 |       1.488 |   2.362 |     2.917 |
| 2021-07-02 | 2 436     |                  11.507 |     0.007 |       0.004 |     0.004 |       0.003 |     0.035 |       0.018 |     0.093 |       0.053 |     0.257 |       0.125 |     0.495 |       0.173 |     1.298 |       0.527 |     1.893 |       1.663 |   2.576 |     2.283 |
