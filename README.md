COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Thursday, August 12, 2021)*

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
| 2021-08-12 |      2708 |     11 |      2209 |          -31 |    -12 |         61103 |          31509 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-08-11 |      2948 |     12 |      2261 |          -44 |     -5 |         63031 |          37773 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-08-10 |      2232 |     17 |      3705 |          -28 |     -3 |         50065 |          36325 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-08-09 |      1094 |     18 |      1275 |            8 |      5 |         21357 |          23676 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-08-08 |      1982 |     10 |      1057 |           11 |     -2 |         35089 |          52397 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |

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
| 2021-08-02 |    972127 |  17378 |    904962 |          968 |    203 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6772846 |        5019116 |
| 2021-08-01 |    970937 |  17369 |    903514 |          923 |    200 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6728838 |        4927955 |
| 2021-07-31 |    968631 |  17361 |    902014 |          895 |    195 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6696690 |        4870991 |
| 2021-07-30 |    966041 |  17344 |    897886 |          924 |    199 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6662914 |        4811344 |
| 2021-07-29 |    963446 |  17330 |    894555 |          954 |    208 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6633199 |        4753260 |
| 2021-07-28 |    960437 |  17320 |    891687 |          934 |    200 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6605125 |        4694022 |
| 2021-07-27 |    956985 |  17307 |    888423 |          928 |    200 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6577209 |        4636317 |
| 2021-07-26 |    954669 |  17301 |    883372 |          919 |    198 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6551567 |        4575617 |
| 2021-07-25 |    953059 |  17292 |    881570 |          879 |    193 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6534047 |        4544669 |
| 2021-07-24 |    950434 |  17284 |    880368 |          835 |    181 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6495768 |        4489123 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-08-12 | 2 708     |                 603.255 |     0.233 |       0.121 |     0.134 |       0.133 |     0.941 |       0.574 |     2.426 |       1.668 |     7.065 |       4.162 |    17.236 |       6.770 |    46.771 |      20.394 |    93.296 |      57.357 | 163.594 |   180.380 |
| 2021-07-14 | 4 153     |                  27.479 |     0.013 |       0.006 |     0.006 |       0.006 |     0.053 |       0.032 |     0.140 |       0.090 |     0.431 |       0.243 |     0.741 |       0.306 |     2.015 |       0.983 |     5.201 |       3.070 |   6.251 |     7.892 |
| 2021-07-13 | 2 650     |                  14.565 |     0.007 |       0.004 |     0.003 |       0.003 |     0.037 |       0.020 |     0.089 |       0.056 |     0.312 |       0.157 |     0.638 |       0.209 |     1.401 |       0.727 |     2.394 |       1.622 |   3.449 |     3.437 |
| 2021-07-12 | 1 782     |                   8.031 |     0.007 |       0.003 |     0.002 |       0.002 |     0.021 |       0.012 |     0.071 |       0.044 |     0.199 |       0.088 |     0.399 |       0.158 |     0.590 |       0.472 |     1.238 |       1.228 |   1.078 |     2.419 |
| 2021-07-11 | 2 323     |                  25.903 |     0.016 |       0.010 |     0.008 |       0.009 |     0.064 |       0.040 |     0.181 |       0.120 |     0.541 |       0.327 |     1.214 |       0.494 |     3.023 |       1.140 |     4.541 |       3.333 |   4.095 |     6.747 |
| 2021-07-09 | 3 194     |                  34.007 |     0.020 |       0.011 |     0.009 |       0.010 |     0.076 |       0.050 |     0.214 |       0.151 |     0.724 |       0.382 |     1.174 |       0.475 |     3.367 |       1.514 |     5.119 |       3.552 |   6.466 |    10.693 |
| 2021-07-07 | 3 285     |                  15.127 |     0.012 |       0.005 |     0.005 |       0.005 |     0.038 |       0.023 |     0.112 |       0.075 |     0.347 |       0.213 |     0.678 |       0.283 |     1.868 |       0.855 |     3.385 |       1.886 |   2.155 |     3.182 |
| 2021-07-06 | 2 170     |                  10.357 |     0.006 |       0.003 |     0.003 |       0.003 |     0.028 |       0.016 |     0.078 |       0.048 |     0.275 |       0.139 |     0.507 |       0.177 |     0.762 |       0.580 |     2.312 |       1.052 |   2.586 |     1.782 |
| 2021-07-05 | 1 483     |                   7.393 |     0.005 |       0.003 |     0.002 |       0.002 |     0.017 |       0.011 |     0.051 |       0.036 |     0.154 |       0.090 |     0.262 |       0.125 |     0.786 |       0.236 |     1.734 |       1.009 |   1.724 |     1.146 |
| 2021-07-04 | 2 041     |                   9.197 |     0.007 |       0.003 |     0.003 |       0.003 |     0.024 |       0.016 |     0.070 |       0.048 |     0.216 |       0.121 |     0.405 |       0.183 |     0.885 |       0.452 |     1.899 |       1.140 |   1.940 |     1.782 |
| 2021-07-03 | 2 605     |                  12.061 |     0.008 |       0.004 |     0.004 |       0.004 |     0.032 |       0.018 |     0.097 |       0.069 |     0.265 |       0.158 |     0.587 |       0.194 |     1.524 |       0.491 |     1.816 |       1.491 |   2.371 |     2.928 |
| 2021-07-02 | 2 436     |                  11.547 |     0.007 |       0.004 |     0.004 |       0.003 |     0.032 |       0.018 |     0.091 |       0.054 |     0.256 |       0.127 |     0.502 |       0.173 |     1.303 |       0.531 |     1.899 |       1.666 |   2.586 |     2.291 |
| 2021-07-01 | 2 449     |                  14.751 |     0.006 |       0.004 |     0.003 |       0.003 |     0.030 |       0.019 |     0.081 |       0.054 |     0.249 |       0.163 |     0.547 |       0.224 |     1.425 |       0.649 |     3.468 |       1.842 |   2.802 |     3.182 |
| 2021-06-30 | 2 362     |                  15.276 |     0.007 |       0.003 |     0.003 |       0.004 |     0.028 |       0.015 |     0.077 |       0.049 |     0.275 |       0.156 |     0.661 |       0.222 |     1.303 |       0.590 |     2.890 |       1.754 |   4.311 |     2.928 |
| 2021-06-29 | 1 746     |                   9.944 |     0.005 |       0.002 |     0.002 |       0.002 |     0.019 |       0.012 |     0.061 |       0.041 |     0.217 |       0.111 |     0.399 |       0.165 |     1.057 |       0.462 |     2.312 |       1.228 |   1.940 |     1.909 |
| 2021-06-28 | 902       |                   7.491 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.006 |     0.030 |       0.023 |     0.112 |       0.049 |     0.308 |       0.101 |     0.614 |       0.305 |     0.826 |       0.658 |   2.155 |     2.291 |
| 2021-06-27 | 1 496     |                  11.538 |     0.004 |       0.002 |     0.002 |       0.002 |     0.016 |       0.010 |     0.043 |       0.032 |     0.165 |       0.101 |     0.405 |       0.162 |     1.057 |       0.482 |     1.238 |       0.921 |   4.095 |     2.801 |
| 2021-06-26 | 1 568     |                  26.287 |    14.719 |       0.003 |     0.002 |       0.002 |     0.016 |       0.010 |     0.055 |       0.038 |     0.168 |       0.107 |     0.399 |       0.183 |     0.860 |       0.315 |     1.982 |       1.140 |   3.233 |     3.055 |
| 2021-06-25 | 1 604     |                  27.459 |    14.727 |       0.002 |     0.002 |       0.002 |     0.015 |       0.010 |     0.045 |       0.035 |     0.185 |       0.097 |     0.462 |       0.200 |     0.860 |       0.501 |     3.303 |       1.096 |   3.880 |     2.037 |
| 2021-06-24 | 1 556     |                   8.901 |     0.005 |       0.003 |     0.003 |       0.002 |     0.015 |       0.009 |     0.042 |       0.036 |     0.172 |       0.115 |     0.405 |       0.129 |     0.860 |       0.609 |     1.816 |       1.096 |   1.293 |     2.291 |
