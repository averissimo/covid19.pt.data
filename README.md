COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Tuesday, March 09, 2021)*

It downloads the [daily
report](https://covid19.min-saude.pt/relatorio-de-situacao/) from DGS
and stores this in data-friendly format under `/data` directory. It also
retrieves age data from the DGS’ [ESRI
dashboard](https://covid19.min-saude.pt/ponto-de-situacao-atual-em-portugal/)

If you are here just for the data, this is what you want:

  - [dgs\_pt.csv](raw/master/data/dgs_pt.csv) *(raw data from Portugal’s
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

| country  | date       | confirmed | deaths | recovered | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2021-03-09 |       847 |     30 |      1872 |        \-125 |   \-30 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2021-03-08 |       365 |     25 |       779 |         \-11 |   \-12 |                  10 |                   8 |                   0 |                  14 |                  45 |                  20 |                  13 |                  27 |                  12 |                  19 |                  24 |                  50 |                  25 |                  24 |                  13 |                  19 |                17 |                25 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               1 |               1 |               4 |               0 |             9 |             9 |
| Portugal | 2021-03-07 |       682 |     28 |       966 |          \-2 |    \-9 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2021-03-06 |      1007 |     26 |      1942 |        \-167 |   \-20 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2021-03-05 |       949 |     28 |      1606 |        \-125 |   \-16 |                  31 |                  16 |                  43 |                  43 |                  68 |                  55 |                  50 |                  82 |                  67 |                  71 |                  89 |                  87 |                  55 |                  56 |                  34 |                  32 |                34 |                37 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               2 |               0 |               2 |               0 |               4 |               1 |            11 |             8 |

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

| date       | confirmed | deaths | recovered | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :--------- | --------: | -----: | --------: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| 2021-03-09 |    811306 |  16595 |    734218 |         1278 |    312 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| 2021-03-08 |    810459 |  16565 |    732346 |         1403 |    342 |               22853 |               21950 |               37452 |               37830 |               54143 |               61434 |               52966 |               63328 |               59568 |               75382 |               52844 |               67364 |               39483 |               42673 |               25206 |               28506 |             22227 |             44981 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              88 |              60 |             318 |             124 |            1015 |             446 |            2200 |            1299 |          5028 |          5930 |
| 2021-03-07 |    810094 |  16540 |    731567 |         1414 |    354 |               22843 |               21942 |               37452 |               37816 |               54098 |               61414 |               52953 |               63301 |               59556 |               75363 |               52820 |               67314 |               39458 |               42649 |               25193 |               28487 |             22210 |             44956 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              88 |              60 |             318 |             123 |            1014 |             445 |            2196 |            1299 |          5019 |          5921 |
| 2021-03-06 |    809412 |  16512 |    730601 |         1416 |    363 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| 2021-03-05 |    808405 |  16486 |    728659 |         1583 |    383 |               22773 |               21875 |               37381 |               37737 |               53967 |               61316 |               52832 |               63194 |               59425 |               75234 |               52708 |               67167 |               39372 |               42577 |               25128 |               28409 |             22162 |             44881 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              20 |              87 |              60 |             314 |             123 |            1014 |             444 |            2177 |            1294 |          5004 |          5913 |
| 2021-03-04 |    807456 |  16458 |    727053 |         1708 |    399 |               22742 |               21859 |               37338 |               37694 |               53899 |               61261 |               52782 |               63112 |               59358 |               75163 |               52619 |               67080 |               39317 |               42521 |               25094 |               28377 |             22128 |             44844 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              20 |              87 |              60 |             312 |             123 |            1012 |             444 |            2173 |            1293 |          4993 |          5905 |
| 2021-03-03 |    806626 |  16430 |    725399 |         1827 |    415 |               22722 |               21840 |               37316 |               37673 |               53827 |               61185 |               52735 |               63061 |               59298 |               75071 |               52549 |               67018 |               39295 |               42467 |               25067 |               28349 |             22106 |             44777 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              20 |              87 |              59 |             310 |             123 |            1009 |             442 |            2169 |            1288 |          4989 |          5898 |
| 2021-03-02 |    805647 |  16389 |    723465 |         1997 |    446 |               22698 |               21811 |               37261 |               37611 |               53759 |               61137 |               52687 |               62978 |               59225 |               74981 |               52485 |               66943 |               39230 |               42388 |               25041 |               28316 |             22090 |             44734 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              20 |              87 |              59 |             310 |             122 |            1008 |             439 |            2164 |            1284 |          4971 |          5889 |
| 2021-03-01 |    804956 |  16351 |    720235 |         2167 |    469 |               22683 |               21788 |               37228 |               37598 |               53720 |               61088 |               52627 |               62938 |               59161 |               74930 |               52440 |               66866 |               39194 |               42353 |               25012 |               28299 |             22068 |             44693 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              20 |              87 |              59 |             307 |             121 |            1007 |             437 |            2160 |            1280 |          4961 |          5876 |
| 2021-02-28 |    804562 |  16317 |    718977 |         2165 |    484 |               22674 |               21773 |               37214 |               37597 |               53694 |               61062 |               52590 |               62909 |               59143 |               74921 |               52408 |               66834 |               39174 |               42303 |               24997 |               28281 |             22050 |             44668 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              19 |              87 |              59 |             307 |             121 |            1003 |             436 |            2158 |            1277 |          4952 |          5862 |
| 2021-02-27 |    803844 |  16276 |    717313 |         2180 |    492 |               22641 |               21751 |               37183 |               37566 |               53641 |               61031 |               52539 |               62863 |               59076 |               74867 |               52359 |               66780 |               39135 |               42265 |               24972 |               28257 |             22025 |             44623 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              19 |              87 |              59 |             306 |             121 |             998 |             433 |            2146 |            1276 |          4940 |          5855 |
| 2021-02-26 |    802773 |  16243 |    714493 |         2404 |    522 |               22619 |               21715 |               37135 |               37536 |               53560 |               60951 |               52472 |               62800 |               59000 |               74791 |               52275 |               66682 |               39073 |               42191 |               24935 |               28208 |             21992 |             44569 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              19 |              87 |              59 |             305 |             120 |             998 |             430 |            2139 |            1270 |          4932 |          5848 |
| 2021-02-25 |    801746 |  16185 |    711713 |         2613 |    536 |               22583 |               21686 |               37093 |               37475 |               53490 |               60900 |               52405 |               62742 |               58925 |               74714 |               52198 |               66605 |               39007 |               42135 |               24895 |               28168 |             21958 |             44497 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              19 |              87 |              59 |             304 |             119 |             991 |             430 |            2131 |            1262 |          4919 |          5828 |
| 2021-02-24 |    800586 |  16136 |    709054 |         2767 |    567 |               22554 |               21660 |               37054 |               37434 |               53400 |               60827 |               52325 |               62655 |               58844 |               74634 |               52131 |               66514 |               38946 |               42051 |               24838 |               28123 |             21920 |             44405 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              19 |              87 |              59 |             303 |             119 |             988 |             429 |            2123 |            1256 |          4904 |          5813 |
| 2021-02-23 |    799106 |  16086 |    705976 |         3012 |    597 |               22523 |               21621 |               36987 |               37374 |               53294 |               60727 |               52212 |               62551 |               58723 |               74505 |               52033 |               66399 |               38877 |               41959 |               24787 |               28058 |             21875 |             44329 |               1 |               1 |               1 |               1 |               7 |               5 |              20 |              19 |              87 |              59 |             303 |             119 |             985 |             427 |            2116 |            1252 |          4885 |          5798 |
| 2021-02-22 |    798074 |  16023 |    701409 |         3322 |    627 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| 2021-02-21 |    797525 |  15962 |    699222 |         3316 |    638 |               22484 |               21603 |               36946 |               37305 |               53195 |               60636 |               52117 |               62453 |               58586 |               74385 |               51919 |               66273 |               38798 |               41870 |               24708 |               27993 |             21801 |             44182 |               1 |               1 |               1 |               1 |               6 |               5 |              20 |              19 |              85 |              59 |             301 |             119 |             977 |             421 |            2101 |            1240 |          4845 |          5760 |
| 2021-02-20 |    796339 |  15897 |    696916 |         3284 |    656 |               22446 |               21575 |               36896 |               37265 |               53106 |               60545 |               52054 |               62393 |               58498 |               74294 |               51824 |               66198 |               38737 |               41782 |               24660 |               27938 |             21757 |             44101 |               1 |               1 |               1 |               1 |               6 |               5 |              20 |              19 |              85 |              59 |             297 |             119 |             972 |             419 |            2087 |            1237 |          4830 |          5738 |
| 2021-02-19 |    794769 |  15821 |    691866 |         3584 |    669 |               22413 |               21531 |               36825 |               37206 |               53012 |               60433 |               51955 |               62270 |               58382 |               74163 |               51731 |               66060 |               38639 |               41686 |               24604 |               27882 |             21707 |             43999 |               1 |               1 |               1 |               1 |               6 |               5 |              20 |              19 |              85 |              58 |             295 |             119 |             968 |             412 |            2082 |            1232 |          4805 |          5711 |
| 2021-02-18 |    792829 |  15754 |    687462 |         3819 |    688 |               22364 |               21488 |               36743 |               37116 |               52881 |               60287 |               51824 |               62136 |               58243 |               74022 |               51596 |               65891 |               38508 |               41574 |               24533 |               27805 |             21661 |             43882 |               1 |               1 |               1 |               1 |               6 |               5 |              20 |              19 |              85 |              58 |             294 |             119 |             963 |             407 |            2068 |            1229 |          4783 |          5694 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted\_future\_deaths | 00-09\_men | 00-09\_women | 10-19\_men | 10-19\_women | 20-29\_men | 20-29\_women | 30-39\_men | 30-39\_women | 40-49\_men | 40-49\_women | 50-59\_men | 50-59\_women | 60-69\_men | 60-69\_women | 70-79\_men | 70-79\_women | 80+\_men | 80+\_women |
| :--------- | :-------- | ------------------------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | -------: | ---------: |
| 2021-03-08 | 365       |                    10.328 |      0.000 |        0.000 |      0.000 |        0.000 |      0.006 |        0.002 |      0.005 |        0.009 |      0.018 |        0.015 |      0.144 |        0.092 |      0.643 |        0.251 |      1.135 |        0.866 |    3.846 |      3.296 |
| 2021-03-07 | 682       |                    34.296 |      0.003 |        0.003 |      0.002 |        0.002 |      0.017 |        0.008 |      0.048 |        0.034 |      0.194 |        0.103 |      0.674 |        0.271 |      2.211 |        0.753 |      5.673 |        3.554 |   10.858 |      9.888 |
| 2021-03-05 | 949       |                    19.909 |      0.001 |        0.001 |      0.001 |        0.001 |      0.009 |        0.004 |      0.020 |        0.026 |      0.099 |        0.057 |      0.536 |        0.160 |      1.414 |        0.585 |      2.968 |        1.458 |    7.691 |      4.878 |
| 2021-03-04 | 830       |                    19.324 |      0.001 |        0.001 |      0.001 |        0.001 |      0.009 |        0.006 |      0.019 |        0.016 |      0.089 |        0.073 |      0.421 |        0.114 |      0.566 |        0.564 |      2.357 |        1.276 |    4.977 |      8.833 |
| 2021-03-03 | 979       |                    16.324 |      0.001 |        0.001 |      0.001 |        0.002 |      0.009 |        0.004 |      0.019 |        0.026 |      0.108 |        0.072 |      0.385 |        0.138 |      1.671 |        0.826 |      2.269 |        1.504 |    3.619 |      5.669 |
| 2021-03-02 | 691       |                    15.577 |      0.001 |        0.001 |      0.001 |        0.000 |      0.005 |        0.004 |      0.024 |        0.013 |      0.095 |        0.041 |      0.271 |        0.142 |      0.925 |        0.366 |      2.531 |        0.775 |    4.977 |      5.405 |
| 2021-03-01 | 394       |                    10.850 |      0.000 |        0.001 |      0.000 |        0.000 |      0.003 |        0.002 |      0.015 |        0.009 |      0.027 |        0.007 |      0.193 |        0.059 |      0.514 |        0.523 |      1.309 |        0.820 |    4.072 |      3.296 |
| 2021-02-28 | 718       |                    16.849 |      0.001 |        0.001 |      0.001 |        0.001 |      0.007 |        0.003 |      0.020 |        0.015 |      0.099 |        0.043 |      0.295 |        0.099 |      1.003 |        0.397 |      2.182 |        1.094 |    5.655 |      5.933 |
| 2021-02-27 | 1 071     |                    23.339 |      0.001 |        0.002 |      0.001 |        0.001 |      0.010 |        0.007 |      0.027 |        0.020 |      0.112 |        0.060 |      0.505 |        0.180 |      1.594 |        0.773 |      3.229 |        2.233 |    7.465 |      7.119 |
| 2021-02-26 | 1 027     |                    25.620 |      0.002 |        0.001 |      0.001 |        0.002 |      0.009 |        0.004 |      0.027 |        0.018 |      0.111 |        0.061 |      0.463 |        0.142 |      1.697 |        0.585 |      3.491 |        1.823 |    7.691 |      9.492 |
| 2021-02-25 | 1 160     |                    31.033 |      0.001 |        0.001 |      0.001 |        0.001 |      0.012 |        0.006 |      0.032 |        0.027 |      0.120 |        0.064 |      0.403 |        0.168 |      1.568 |        0.878 |      4.975 |        2.051 |    8.596 |     12.129 |
| 2021-02-24 | 1 480     |                    31.539 |      0.001 |        0.002 |      0.002 |        0.002 |      0.014 |        0.008 |      0.045 |        0.033 |      0.179 |        0.103 |      0.590 |        0.212 |      1.774 |        0.962 |      4.451 |        2.962 |   10.180 |     10.019 |
| 2021-02-23 | 1 032     |                    50.249 |      0.002 |        0.001 |      0.001 |        0.002 |      0.013 |        0.007 |      0.038 |        0.031 |      0.202 |        0.096 |      0.686 |        0.232 |      2.031 |        0.930 |      6.895 |        2.962 |   16.740 |     19.380 |
| 2021-02-21 | 1 186     |                    30.795 |      0.002 |        0.001 |      0.001 |        0.001 |      0.012 |        0.007 |      0.025 |        0.019 |      0.130 |        0.072 |      0.572 |        0.138 |      1.568 |        0.920 |      4.189 |        2.506 |    9.953 |     10.679 |
| 2021-02-20 | 1 570     |                    36.915 |      0.001 |        0.002 |      0.002 |        0.002 |      0.012 |        0.009 |      0.039 |        0.039 |      0.171 |        0.104 |      0.560 |        0.254 |      2.519 |        1.003 |      4.888 |        2.552 |   11.311 |     13.447 |
| 2021-02-19 | 1 940     |                    41.647 |      0.002 |        0.002 |      0.002 |        0.002 |      0.017 |        0.012 |      0.052 |        0.042 |      0.205 |        0.112 |      0.812 |        0.311 |      3.368 |        1.171 |      6.197 |        3.509 |   10.406 |     15.425 |
| 2021-02-18 | 1 944     |                    44.256 |      0.002 |        0.002 |      0.002 |        0.002 |      0.015 |        0.010 |      0.058 |        0.047 |      0.207 |        0.111 |      0.710 |        0.285 |      2.571 |        1.202 |      6.371 |        5.058 |   12.442 |     15.161 |
| 2021-02-17 | 2 324     |                    60.013 |      0.002 |        0.003 |      0.002 |        0.003 |      0.018 |        0.012 |      0.061 |        0.055 |      0.254 |        0.145 |      0.981 |        0.366 |      2.879 |        1.348 |      8.554 |        4.010 |   18.776 |     22.544 |
| 2021-02-16 | 1 502     |                    39.939 |      0.001 |        0.001 |      0.001 |        0.002 |      0.012 |        0.009 |      0.048 |        0.029 |      0.155 |        0.094 |      0.698 |        0.230 |      2.159 |        1.066 |      5.935 |        3.327 |   13.120 |     13.052 |
| 2021-02-15 | 1 303     |                    32.961 |      0.001 |        0.002 |      0.001 |        0.001 |      0.009 |        0.008 |      0.034 |        0.025 |      0.133 |        0.090 |      0.512 |        0.191 |      2.339 |        0.690 |      4.800 |        3.418 |    9.501 |     11.206 |
