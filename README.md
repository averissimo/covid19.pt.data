COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Friday, February 26, 2021)*

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
| Portugal | 2021-02-26 |      1027 |     58 |      2780 |        \-209 |   \-14 |                  36 |                  29 |                  42 |                  61 |                  70 |                  51 |                  67 |                  58 |                  75 |                  77 |                  77 |                  77 |                  66 |                  56 |                  40 |                  40 |                34 |                72 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               1 |               7 |               0 |               8 |               8 |            13 |            20 |
| Portugal | 2021-02-25 |      1160 |     49 |      2659 |        \-154 |   \-31 |                  29 |                  26 |                  39 |                  41 |                  90 |                  73 |                  80 |                  87 |                  81 |                  80 |                  67 |                  91 |                  61 |                  84 |                  57 |                  45 |                38 |                92 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               3 |               1 |               8 |               6 |            15 |            15 |
| Portugal | 2021-02-24 |      1480 |     50 |      3078 |        \-245 |   \-30 |                  31 |                  39 |                  67 |                  60 |                 106 |                 100 |                 113 |                 104 |                 121 |                 129 |                  98 |                 115 |                  69 |                  92 |                  51 |                  65 |                45 |                76 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               3 |               2 |               7 |               4 |            19 |            15 |
| Portugal | 2021-02-23 |      1032 |     63 |      4567 |        \-310 |   \-30 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2021-02-22 |       549 |     61 |      2187 |            6 |   \-11 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |

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
| 2021-02-10 |    774889 |  14718 |    636859 |         5829 |    853 |               21986 |               21071 |               36009 |               36346 |               51746 |               59087 |               50638 |               60925 |               56939 |               72572 |               50369 |               64377 |               37503 |               40486 |               23868 |               26948 |             21080 |             42684 |               1 |               1 |               1 |               1 |               6 |               4 |              19 |              18 |              78 |              54 |             267 |             107 |             887 |             374 |            1915 |            1128 |          4487 |          5370 |
| 2021-02-09 |    770502 |  14557 |    628078 |         6070 |    862 |               21869 |               20983 |               35818 |               36197 |               51524 |               58813 |               50381 |               60605 |               56616 |               72191 |               50089 |               63936 |               37259 |               40216 |               23717 |               26751 |             20920 |             42369 |               1 |               1 |               1 |               1 |               6 |               4 |              19 |              17 |              78 |              52 |             266 |             107 |             877 |             366 |            1888 |            1119 |          4442 |          5312 |
| 2021-02-08 |    767919 |  14354 |    612921 |         6344 |    877 |               21823 |               20935 |               35726 |               36112 |               51369 |               58648 |               50209 |               60404 |               56425 |               71987 |               49896 |               63731 |               37108 |               40086 |               23590 |               26637 |             20801 |             42184 |               1 |               1 |               1 |               1 |               6 |               4 |              18 |              16 |              76 |              51 |             262 |             105 |             867 |             359 |            1859 |            1105 |          4387 |          5235 |
| 2021-02-07 |    765414 |  14158 |    606166 |         6248 |    865 |               21750 |               20862 |               35640 |               35993 |               51215 |               58489 |               50046 |               60233 |               56229 |               71763 |               49725 |               63510 |               36953 |               39940 |               23504 |               26537 |             20729 |             42047 |               1 |               1 |               1 |               1 |               6 |               4 |              18 |              16 |              74 |              49 |             256 |             102 |             856 |             356 |            1832 |            1092 |          4331 |          5162 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted\_future\_deaths | 00-09\_men | 00-09\_women | 10-19\_men | 10-19\_women | 20-29\_men | 20-29\_women | 30-39\_men | 30-39\_women | 40-49\_men | 40-49\_women | 50-59\_men | 50-59\_women | 60-69\_men | 60-69\_women | 70-79\_men | 70-79\_women | 80+\_men | 80+\_women |
| :--------- | :-------- | ------------------------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | -------: | ---------: |
| 2021-02-26 | 1 027     |                    25.384 |      0.002 |        0.001 |      0.001 |        0.002 |      0.009 |        0.004 |      0.026 |        0.018 |      0.111 |        0.061 |      0.449 |        0.139 |      1.686 |        0.571 |      3.431 |        1.801 |    7.625 |      9.447 |
| 2021-02-25 | 1 160     |                    30.739 |      0.001 |        0.001 |      0.001 |        0.001 |      0.012 |        0.006 |      0.030 |        0.026 |      0.119 |        0.063 |      0.391 |        0.164 |      1.558 |        0.856 |      4.890 |        2.026 |    8.522 |     12.072 |
| 2021-02-24 | 1 480     |                    31.227 |      0.001 |        0.002 |      0.002 |        0.002 |      0.014 |        0.008 |      0.043 |        0.031 |      0.178 |        0.102 |      0.572 |        0.207 |      1.762 |        0.938 |      4.375 |        2.926 |   10.092 |      9.972 |
| 2021-02-23 | 1 032     |                    49.792 |      0.002 |        0.001 |      0.001 |        0.002 |      0.013 |        0.007 |      0.036 |        0.030 |      0.202 |        0.095 |      0.665 |        0.227 |      2.018 |        0.907 |      6.777 |        2.926 |   16.595 |     19.288 |
| 2021-02-21 | 1 186     |                    30.502 |      0.002 |        0.001 |      0.001 |        0.001 |      0.012 |        0.007 |      0.024 |        0.018 |      0.130 |        0.072 |      0.554 |        0.135 |      1.558 |        0.897 |      4.118 |        2.476 |    9.868 |     10.628 |
| 2021-02-20 | 1 570     |                    36.571 |      0.001 |        0.002 |      0.002 |        0.002 |      0.012 |        0.009 |      0.038 |        0.037 |      0.171 |        0.103 |      0.543 |        0.248 |      2.503 |        0.978 |      4.804 |        2.521 |   11.213 |     13.384 |
| 2021-02-19 | 1 940     |                    41.249 |      0.002 |        0.002 |      0.002 |        0.002 |      0.017 |        0.012 |      0.050 |        0.041 |      0.205 |        0.111 |      0.788 |        0.304 |      3.346 |        1.141 |      6.091 |        3.467 |   10.316 |     15.352 |
| 2021-02-18 | 1 944     |                    43.827 |      0.002 |        0.002 |      0.002 |        0.002 |      0.016 |        0.010 |      0.056 |        0.045 |      0.206 |        0.110 |      0.688 |        0.279 |      2.554 |        1.172 |      6.262 |        4.998 |   12.334 |     15.089 |
| 2021-02-17 | 2 324     |                    59.454 |      0.002 |        0.003 |      0.002 |        0.003 |      0.018 |        0.012 |      0.058 |        0.053 |      0.254 |        0.144 |      0.951 |        0.358 |      2.861 |        1.315 |      8.407 |        3.962 |   18.614 |     22.437 |
| 2021-02-16 | 1 502     |                    39.554 |      0.001 |        0.001 |      0.002 |        0.002 |      0.012 |        0.009 |      0.046 |        0.028 |      0.155 |        0.093 |      0.677 |        0.225 |      2.146 |        1.040 |      5.833 |        3.287 |   13.007 |     12.990 |
| 2021-02-15 | 1 303     |                    32.649 |      0.001 |        0.002 |      0.001 |        0.001 |      0.010 |        0.008 |      0.033 |        0.024 |      0.133 |        0.089 |      0.496 |        0.187 |      2.324 |        0.673 |      4.718 |        3.377 |    9.419 |     11.153 |
| 2021-02-14 | 1 677     |                    44.053 |      0.002 |        0.002 |      0.002 |        0.002 |      0.014 |        0.008 |      0.038 |        0.030 |      0.181 |        0.103 |      0.712 |        0.239 |      2.273 |        1.101 |      4.118 |        3.107 |   14.801 |     17.320 |
| 2021-02-13 | 2 856     |                    66.089 |      0.003 |        0.003 |      0.003 |        0.003 |      0.026 |        0.016 |      0.075 |        0.060 |      0.280 |        0.174 |      1.190 |        0.444 |      3.780 |        1.722 |      8.321 |        5.493 |   19.959 |     24.537 |
| 2021-02-12 | 2 854     |                    69.838 |      0.002 |        0.003 |      0.003 |        0.004 |      0.025 |        0.015 |      0.067 |        0.057 |      0.313 |        0.200 |      1.056 |        0.441 |      4.138 |        1.488 |      9.179 |        6.798 |   20.856 |     25.193 |
| 2021-02-11 | 3 480     |                    78.503 |      0.004 |        0.003 |      0.004 |        0.003 |      0.028 |        0.019 |      0.078 |        0.070 |      0.401 |        0.230 |      1.389 |        0.551 |      5.594 |        2.579 |     10.208 |        7.564 |   21.305 |     28.473 |
| 2021-02-10 | 4 387     |                   111.489 |      0.005 |        0.004 |      0.005 |        0.004 |      0.029 |        0.022 |      0.098 |        0.097 |      0.476 |        0.301 |      1.634 |        0.794 |      6.232 |        2.752 |     12.953 |        8.869 |   35.882 |     41.332 |
| 2021-02-09 | 2 583     |                    74.277 |      0.002 |        0.002 |      0.002 |        0.002 |      0.020 |        0.014 |      0.066 |        0.061 |      0.282 |        0.161 |      1.126 |        0.369 |      3.857 |        1.325 |     10.894 |        5.133 |   26.687 |     24.274 |
| 2021-02-08 | 2 505     |                    53.469 |      0.003 |        0.003 |      0.002 |        0.003 |      0.020 |        0.013 |      0.062 |        0.052 |      0.289 |        0.177 |      0.998 |        0.398 |      3.959 |        1.488 |      7.377 |        4.502 |   16.147 |     17.976 |
| 2021-02-07 | 3 508     |                    87.832 |      0.004 |        0.004 |      0.005 |        0.004 |      0.027 |        0.017 |      0.074 |        0.068 |      0.360 |        0.239 |      1.593 |        0.529 |      4.649 |        2.161 |     12.353 |        6.348 |   26.463 |     32.934 |
| 2021-02-06 | 6 132     |                   159.338 |      0.008 |        0.008 |      0.007 |        0.007 |      0.044 |        0.029 |      0.127 |        0.127 |      0.686 |        0.426 |      2.357 |        0.990 |      9.042 |        3.720 |     18.014 |       12.201 |   51.581 |     59.964 |
