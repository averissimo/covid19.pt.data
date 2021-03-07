COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, March 07, 2021)*

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
| Portugal | 2021-03-07 |       682 |     28 |       966 |          \-2 |    \-9 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2021-03-06 |      1007 |     26 |      1942 |        \-167 |   \-20 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2021-03-05 |       949 |     28 |      1606 |        \-125 |   \-16 |                  31 |                  16 |                  43 |                  43 |                  68 |                  55 |                  50 |                  82 |                  67 |                  71 |                  89 |                  87 |                  55 |                  56 |                  34 |                  32 |                34 |                37 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               2 |               0 |               2 |               0 |               4 |               1 |            11 |             8 |
| Portugal | 2021-03-04 |       830 |     28 |      1654 |        \-119 |   \-16 |                  20 |                  19 |                  22 |                  21 |                  72 |                  76 |                  47 |                  51 |                  60 |                  92 |                  70 |                  62 |                  22 |                  54 |                  27 |                  28 |                22 |                67 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               2 |               0 |               3 |               2 |               4 |               5 |             4 |             7 |
| Portugal | 2021-03-03 |       979 |     41 |      1934 |        \-170 |   \-31 |                  24 |                  29 |                  55 |                  62 |                  68 |                  48 |                  48 |                  83 |                  73 |                  90 |                  64 |                  75 |                  65 |                  79 |                  26 |                  33 |                16 |                43 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               1 |               3 |               5 |               4 |            18 |             9 |

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
| 2021-03-07 |    810094 |  16540 |    731567 |         1414 |    354 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
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
| 2021-02-17 |    790885 |  15649 |    683061 |         4137 |    719 |               22314 |               21439 |               36654 |               37032 |               52762 |               60160 |               51677 |               61987 |               58103 |               73882 |               51478 |               65736 |               38408 |               41459 |               24460 |               27694 |             21606 |             43767 |               1 |               1 |               1 |               1 |               6 |               5 |              20 |              19 |              84 |              58 |             289 |             117 |             954 |             401 |            2050 |            1219 |          4763 |          5660 |
| 2021-02-16 |    788561 |  15522 |    677719 |         4482 |    752 |               22265 |               21367 |               36562 |               36932 |               52623 |               60015 |               51524 |               61812 |               57931 |               73700 |               51315 |               65537 |               38296 |               41330 |               24362 |               27606 |             21523 |             43596 |               1 |               1 |               1 |               1 |               6 |               5 |              20 |              19 |              83 |              58 |             286 |             116 |             944 |             399 |            2030 |            1205 |          4726 |          5621 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted\_future\_deaths | 00-09\_men | 00-09\_women | 10-19\_men | 10-19\_women | 20-29\_men | 20-29\_women | 30-39\_men | 30-39\_women | 40-49\_men | 40-49\_women | 50-59\_men | 50-59\_women | 60-69\_men | 60-69\_women | 70-79\_men | 70-79\_women | 80+\_men | 80+\_women |
| :--------- | :-------- | ------------------------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | -------: | ---------: |
| 2021-03-05 | 949       |                    19.862 |      0.001 |        0.001 |      0.001 |        0.001 |      0.009 |        0.004 |      0.019 |        0.026 |      0.098 |        0.057 |      0.530 |        0.159 |      1.416 |        0.584 |      2.946 |        1.458 |    7.677 |      4.875 |
| 2021-03-04 | 830       |                    19.283 |      0.001 |        0.001 |      0.001 |        0.001 |      0.009 |        0.006 |      0.018 |        0.016 |      0.088 |        0.073 |      0.417 |        0.114 |      0.567 |        0.563 |      2.339 |        1.275 |    4.967 |      8.827 |
| 2021-03-03 | 979       |                    16.291 |      0.001 |        0.001 |      0.001 |        0.002 |      0.009 |        0.004 |      0.018 |        0.026 |      0.107 |        0.072 |      0.381 |        0.137 |      1.674 |        0.824 |      2.253 |        1.503 |    3.613 |      5.665 |
| 2021-03-02 | 691       |                    15.539 |      0.001 |        0.001 |      0.001 |        0.000 |      0.005 |        0.004 |      0.023 |        0.013 |      0.094 |        0.041 |      0.268 |        0.141 |      0.927 |        0.365 |      2.512 |        0.774 |    4.967 |      5.402 |
| 2021-03-01 | 394       |                    10.826 |      0.000 |        0.001 |      0.000 |        0.000 |      0.003 |        0.002 |      0.014 |        0.009 |      0.026 |        0.007 |      0.191 |        0.059 |      0.515 |        0.521 |      1.300 |        0.820 |    4.064 |      3.294 |
| 2021-02-28 | 718       |                    16.813 |      0.001 |        0.001 |      0.001 |        0.001 |      0.007 |        0.003 |      0.019 |        0.015 |      0.098 |        0.043 |      0.292 |        0.099 |      1.004 |        0.396 |      2.166 |        1.093 |    5.645 |      5.929 |
| 2021-02-27 | 1 071     |                    23.291 |      0.001 |        0.002 |      0.001 |        0.001 |      0.011 |        0.007 |      0.025 |        0.020 |      0.111 |        0.061 |      0.500 |        0.179 |      1.597 |        0.772 |      3.206 |        2.232 |    7.451 |      7.114 |
| 2021-02-26 | 1 027     |                    25.567 |      0.002 |        0.001 |      0.001 |        0.002 |      0.009 |        0.004 |      0.025 |        0.018 |      0.110 |        0.061 |      0.459 |        0.141 |      1.700 |        0.584 |      3.465 |        1.822 |    7.677 |      9.486 |
| 2021-02-25 | 1 160     |                    30.965 |      0.001 |        0.001 |      0.001 |        0.001 |      0.012 |        0.006 |      0.030 |        0.028 |      0.119 |        0.064 |      0.399 |        0.167 |      1.571 |        0.876 |      4.938 |        2.050 |    8.580 |     12.121 |
| 2021-02-24 | 1 480     |                    31.469 |      0.001 |        0.002 |      0.002 |        0.002 |      0.014 |        0.008 |      0.043 |        0.033 |      0.177 |        0.103 |      0.584 |        0.211 |      1.777 |        0.959 |      4.418 |        2.961 |   10.161 |     10.013 |
| 2021-02-23 | 1 032     |                    50.144 |      0.002 |        0.001 |      0.001 |        0.002 |      0.013 |        0.007 |      0.036 |        0.031 |      0.201 |        0.096 |      0.679 |        0.231 |      2.035 |        0.928 |      6.844 |        2.961 |   16.709 |     19.367 |
| 2021-02-21 | 1 186     |                    30.732 |      0.002 |        0.001 |      0.001 |        0.001 |      0.012 |        0.007 |      0.024 |        0.019 |      0.129 |        0.073 |      0.566 |        0.137 |      1.571 |        0.918 |      4.159 |        2.505 |    9.935 |     10.672 |
| 2021-02-20 | 1 570     |                    36.841 |      0.001 |        0.002 |      0.002 |        0.002 |      0.012 |        0.009 |      0.037 |        0.039 |      0.170 |        0.104 |      0.554 |        0.253 |      2.524 |        1.001 |      4.852 |        2.551 |   11.290 |     13.438 |
| 2021-02-19 | 1 940     |                    41.559 |      0.002 |        0.002 |      0.002 |        0.002 |      0.017 |        0.012 |      0.050 |        0.042 |      0.204 |        0.112 |      0.804 |        0.309 |      3.374 |        1.168 |      6.151 |        3.507 |   10.386 |     15.415 |
| 2021-02-18 | 1 944     |                    44.164 |      0.002 |        0.002 |      0.002 |        0.002 |      0.015 |        0.010 |      0.056 |        0.047 |      0.205 |        0.112 |      0.703 |        0.284 |      2.575 |        1.199 |      6.324 |        5.056 |   12.419 |     15.151 |
| 2021-02-17 | 2 324     |                    59.882 |      0.002 |        0.003 |      0.002 |        0.003 |      0.018 |        0.012 |      0.058 |        0.055 |      0.252 |        0.145 |      0.971 |        0.364 |      2.884 |        1.345 |      8.490 |        4.008 |   18.741 |     22.529 |
| 2021-02-16 | 1 502     |                    39.851 |      0.001 |        0.001 |      0.001 |        0.002 |      0.012 |        0.009 |      0.046 |        0.029 |      0.154 |        0.094 |      0.691 |        0.229 |      2.163 |        1.064 |      5.891 |        3.325 |   13.096 |     13.043 |
| 2021-02-15 | 1 303     |                    32.893 |      0.001 |        0.002 |      0.001 |        0.001 |      0.009 |        0.008 |      0.033 |        0.025 |      0.132 |        0.090 |      0.506 |        0.190 |      2.344 |        0.688 |      4.765 |        3.416 |    9.483 |     11.199 |
| 2021-02-14 | 1 677     |                    44.366 |      0.002 |        0.002 |      0.002 |        0.002 |      0.014 |        0.008 |      0.037 |        0.031 |      0.180 |        0.104 |      0.727 |        0.244 |      2.292 |        1.126 |      4.159 |        3.143 |   14.902 |     17.391 |
| 2021-02-13 | 2 856     |                    66.579 |      0.003 |        0.003 |      0.003 |        0.003 |      0.026 |        0.016 |      0.075 |        0.063 |      0.278 |        0.175 |      1.215 |        0.452 |      3.812 |        1.762 |      8.404 |        5.557 |   20.095 |     24.637 |
