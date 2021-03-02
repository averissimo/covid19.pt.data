COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Tuesday, March 02, 2021)*

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
| Portugal | 2021-03-02 |       691 |     38 |      3230 |        \-170 |   \-23 |                  15 |                  23 |                  33 |                  13 |                  39 |                  49 |                  60 |                  40 |                  64 |                  51 |                  45 |                  77 |                  36 |                  35 |                  29 |                  17 |                22 |                41 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               3 |               1 |               1 |               2 |               4 |               4 |            10 |            13 |
| Portugal | 2021-03-01 |       394 |     34 |      1258 |            2 |   \-15 |                   9 |                  15 |                  14 |                   1 |                  26 |                  26 |                  37 |                  29 |                  18 |                   9 |                  32 |                  32 |                  20 |                  50 |                  15 |                  18 |                18 |                25 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |               0 |               4 |               1 |               2 |               3 |             9 |            14 |
| Portugal | 2021-02-28 |       718 |     41 |      1664 |         \-15 |    \-8 |                  33 |                  22 |                  31 |                  31 |                  53 |                  31 |                  51 |                  46 |                  67 |                  54 |                  49 |                  54 |                  39 |                  38 |                  25 |                  24 |                25 |                45 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               5 |               3 |              12 |               1 |            12 |             7 |
| Portugal | 2021-02-27 |      1071 |     33 |      2820 |        \-224 |   \-30 |                  22 |                  36 |                  48 |                  30 |                  81 |                  80 |                  67 |                  63 |                  76 |                  76 |                  84 |                  98 |                  62 |                  74 |                  37 |                  49 |                33 |                54 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               1 |               0 |               3 |               7 |               6 |             8 |             7 |
| Portugal | 2021-02-26 |      1027 |     58 |      2780 |        \-209 |   \-14 |                  36 |                  29 |                  42 |                  61 |                  70 |                  51 |                  67 |                  58 |                  75 |                  77 |                  77 |                  77 |                  66 |                  56 |                  40 |                  40 |                34 |                72 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               1 |               7 |               0 |               8 |               8 |            13 |            20 |

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

| date       | confirmed | deaths | recovered | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :--------- | --------: | -----: | --------: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
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
| 2021-02-15 |    787059 |  15411 |    668854 |         4832 |    784 |               22250 |               21356 |               36506 |               36872 |               52532 |               59909 |               51403 |               61721 |               57826 |               73582 |               51199 |               65412 |               38212 |               41228 |               24294 |               27533 |             21465 |             43497 |               1 |               1 |               1 |               1 |               6 |               5 |              20 |              19 |              83 |              58 |             281 |             112 |             938 |             396 |            2016 |            1194 |          4695 |          5584 |
| 2021-02-14 |    785756 |  15321 |    665316 |         4826 |    795 |               22226 |               21313 |               36461 |               36822 |               52459 |               59813 |               51316 |               61642 |               57736 |               73469 |               51114 |               65308 |               38121 |               41162 |               24239 |               27458 |             21423 |             43412 |               1 |               1 |               1 |               1 |               6 |               4 |              20 |              19 |              81 |              57 |             278 |             111 |             934 |             394 |            2006 |            1182 |          4667 |          5558 |
| 2021-02-13 |    784079 |  15183 |    661525 |         4850 |    803 |               22186 |               21267 |               36383 |               36734 |               52352 |               59711 |               51217 |               61544 |               57613 |               73338 |               50992 |               65175 |               38032 |               41054 |               24191 |               27389 |             21357 |             43280 |               1 |               1 |               1 |               1 |               6 |               4 |              20 |              19 |              80 |              57 |             277 |             110 |             920 |             388 |            1989 |            1164 |          4623 |          5522 |
| 2021-02-12 |    781223 |  15034 |    652739 |         5230 |    846 |               22119 |               21198 |               36260 |               36609 |               52153 |               59511 |               51019 |               61345 |               57423 |               73118 |               50788 |               64928 |               37884 |               40885 |               24094 |               27267 |             21268 |             43093 |               1 |               1 |               1 |               1 |               6 |               4 |              20 |              18 |              80 |              55 |             275 |             107 |             906 |             382 |            1964 |            1153 |          4587 |          5473 |
| 2021-02-11 |    778369 |  14885 |    645122 |         5570 |    836 |               22066 |               21142 |               36141 |               36474 |               51959 |               59324 |               50842 |               61158 |               57211 |               72864 |               50607 |               64683 |               37722 |               40739 |               23987 |               27116 |             21175 |             42901 |               1 |               1 |               1 |               1 |               6 |               4 |              19 |              18 |              80 |              55 |             273 |             107 |             901 |             377 |            1941 |            1143 |          4537 |          5420 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted\_future\_deaths | 00-09\_men | 00-09\_women | 10-19\_men | 10-19\_women | 20-29\_men | 20-29\_women | 30-39\_men | 30-39\_women | 40-49\_men | 40-49\_women | 50-59\_men | 50-59\_women | 60-69\_men | 60-69\_women | 70-79\_men | 70-79\_women | 80+\_men | 80+\_women |
| :--------- | :-------- | ------------------------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | -------: | ---------: |
| 2021-03-02 | 691       |                    15.500 |      0.001 |        0.001 |      0.001 |        0.000 |      0.005 |        0.004 |      0.023 |        0.013 |      0.094 |        0.040 |      0.266 |        0.140 |      0.925 |        0.362 |      2.506 |        0.771 |    4.951 |      5.397 |
| 2021-03-01 | 394       |                    10.795 |      0.000 |        0.001 |      0.000 |        0.000 |      0.003 |        0.002 |      0.014 |        0.009 |      0.026 |        0.007 |      0.189 |        0.058 |      0.514 |        0.518 |      1.296 |        0.816 |    4.051 |      3.291 |
| 2021-02-28 | 718       |                    16.769 |      0.001 |        0.001 |      0.001 |        0.001 |      0.007 |        0.003 |      0.019 |        0.015 |      0.098 |        0.042 |      0.289 |        0.098 |      1.002 |        0.394 |      2.160 |        1.088 |    5.626 |      5.924 |
| 2021-02-27 | 1 071     |                    23.228 |      0.001 |        0.002 |      0.001 |        0.001 |      0.011 |        0.007 |      0.025 |        0.020 |      0.112 |        0.060 |      0.496 |        0.179 |      1.593 |        0.766 |      3.197 |        2.222 |    7.426 |      7.109 |
| 2021-02-26 | 1 027     |                    25.504 |      0.002 |        0.001 |      0.001 |        0.002 |      0.009 |        0.004 |      0.025 |        0.018 |      0.110 |        0.061 |      0.455 |        0.140 |      1.696 |        0.580 |      3.457 |        1.814 |    7.651 |      9.478 |
| 2021-02-25 | 1 160     |                    30.890 |      0.001 |        0.001 |      0.001 |        0.001 |      0.012 |        0.006 |      0.030 |        0.028 |      0.119 |        0.063 |      0.396 |        0.166 |      1.567 |        0.870 |      4.926 |        2.041 |    8.551 |     12.111 |
| 2021-02-24 | 1 480     |                    31.386 |      0.001 |        0.002 |      0.002 |        0.002 |      0.014 |        0.008 |      0.043 |        0.033 |      0.178 |        0.102 |      0.579 |        0.210 |      1.773 |        0.953 |      4.407 |        2.947 |   10.127 |     10.005 |
| 2021-02-23 | 1 032     |                    50.022 |      0.002 |        0.001 |      0.001 |        0.002 |      0.013 |        0.007 |      0.036 |        0.031 |      0.201 |        0.094 |      0.673 |        0.230 |      2.030 |        0.922 |      6.827 |        2.947 |   16.653 |     19.352 |
| 2021-02-21 | 1 186     |                    30.650 |      0.002 |        0.001 |      0.001 |        0.001 |      0.012 |        0.007 |      0.024 |        0.019 |      0.129 |        0.072 |      0.561 |        0.137 |      1.567 |        0.911 |      4.148 |        2.494 |    9.901 |     10.663 |
| 2021-02-20 | 1 570     |                    36.748 |      0.001 |        0.002 |      0.002 |        0.002 |      0.012 |        0.009 |      0.038 |        0.039 |      0.170 |        0.103 |      0.549 |        0.251 |      2.518 |        0.994 |      4.839 |        2.539 |   11.252 |     13.428 |
| 2021-02-19 | 1 940     |                    41.458 |      0.002 |        0.002 |      0.002 |        0.002 |      0.017 |        0.012 |      0.050 |        0.043 |      0.204 |        0.111 |      0.797 |        0.308 |      3.366 |        1.160 |      6.136 |        3.492 |   10.352 |     15.402 |
| 2021-02-18 | 1 944     |                    44.049 |      0.002 |        0.002 |      0.002 |        0.002 |      0.015 |        0.010 |      0.056 |        0.047 |      0.206 |        0.110 |      0.697 |        0.282 |      2.569 |        1.191 |      6.309 |        5.033 |   12.377 |     15.139 |
| 2021-02-17 | 2 324     |                    59.738 |      0.002 |        0.003 |      0.002 |        0.003 |      0.018 |        0.012 |      0.058 |        0.056 |      0.253 |        0.143 |      0.963 |        0.363 |      2.878 |        1.336 |      8.469 |        3.990 |   18.678 |     22.511 |
| 2021-02-16 | 1 502     |                    39.747 |      0.001 |        0.001 |      0.002 |        0.002 |      0.012 |        0.009 |      0.046 |        0.029 |      0.154 |        0.093 |      0.685 |        0.228 |      2.158 |        1.056 |      5.876 |        3.310 |   13.052 |     13.033 |
| 2021-02-15 | 1 303     |                    32.811 |      0.001 |        0.002 |      0.001 |        0.001 |      0.010 |        0.008 |      0.033 |        0.025 |      0.132 |        0.089 |      0.502 |        0.190 |      2.338 |        0.684 |      4.753 |        3.401 |    9.451 |     11.190 |
| 2021-02-14 | 1 677     |                    44.258 |      0.002 |        0.002 |      0.002 |        0.002 |      0.014 |        0.008 |      0.038 |        0.031 |      0.181 |        0.103 |      0.721 |        0.242 |      2.287 |        1.119 |      4.148 |        3.129 |   14.852 |     17.377 |
| 2021-02-13 | 2 856     |                    66.413 |      0.003 |        0.003 |      0.003 |        0.003 |      0.026 |        0.016 |      0.075 |        0.063 |      0.279 |        0.173 |      1.205 |        0.450 |      3.803 |        1.750 |      8.383 |        5.532 |   20.028 |     24.618 |
| 2021-02-12 | 2 854     |                    70.177 |      0.002 |        0.003 |      0.003 |        0.004 |      0.025 |        0.015 |      0.067 |        0.059 |      0.311 |        0.200 |      1.069 |        0.446 |      4.163 |        1.512 |      9.247 |        6.847 |   20.928 |     25.276 |
| 2021-02-11 | 3 480     |                    78.900 |      0.004 |        0.003 |      0.004 |        0.003 |      0.028 |        0.019 |      0.077 |        0.074 |      0.400 |        0.230 |      1.406 |        0.558 |      5.627 |        2.620 |     10.284 |        7.618 |   21.378 |     28.567 |
| 2021-02-10 | 4 387     |                   112.021 |      0.005 |        0.004 |      0.005 |        0.004 |      0.029 |        0.022 |      0.098 |        0.102 |      0.474 |        0.300 |      1.654 |        0.804 |      6.269 |        2.796 |     13.049 |        8.933 |   36.005 |     41.468 |
