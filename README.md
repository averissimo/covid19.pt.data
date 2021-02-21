COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, February 21, 2021)*

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
| Portugal | 2021-02-21 |      1186 |     65 |      2306 |           32 |   \-18 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2021-02-20 |      1570 |     76 |      5050 |        \-300 |   \-13 |                  33 |                  44 |                  71 |                  59 |                  94 |                 112 |                  99 |                 123 |                 116 |                 131 |                  93 |                 138 |                  98 |                  96 |                  56 |                  56 |                50 |               102 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               2 |               0 |               4 |               7 |               5 |               5 |            25 |            27 |
| Portugal | 2021-02-19 |      1940 |     67 |      4404 |        \-235 |   \-19 |                  49 |                  43 |                  82 |                  90 |                 131 |                 146 |                 131 |                 134 |                 139 |                 141 |                 135 |                 169 |                 131 |                 112 |                  71 |                  77 |                46 |               117 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               5 |               5 |              14 |               3 |            22 |            17 |
| Portugal | 2021-02-18 |      1944 |    105 |      4401 |        \-318 |   \-31 |                  50 |                  49 |                  89 |                  84 |                 119 |                 127 |                 147 |                 149 |                 140 |                 140 |                 118 |                 155 |                 100 |                 115 |                  73 |                 111 |                55 |               115 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               5 |               2 |               9 |               6 |              18 |              10 |            20 |            34 |
| Portugal | 2021-02-17 |      2324 |    127 |      5342 |        \-345 |   \-33 |                  49 |                  72 |                  92 |                 100 |                 139 |                 145 |                 153 |                 175 |                 172 |                 182 |                 163 |                 199 |                 112 |                 129 |                  98 |                  88 |                83 |               171 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               3 |               1 |              10 |               2 |              20 |              14 |            37 |            39 |

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
| 2021-02-21 |    797525 |  15962 |    699222 |         3316 |    638 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
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
| 2021-02-06 |    761906 |  13954 |    599593 |         6158 |    891 |               21662 |               20779 |               35472 |               35826 |               51006 |               58278 |               49852 |               60009 |               55985 |               71460 |               49452 |               63216 |               36771 |               39728 |               23360 |               26396 |             20611 |             41796 |               1 |               1 |               1 |               1 |               6 |               4 |              18 |              16 |              73 |              49 |             253 |             101 |             846 |             352 |            1785 |            1073 |          4272 |          5102 |
| 2021-02-05 |    755774 |  13740 |    585276 |         6412 |    904 |               21485 |               20613 |               35228 |               35576 |               50668 |               57924 |               49520 |               59589 |               55520 |               70920 |               49048 |               62666 |               36417 |               39363 |               23150 |               26125 |             20381 |             41339 |               0 |               1 |               1 |               1 |               6 |               4 |              17 |              16 |              70 |              47 |             250 |             101 |             833 |             344 |            1756 |            1056 |          4211 |          5026 |
| 2021-02-04 |    748858 |  13482 |    573934 |         6496 |    863 |               21252 |               20442 |               34913 |               35238 |               50276 |               57471 |               49127 |               59101 |               55004 |               70265 |               48578 |               62136 |               36049 |               38953 |               22915 |               25840 |             20166 |             40919 |               0 |               1 |               1 |               1 |               6 |               4 |              17 |              14 |              69 |              46 |             247 |              99 |             814 |             335 |            1726 |            1037 |          4132 |          4933 |
| 2021-02-03 |    740944 |  13257 |    563174 |         6684 |    877 |               21034 |               20231 |               34560 |               34878 |               49799 |               56960 |               48665 |               58584 |               54426 |               69533 |               47996 |               61471 |               35645 |               38462 |               22625 |               25480 |             19939 |             40427 |               0 |               1 |               1 |               1 |               6 |               4 |              17 |              14 |              69 |              45 |             244 |              98 |             799 |             328 |            1694 |            1012 |          4075 |          4849 |
| 2021-02-02 |    731861 |  13017 |    551956 |         6775 |    852 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted\_future\_deaths | 00-09\_men | 00-09\_women | 10-19\_men | 10-19\_women | 20-29\_men | 20-29\_women | 30-39\_men | 30-39\_women | 40-49\_men | 40-49\_women | 50-59\_men | 50-59\_women | 60-69\_men | 60-69\_women | 70-79\_men | 70-79\_women | 80+\_men | 80+\_women |
| :--------- | :-------- | ------------------------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | -------: | ---------: |
| 2021-02-20 | 1 570     |                    36.167 |      0.001 |        0.002 |      0.002 |        0.002 |      0.011 |        0.009 |      0.038 |        0.037 |      0.169 |        0.104 |      0.533 |        0.248 |      2.459 |        0.963 |      4.739 |        2.479 |   11.100 |     13.271 |
| 2021-02-19 | 1 940     |                    40.781 |      0.002 |        0.002 |      0.002 |        0.002 |      0.015 |        0.012 |      0.050 |        0.041 |      0.202 |        0.112 |      0.774 |        0.304 |      3.287 |        1.123 |      6.009 |        3.409 |   10.212 |     15.223 |
| 2021-02-18 | 1 944     |                    43.329 |      0.002 |        0.002 |      0.002 |        0.002 |      0.013 |        0.010 |      0.056 |        0.045 |      0.203 |        0.111 |      0.676 |        0.279 |      2.509 |        1.153 |      6.178 |        4.915 |   12.210 |     14.963 |
| 2021-02-17 | 2 324     |                    58.806 |      0.002 |        0.003 |      0.002 |        0.003 |      0.016 |        0.012 |      0.059 |        0.053 |      0.250 |        0.145 |      0.934 |        0.358 |      2.810 |        1.294 |      8.294 |        3.896 |   18.426 |     22.249 |
| 2021-02-16 | 1 502     |                    39.111 |      0.001 |        0.001 |      0.002 |        0.002 |      0.010 |        0.009 |      0.046 |        0.028 |      0.153 |        0.094 |      0.665 |        0.225 |      2.108 |        1.023 |      5.755 |        3.232 |   12.876 |     12.881 |
| 2021-02-15 | 1 303     |                    32.277 |      0.001 |        0.002 |      0.001 |        0.001 |      0.008 |        0.008 |      0.033 |        0.024 |      0.131 |        0.090 |      0.487 |        0.187 |      2.283 |        0.662 |      4.655 |        3.321 |    9.324 |     11.059 |
| 2021-02-14 | 1 677     |                    43.577 |      0.002 |        0.002 |      0.002 |        0.002 |      0.012 |        0.008 |      0.038 |        0.030 |      0.179 |        0.104 |      0.699 |        0.239 |      2.233 |        1.083 |      4.062 |        3.055 |   14.652 |     17.175 |
| 2021-02-13 | 2 856     |                    65.361 |      0.003 |        0.003 |      0.003 |        0.003 |      0.022 |        0.017 |      0.076 |        0.061 |      0.276 |        0.175 |      1.169 |        0.444 |      3.714 |        1.695 |      8.209 |        5.402 |   19.758 |     24.331 |
| 2021-02-12 | 2 854     |                    69.059 |      0.002 |        0.003 |      0.003 |        0.004 |      0.022 |        0.015 |      0.068 |        0.057 |      0.308 |        0.202 |      1.037 |        0.440 |      4.065 |        1.464 |      9.056 |        6.686 |   20.646 |     24.981 |
| 2021-02-11 | 3 480     |                    77.613 |      0.004 |        0.003 |      0.004 |        0.003 |      0.024 |        0.020 |      0.078 |        0.071 |      0.395 |        0.232 |      1.364 |        0.550 |      5.495 |        2.537 |     10.071 |        7.438 |   21.090 |     28.234 |
| 2021-02-10 | 4 387     |                   110.269 |      0.005 |        0.004 |      0.005 |        0.004 |      0.025 |        0.023 |      0.099 |        0.097 |      0.469 |        0.303 |      1.605 |        0.793 |      6.123 |        2.708 |     12.779 |        8.722 |   35.520 |     40.985 |
| 2021-02-09 | 2 583     |                    73.459 |      0.002 |        0.002 |      0.002 |        0.002 |      0.018 |        0.014 |      0.066 |        0.061 |      0.278 |        0.162 |      1.106 |        0.369 |      3.789 |        1.304 |     10.748 |        5.048 |   26.418 |     24.070 |
| 2021-02-08 | 2 505     |                    52.864 |      0.003 |        0.003 |      0.002 |        0.003 |      0.017 |        0.013 |      0.063 |        0.052 |      0.285 |        0.178 |      0.980 |        0.397 |      3.889 |        1.464 |      7.278 |        4.428 |   15.984 |     17.825 |
| 2021-02-07 | 3 508     |                    86.868 |      0.004 |        0.004 |      0.005 |        0.004 |      0.024 |        0.017 |      0.075 |        0.068 |      0.355 |        0.241 |      1.565 |        0.529 |      4.567 |        2.126 |     12.187 |        6.243 |   26.196 |     32.658 |
| 2021-02-06 | 6 132     |                   157.596 |      0.008 |        0.008 |      0.007 |        0.007 |      0.038 |        0.029 |      0.128 |        0.128 |      0.676 |        0.429 |      2.315 |        0.989 |      8.883 |        3.660 |     17.773 |       11.999 |   51.059 |     59.460 |
| 2021-02-05 | 6 916     |                   153.562 |      0.010 |        0.008 |      0.009 |        0.009 |      0.044 |        0.037 |      0.151 |        0.149 |      0.750 |        0.520 |      2.694 |        0.953 |      9.234 |        4.112 |     19.888 |       12.619 |   47.729 |     54.646 |
| 2021-02-04 | 7 914     |                   176.373 |      0.010 |        0.010 |      0.010 |        0.010 |      0.054 |        0.042 |      0.178 |        0.157 |      0.840 |        0.581 |      3.335 |        1.195 |     10.137 |        4.924 |     24.543 |       15.940 |   50.393 |     64.014 |
| 2021-02-03 | 9 083     |                   321.739 |      0.018 |        0.019 |      0.017 |        0.019 |      0.093 |        0.073 |      0.343 |        0.319 |      1.652 |        1.090 |      6.207 |        2.101 |     20.375 |        8.895 |     43.416 |       24.352 |   98.123 |    114.627 |
| 2021-02-01 | 5 805     |                   133.971 |      0.010 |        0.009 |      0.006 |        0.007 |      0.036 |        0.031 |      0.126 |        0.121 |      0.628 |        0.422 |      2.310 |        0.888 |      6.775 |        3.289 |     15.064 |       10.361 |   42.624 |     51.264 |
| 2021-01-31 | 9 498     |                   188.188 |      0.016 |        0.017 |      0.014 |        0.013 |      0.055 |        0.049 |      0.229 |        0.203 |      1.056 |        0.712 |      3.490 |        1.431 |     11.793 |        5.114 |     28.351 |       15.320 |   56.831 |     63.494 |
