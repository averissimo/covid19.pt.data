COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Thursday, April 01, 2021)*

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
| Portugal | 2021-04-01 |       592 |     11 |       702 |         \-20 |      2 |                  33 |                  35 |                  24 |                  15 |                  35 |                  49 |                  42 |                  46 |                  55 |                  43 |                  44 |                  38 |                  26 |                  39 |                  22 |                   9 |                15 |                22 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               2 |               0 |               1 |               1 |             1 |             5 |
| Portugal | 2021-03-31 |       618 |      3 |       707 |         \-26 |    \-2 |                  59 |                  35 |                  34 |                  10 |                  30 |                  39 |                  21 |                  50 |                  73 |                  54 |                  37 |                  44 |                  31 |                  34 |                  24 |                  13 |                12 |                16 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               1 |               0 |             1 |             0 |
| Portugal | 2021-03-30 |       388 |      2 |      1654 |         \-39 |    \-7 |                   6 |                  16 |                   8 |                  12 |                  26 |                  21 |                  22 |                  21 |                  42 |                  35 |                  32 |                  33 |                  13 |                  32 |                  24 |                  15 |                14 |                15 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               0 |             0 |             1 |
| Portugal | 2021-03-29 |       309 |      6 |       458 |         \-10 |    \-6 |                   9 |                  12 |                  26 |                  16 |                  22 |                  12 |                  13 |                  22 |                  15 |                  26 |                  23 |                  13 |                  26 |                  36 |                   7 |                   3 |                18 |                11 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               2 |               0 |             1 |             3 |
| Portugal | 2021-03-28 |       365 |     10 |       384 |           15 |    \-6 |                  13 |                  14 |                   7 |                 \-2 |                  32 |                  26 |                  21 |                  18 |                  25 |                  34 |                  21 |                  33 |                  23 |                  36 |                  15 |                  17 |                18 |                14 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               0 |               1 |               1 |               1 |             5 |             1 |

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
| 2021-04-01 |    822314 |  16859 |    778912 |          538 |    129 |               23212 |               22264 |               37897 |               38209 |               55085 |               62243 |               53799 |               64080 |               60455 |               76306 |               53701 |               68311 |               40137 |               43515 |               25652 |               28934 |             22620 |             45608 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             330 |             130 |            1046 |             456 |            2255 |            1321 |          5097 |          6015 |
| 2021-03-31 |    821722 |  16848 |    778210 |          558 |    127 |               23179 |               22229 |               37873 |               38194 |               55050 |               62194 |               53757 |               64034 |               60400 |               76263 |               53657 |               68273 |               40111 |               43476 |               25630 |               28925 |             22605 |             45586 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             330 |             129 |            1044 |             456 |            2254 |            1320 |          5096 |          6010 |
| 2021-03-30 |    821104 |  16845 |    777503 |          584 |    129 |               23120 |               22194 |               37839 |               38184 |               55020 |               62155 |               53736 |               63984 |               60327 |               76209 |               53620 |               68229 |               40080 |               43442 |               25606 |               28912 |             22593 |             45570 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             330 |             129 |            1043 |             456 |            2253 |            1320 |          5095 |          6010 |
| 2021-03-29 |    820716 |  16843 |    775849 |          623 |    136 |               23114 |               22178 |               37831 |               38172 |               54994 |               62134 |               53714 |               63963 |               60285 |               76174 |               53588 |               68196 |               40067 |               43410 |               25582 |               28897 |             22579 |             45555 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             330 |             129 |            1042 |             456 |            2253 |            1320 |          5095 |          6009 |
| 2021-03-28 |    820407 |  16837 |    775391 |          633 |    142 |               23105 |               22166 |               37805 |               38156 |               54972 |               62122 |               53701 |               63941 |               60270 |               76148 |               53565 |               68183 |               40041 |               43374 |               25575 |               28894 |             22561 |             45544 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             330 |             129 |            1042 |             456 |            2251 |            1320 |          5094 |          6006 |
| 2021-03-27 |    820042 |  16827 |    775007 |          618 |    148 |               23092 |               22152 |               37798 |               38158 |               54940 |               62096 |               53680 |               63923 |               60245 |               76114 |               53544 |               68150 |               40018 |               43338 |               25560 |               28877 |             22543 |             45530 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             329 |             129 |            1042 |             455 |            2250 |            1319 |          5089 |          6005 |
| 2021-03-26 |    819698 |  16819 |    771339 |          669 |    155 |               23092 |               22148 |               37779 |               38156 |               54916 |               62086 |               53663 |               63905 |               60217 |               76085 |               53520 |               68132 |               39992 |               43309 |               25543 |               28862 |             22518 |             45491 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             328 |             129 |            1042 |             454 |            2250 |            1318 |          5087 |          6002 |
| 2021-03-25 |    819210 |  16814 |    770448 |          695 |    154 |               23084 |               22136 |               37746 |               38129 |               54862 |               62048 |               53638 |               63877 |               60183 |               76048 |               53485 |               68105 |               39960 |               43279 |               25540 |               28847 |             22502 |             45463 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             328 |             129 |            1042 |             454 |            2249 |            1317 |          5087 |          5999 |
| 2021-03-24 |    818787 |  16805 |    769838 |          712 |    155 |               23074 |               22129 |               37732 |               38120 |               54836 |               62031 |               53585 |               63854 |               60154 |               76015 |               53437 |               68086 |               39922 |               43242 |               25524 |               28829 |             22485 |             45440 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             328 |             129 |            1040 |             454 |            2249 |            1316 |          5085 |          5995 |
| 2021-03-23 |    818212 |  16794 |    769086 |          743 |    159 |               23061 |               22121 |               37715 |               38096 |               54772 |               61997 |               53521 |               63804 |               60124 |               75984 |               53396 |               68036 |               39893 |               43193 |               25501 |               28812 |             22472 |             45420 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             326 |             129 |            1040 |             454 |            2249 |            1316 |          5082 |          5989 |
| 2021-03-22 |    817778 |  16784 |    767874 |          771 |    165 |               23054 |               22120 |               37696 |               38071 |               54750 |               61967 |               53505 |               63790 |               60095 |               75935 |               53360 |               68000 |               39855 |               43175 |               25485 |               28790 |             22455 |             45385 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             326 |             129 |            1040 |             454 |            2247 |            1315 |          5080 |          5984 |
| 2021-03-21 |    817530 |  16768 |    767319 |          765 |    170 |               23053 |               22118 |               37690 |               38069 |               54735 |               61944 |               53490 |               63775 |               60078 |               75920 |               53333 |               67976 |               39844 |               43146 |               25472 |               28785 |             22443 |             45369 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             325 |             129 |            1039 |             454 |            2242 |            1315 |          5076 |          5979 |
| 2021-03-20 |    817080 |  16762 |    766924 |          744 |    170 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| 2021-03-19 |    816623 |  16754 |    766170 |          789 |    182 |               23022 |               22095 |               37661 |               38050 |               54667 |               61873 |               53426 |               63707 |               60014 |               75839 |               53287 |               67879 |               39798 |               43073 |               25443 |               28751 |             22412 |             45335 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              91 |              61 |             325 |             129 |            1035 |             453 |            2238 |            1314 |          5073 |          5978 |
| 2021-03-18 |    816055 |  16743 |    764599 |          828 |    187 |               23005 |               22077 |               37637 |               38028 |               54623 |               61828 |               53374 |               63671 |               59977 |               75786 |               53247 |               67842 |               39775 |               43024 |               25421 |               28741 |             22407 |             45302 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              90 |              61 |             325 |             129 |            1031 |             453 |            2237 |            1313 |          5071 |          5976 |
| 2021-03-17 |    815570 |  16722 |    764019 |          856 |    205 |               22990 |               22071 |               37622 |               38016 |               54580 |               61791 |               53330 |               63644 |               59940 |               75746 |               53217 |               67800 |               39747 |               42996 |               25406 |               28710 |             22393 |             45286 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              90 |              61 |             324 |             128 |            1028 |             453 |            2232 |            1311 |          5065 |          5973 |
| 2021-03-16 |    814897 |  16707 |    762961 |          955 |    213 |               22978 |               22059 |               37590 |               37997 |               54543 |               61735 |               53288 |               63594 |               59894 |               75686 |               53173 |               67728 |               39706 |               42956 |               25384 |               28681 |             22373 |             45246 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              90 |              61 |             323 |             128 |            1027 |             452 |            2229 |            1309 |          5061 |          5970 |
| 2021-03-15 |    814513 |  16694 |    761788 |          996 |    231 |               22976 |               22047 |               37578 |               37985 |               54504 |               61726 |               53264 |               63566 |               59863 |               75662 |               53152 |               67691 |               39680 |               42929 |               25371 |               28664 |             22352 |             45219 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              89 |              61 |             323 |             126 |            1026 |             452 |            2226 |            1307 |          5059 |          5968 |
| 2021-03-14 |    814257 |  16684 |    759417 |          976 |    242 |               22972 |               22052 |               37580 |               37972 |               54483 |               61715 |               53264 |               63545 |               59838 |               75651 |               53127 |               67663 |               39670 |               42899 |               25354 |               28651 |             22339 |             45197 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              89 |              61 |             323 |             126 |            1025 |             452 |            2224 |            1306 |          5057 |          5964 |
| 2021-03-13 |    813716 |  16669 |    756259 |          980 |    253 |               22956 |               22039 |               37553 |               37949 |               54431 |               61665 |               53228 |               63513 |               59805 |               75603 |               53085 |               67626 |               39644 |               42875 |               25338 |               28629 |             22328 |             45168 |               1 |               1 |               1 |               1 |               7 |               5 |              21 |              20 |              88 |              61 |             322 |             126 |            1025 |             452 |            2220 |            1304 |          5055 |          5959 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted\_future\_deaths | 00-09\_men | 00-09\_women | 10-19\_men | 10-19\_women | 20-29\_men | 20-29\_women | 30-39\_men | 30-39\_women | 40-49\_men | 40-49\_women | 50-59\_men | 50-59\_women | 60-69\_men | 60-69\_women | 70-79\_men | 70-79\_women | 80+\_men | 80+\_women |
| :--------- | :-------- | ------------------------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | -------: | ---------: |
| 2021-04-01 | 592       |                    10.214 |      0.001 |        0.002 |      0.001 |        0.000 |      0.004 |        0.004 |      0.016 |        0.014 |      0.083 |        0.034 |      0.270 |        0.072 |      0.678 |        0.409 |      1.934 |        0.411 |    3.380 |      2.901 |
| 2021-03-31 | 618       |                     9.183 |      0.003 |        0.002 |      0.001 |        0.000 |      0.004 |        0.003 |      0.008 |        0.016 |      0.110 |        0.043 |      0.227 |        0.084 |      0.808 |        0.356 |      2.110 |        0.594 |    2.704 |      2.110 |
| 2021-03-30 | 388       |                     8.975 |      0.000 |        0.001 |      0.000 |        0.000 |      0.003 |        0.002 |      0.009 |        0.007 |      0.063 |        0.028 |      0.197 |        0.063 |      0.339 |        0.335 |      2.110 |        0.685 |    3.155 |      1.978 |
| 2021-03-29 | 309       |                     7.542 |      0.000 |        0.001 |      0.001 |        0.000 |      0.003 |        0.001 |      0.005 |        0.007 |      0.023 |        0.021 |      0.141 |        0.025 |      0.678 |        0.377 |      0.615 |        0.137 |    4.056 |      1.451 |
| 2021-03-28 | 365       |                     9.252 |      0.001 |        0.001 |      0.000 |        0.000 |      0.004 |        0.002 |      0.008 |        0.006 |      0.038 |        0.027 |      0.129 |        0.063 |      0.599 |        0.377 |      1.319 |        0.776 |    4.056 |      1.846 |
| 2021-03-27 | 344       |                    14.202 |      0.000 |        0.000 |      0.001 |        0.000 |      0.003 |        0.001 |      0.007 |        0.006 |      0.042 |        0.023 |      0.147 |        0.034 |      0.678 |        0.304 |      1.494 |        0.685 |    5.633 |      5.144 |
| 2021-03-26 | 488       |                     9.774 |      0.000 |        0.001 |      0.001 |        0.001 |      0.007 |        0.003 |      0.010 |        0.009 |      0.051 |        0.030 |      0.215 |        0.051 |      0.834 |        0.314 |      0.264 |        0.685 |    3.605 |      3.693 |
| 2021-03-25 | 423       |                    10.904 |      0.000 |        0.000 |      0.000 |        0.000 |      0.003 |        0.001 |      0.021 |        0.007 |      0.044 |        0.026 |      0.295 |        0.036 |      0.990 |        0.388 |      1.407 |        0.822 |    3.831 |      3.033 |
| 2021-03-24 | 575       |                    10.105 |      0.001 |        0.000 |      0.000 |        0.001 |      0.008 |        0.003 |      0.025 |        0.016 |      0.045 |        0.025 |      0.252 |        0.095 |      0.756 |        0.513 |      2.022 |        0.776 |    2.929 |      2.638 |
| 2021-03-23 | 434       |                    12.427 |      0.000 |        0.000 |      0.001 |        0.001 |      0.003 |        0.002 |      0.006 |        0.004 |      0.044 |        0.039 |      0.221 |        0.069 |      0.990 |        0.189 |      1.407 |        1.004 |    3.831 |      4.616 |
| 2021-03-22 | 248       |                     7.041 |      0.000 |        0.000 |      0.000 |        0.000 |      0.002 |        0.002 |      0.006 |        0.005 |      0.026 |        0.012 |      0.166 |        0.046 |      0.287 |        0.304 |      1.143 |        0.228 |    2.704 |      2.110 |
| 2021-03-21 | 450       |                    18.227 |      0.001 |        0.001 |      0.001 |        0.000 |      0.009 |        0.006 |      0.025 |        0.021 |      0.096 |        0.065 |      0.283 |        0.185 |      1.199 |        0.765 |      2.549 |        1.552 |    6.985 |      4.484 |
| 2021-03-19 | 568       |                     9.441 |      0.001 |        0.001 |      0.001 |        0.001 |      0.006 |        0.004 |      0.020 |        0.011 |      0.056 |        0.042 |      0.246 |        0.070 |      0.599 |        0.513 |      1.934 |        0.457 |    1.127 |      4.352 |
| 2021-03-18 | 485       |                     9.408 |      0.001 |        0.000 |      0.000 |        0.000 |      0.005 |        0.003 |      0.017 |        0.008 |      0.056 |        0.032 |      0.184 |        0.080 |      0.730 |        0.293 |      1.319 |        1.415 |    3.155 |      2.110 |
| 2021-03-17 | 673       |                    15.095 |      0.001 |        0.001 |      0.001 |        0.000 |      0.005 |        0.004 |      0.016 |        0.016 |      0.069 |        0.048 |      0.270 |        0.137 |      1.068 |        0.419 |      1.934 |        1.324 |    4.507 |      5.275 |
| 2021-03-16 | 384       |                    11.463 |      0.000 |        0.001 |      0.000 |        0.000 |      0.005 |        0.001 |      0.009 |        0.009 |      0.047 |        0.019 |      0.129 |        0.070 |      0.678 |        0.283 |      1.143 |        0.776 |    4.732 |      3.561 |
| 2021-03-15 | 256       |                     8.758 |      0.000 |        0.000 |      0.000 |        0.000 |      0.003 |        0.001 |      0.000 |        0.007 |      0.038 |        0.009 |      0.154 |        0.053 |      0.261 |        0.314 |      1.494 |        0.594 |    2.929 |      2.901 |
| 2021-03-14 | 541       |                    10.099 |      0.001 |        0.001 |      0.001 |        0.001 |      0.007 |        0.004 |      0.014 |        0.010 |      0.050 |        0.038 |      0.258 |        0.070 |      0.678 |        0.251 |      1.407 |        1.004 |    2.479 |      3.825 |
| 2021-03-13 | 564       |                  1915.851 |      0.001 |        0.001 |      0.000 |        0.001 |      0.009 |        0.003 |      0.016 |        0.006 |      0.048 |        0.032 |      0.258 |        0.089 |      0.599 |        0.293 |   1255.581 |      649.132 |    4.507 |      5.275 |
| 2021-03-12 | 577       |                  1920.170 |      0.001 |        0.001 |      0.001 |        0.000 |      0.006 |        0.003 |      0.016 |        0.012 |      0.062 |        0.029 |      0.246 |        0.105 |      0.834 |        0.388 |   1259.361 |      651.186 |    3.831 |      4.088 |
