COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Saturday, December 11, 2021)*

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
| 2021-12-11 |         5 |     19 |         5 |            5 |      5 |            NA |             NA |               321 |               343 |               336 |               277 |               419 |               345 |               416 |               404 |               434 |               531 |               303 |               368 |               246 |               283 |               125 |               122 |              42 |              59 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             0 |             3 |             1 |           8 |           5 |
| 2021-12-10 |         4 |     16 |         4 |          -14 |     -5 |            NA |             NA |               213 |               207 |               219 |               172 |               314 |               260 |               305 |               291 |               298 |               315 |               256 |               250 |               185 |               195 |                98 |               108 |              24 |              31 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             0 |             1 |             1 |             5 |             0 |           4 |           3 |
| 2021-12-09 |         4 |     23 |         1 |           44 |      4 |            NA |             NA |               236 |               226 |               221 |               185 |               355 |               236 |               295 |               267 |               260 |               278 |               193 |               243 |               168 |               175 |                88 |                83 |              39 |              41 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             4 |             0 |             4 |             1 |           7 |           7 |
| 2021-12-08 |         5 |     15 |         3 |          -19 |      5 |            NA |             NA |               326 |               295 |               302 |               269 |               510 |               283 |               393 |               395 |               436 |               463 |               310 |               366 |               262 |               290 |               151 |               136 |              29 |              63 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             5 |             0 |           6 |           3 |
| 2021-12-07 |         3 |     21 |         5 |          -12 |     -2 |            NA |             NA |               209 |               191 |               169 |               164 |               300 |               189 |               262 |               259 |               289 |               303 |               196 |               243 |               197 |               186 |                97 |               103 |              23 |              35 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             2 |             4 |           5 |           8 |

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
| 2021-12-11 |      1190 |  18645 |      1106 |          952 |    142 |             41258 |             39762 |             64012 |             63166 |             95079 |             96180 |             82752 |             92010 |             86161 |            105042 |             71792 |             89465 |             52988 |             58207 |             33707 |             37694 |           27038 |           53277 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           115 |            72 |           378 |           160 |          1176 |           526 |          2497 |          1520 |        5578 |        6558 |            NA |             NA |
| 2021-12-10 |      1185 |  18626 |      1101 |          947 |    137 |             40937 |             39419 |             63676 |             62889 |             94660 |             95835 |             82336 |             91606 |             85727 |            104511 |             71489 |             89097 |             52742 |             57924 |             33582 |             37572 |           26996 |           53218 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           115 |            72 |           377 |           160 |          1175 |           526 |          2494 |          1519 |        5570 |        6553 |            NA |             NA |
| 2021-12-09 |      1181 |  18610 |      1097 |          961 |    142 |             40724 |             39212 |             63457 |             62717 |             94346 |             95575 |             82031 |             91315 |             85429 |            104196 |             71233 |             88847 |             52557 |             57729 |             33484 |             37464 |           26972 |           53187 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           376 |           160 |          1174 |           525 |          2489 |          1519 |        5566 |        6550 |            NA |             NA |
| 2021-12-08 |      1177 |  18587 |      1096 |          917 |    138 |             40488 |             38986 |             63236 |             62532 |             93991 |             95339 |             81736 |             91048 |             85169 |            103918 |             71040 |             88604 |             52389 |             57554 |             33396 |             37381 |           26933 |           53146 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           376 |           160 |          1170 |           525 |          2485 |          1518 |        5559 |        6543 |            NA |             NA |
| 2021-12-07 |      1172 |  18572 |      1093 |          936 |    133 |             40162 |             38691 |             62934 |             62263 |             93481 |             95056 |             81343 |             90653 |             84733 |            103455 |             70730 |             88238 |             52127 |             57264 |             33245 |             37245 |           26904 |           53083 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           376 |           160 |          1170 |           524 |          2480 |          1518 |        5553 |        6540 |            NA |             NA |
| 2021-12-06 |      1169 |  18551 |      1088 |          948 |    135 |             39953 |             38500 |             62765 |             62099 |             93181 |             94867 |             81081 |             90394 |             84444 |            103152 |             70534 |             87995 |             51930 |             57078 |             33148 |             37142 |           26881 |           53048 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           376 |           160 |          1169 |           523 |          2478 |          1514 |        5548 |        6532 |            NA |             NA |
| 2021-12-05 |      1166 |  18537 |      1086 |          911 |    134 |             39804 |             38342 |             62623 |             61990 |             93007 |             94727 |             80920 |             90221 |             84252 |            102941 |             70406 |             87851 |             51836 |             56984 |             33100 |             37083 |           26862 |           53029 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           376 |           160 |          1169 |           523 |          2472 |          1514 |        5543 |        6529 |            NA |             NA |
| 2021-12-04 |      1163 |  18514 |      1085 |          879 |    130 |             39540 |             38084 |             62386 |             61798 |             92700 |             94529 |             80688 |             89965 |             83901 |            102572 |             70198 |             87602 |             51645 |             56780 |             33009 |             36993 |           26828 |           52978 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           375 |           160 |          1167 |           523 |          2469 |          1514 |        5536 |        6519 |            NA |             NA |
| 2021-12-03 |      1157 |  18492 |      1082 |          902 |    129 |             39184 |             37801 |             62048 |             61515 |             92244 |             94162 |             80260 |             89587 |             83433 |            102044 |             69820 |             87214 |             51371 |             56487 |             32831 |             36842 |           26791 |           52914 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           375 |           159 |          1165 |           521 |          2466 |          1509 |        5530 |        6516 |            NA |             NA |
| 2021-12-02 |      1154 |  18471 |      1078 |          916 |    128 |             39045 |             37682 |             61910 |             61411 |             92046 |             94017 |             80072 |             89388 |             83219 |            101830 |             69646 |             87054 |             51232 |             56344 |             32740 |             36750 |           26766 |           52865 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           375 |           159 |          1162 |           521 |          2466 |          1506 |        5520 |        6511 |            NA |             NA |
| 2021-12-01 |      1151 |  18458 |      1077 |          841 |    116 |             38844 |             37487 |             61752 |             61248 |             91825 |             93860 |             79848 |             89160 |             82986 |            101589 |             69464 |             86859 |             51094 |             56223 |             32654 |             36674 |           26734 |           52818 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           374 |           159 |          1162 |           521 |          2465 |          1502 |        5517 |        6507 |            NA |             NA |
| 2021-11-30 |      1147 |  18441 |      1075 |          833 |    116 |             38544 |             37164 |             61478 |             61041 |             91483 |             93617 |             79516 |             88793 |             82602 |            101188 |             69171 |             86532 |             50850 |             55984 |             32529 |             36521 |           26690 |           52749 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           373 |           159 |          1162 |           520 |          2460 |          1500 |        5512 |        6504 |            NA |             NA |
| 2021-11-29 |      1144 |  18430 |      1071 |          809 |    111 |             38369 |             37009 |             61320 |             60907 |             91246 |             93469 |             79308 |             88587 |             82382 |            100932 |             68986 |             86308 |             50708 |             55832 |             32421 |             36409 |           26661 |           52700 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           372 |           159 |          1161 |           520 |          2458 |          1498 |        5510 |        6501 |            NA |             NA |
| 2021-11-28 |      1142 |  18417 |      1070 |          764 |    104 |             38247 |             36902 |             61237 |             60834 |             91139 |             93387 |             79166 |             88450 |             82249 |            100790 |             68900 |             86192 |             50628 |             55751 |             32369 |             36363 |           26644 |           52672 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           371 |           159 |          1160 |           519 |          2457 |          1497 |        5504 |        6499 |            NA |             NA |
| 2021-11-27 |      1139 |  18405 |      1069 |          708 |    104 |             38024 |             36700 |             61046 |             60691 |             90882 |             93231 |             78977 |             88250 |             82026 |            100535 |             68741 |             86005 |             50497 |             55584 |             32292 |             36295 |           26618 |           52630 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           114 |            72 |           371 |           158 |          1158 |           519 |          2456 |          1495 |        5501 |        6496 |            NA |             NA |
| 2021-11-26 |      1136 |  18393 |      1067 |          705 |    100 |             37805 |             36465 |             60862 |             60541 |             90604 |             93044 |             78735 |             88016 |             81768 |            100296 |             68548 |             85778 |             50335 |             55387 |             32189 |             36160 |           26567 |           52562 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           371 |           158 |          1157 |           519 |          2453 |          1494 |        5499 |        6492 |            NA |             NA |
| 2021-11-25 |      1133 |  18385 |      1065 |          691 |    103 |             37612 |             36240 |             60664 |             60393 |             90341 |             92864 |             78520 |             87797 |             81514 |            100023 |             68359 |             85576 |             50174 |             55199 |             32094 |             36048 |           26538 |           52508 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           371 |           158 |          1157 |           519 |          2451 |          1494 |        5495 |        6490 |            NA |             NA |
| 2021-11-24 |      1130 |  18370 |      1063 |          681 |    105 |             37372 |             36023 |             60503 |             60231 |             90081 |             92711 |             78318 |             87596 |             81300 |             99750 |             68189 |             85374 |             49990 |             55015 |             31993 |             35911 |           26508 |           52454 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           371 |           158 |          1157 |           519 |          2447 |          1490 |        5491 |        6487 |            NA |             NA |
| 2021-11-23 |      1126 |  18353 |      1062 |          649 |     93 |             37127 |             35783 |             60301 |             60037 |             89793 |             92509 |             78082 |             87344 |             81013 |             99392 |             67958 |             85097 |             49803 |             54800 |             31882 |             35774 |           26466 |           52380 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           371 |           158 |          1154 |           519 |          2445 |          1488 |        5488 |        6480 |            NA |             NA |
| 2021-11-22 |      1123 |  18339 |      1059 |          628 |     93 |             36996 |             35628 |             60183 |             59929 |             89602 |             92386 |             77913 |             87165 |             80812 |             99145 |             67779 |             84898 |             49667 |             54666 |             31783 |             35672 |           26429 |           52333 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           113 |            72 |           370 |           158 |          1153 |           518 |          2442 |          1484 |        5486 |        6478 |            NA |             NA |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-12-11 | 5         |                  41.631 |     0.016 |       0.009 |     0.005 |       0.004 |     0.035 |       0.018 |     0.136 |       0.088 |     0.579 |       0.364 |     1.595 |       0.658 |     5.460 |       2.557 |     9.260 |       4.920 |   8.665 |     7.262 |
| 2021-12-10 | 4         |                  28.883 |     0.010 |       0.005 |     0.003 |       0.003 |     0.026 |       0.014 |     0.100 |       0.063 |     0.398 |       0.216 |     1.348 |       0.447 |     4.106 |       1.762 |     7.260 |       4.355 |   4.951 |     3.816 |
| 2021-12-09 | 4         |                  30.477 |     0.011 |       0.006 |     0.003 |       0.003 |     0.030 |       0.012 |     0.096 |       0.058 |     0.347 |       0.191 |     1.016 |       0.435 |     3.729 |       1.581 |     6.519 |       3.347 |   8.046 |     5.047 |
| 2021-12-08 | 5         |                  42.334 |     0.016 |       0.007 |     0.005 |       0.004 |     0.043 |       0.015 |     0.128 |       0.086 |     0.582 |       0.317 |     1.632 |       0.655 |     5.815 |       2.621 |    11.186 |       5.484 |   5.983 |     7.755 |
| 2021-12-07 | 3         |                  28.703 |     0.010 |       0.005 |     0.003 |       0.003 |     0.025 |       0.010 |     0.085 |       0.056 |     0.386 |       0.208 |     1.032 |       0.435 |     4.372 |       1.681 |     7.186 |       4.153 |   4.745 |     4.308 |
| 2021-12-06 | 3         |                  16.590 |     0.007 |       0.004 |     0.002 |       0.002 |     0.015 |       0.007 |     0.053 |       0.038 |     0.256 |       0.145 |     0.674 |       0.258 |     2.086 |       0.849 |     3.556 |       2.379 |   3.920 |     2.339 |
| 2021-12-05 | 3         |                  32.199 |     0.013 |       0.006 |     0.004 |       0.003 |     0.026 |       0.010 |     0.076 |       0.056 |     0.468 |       0.253 |     1.095 |       0.445 |     4.239 |       1.843 |     6.741 |       3.629 |   7.014 |     6.278 |
| 2021-12-04 | 6         |                  47.498 |     0.017 |       0.007 |     0.005 |       0.004 |     0.038 |       0.019 |     0.140 |       0.082 |     0.625 |       0.362 |     1.990 |       0.694 |     6.081 |       2.648 |    13.186 |       6.089 |   7.633 |     7.878 |
| 2021-12-03 | 3         |                  27.796 |     0.007 |       0.003 |     0.002 |       0.002 |     0.017 |       0.008 |     0.061 |       0.043 |     0.286 |       0.147 |     0.916 |       0.286 |     3.085 |       1.292 |     6.741 |       3.710 |   5.158 |     6.032 |
| 2021-12-02 | 3         |                  27.932 |     0.010 |       0.005 |     0.002 |       0.003 |     0.019 |       0.008 |     0.073 |       0.050 |     0.311 |       0.165 |     0.958 |       0.349 |     3.063 |       1.093 |     6.371 |       3.065 |   6.602 |     5.785 |
| 2021-12-01 | 4         |                  43.751 |     0.015 |       0.008 |     0.004 |       0.003 |     0.029 |       0.013 |     0.108 |       0.080 |     0.513 |       0.275 |     1.543 |       0.585 |     5.415 |       2.160 |     9.260 |       6.170 |   9.077 |     8.493 |
| 2021-11-30 | 3         |                  31.059 |     0.008 |       0.004 |     0.002 |       0.002 |     0.020 |       0.008 |     0.068 |       0.045 |     0.294 |       0.175 |     0.974 |       0.401 |     3.152 |       1.374 |     8.001 |       4.516 |   5.983 |     6.032 |
| 2021-11-29 | 2         |                  16.203 |     0.006 |       0.003 |     0.001 |       0.001 |     0.009 |       0.004 |     0.046 |       0.030 |     0.178 |       0.097 |     0.453 |       0.207 |     1.775 |       0.732 |     3.852 |       1.855 |   3.507 |     3.447 |
| 2021-11-28 | 3         |                  25.196 |     0.011 |       0.005 |     0.003 |       0.002 |     0.022 |       0.008 |     0.062 |       0.043 |     0.298 |       0.175 |     0.837 |       0.334 |     2.907 |       1.509 |     5.704 |       2.742 |   5.364 |     5.170 |
| 2021-11-27 | 3         |                  39.455 |     0.011 |       0.006 |     0.003 |       0.002 |     0.023 |       0.010 |     0.079 |       0.051 |     0.344 |       0.164 |     1.016 |       0.406 |     3.595 |       1.780 |     7.630 |       5.444 |  10.521 |     8.370 |
| 2021-11-26 | 3         |                  31.507 |     0.009 |       0.006 |     0.003 |       0.002 |     0.022 |       0.009 |     0.070 |       0.048 |     0.339 |       0.187 |     0.995 |       0.361 |     3.573 |       1.699 |     7.038 |       4.516 |   5.983 |     6.647 |
| 2021-11-25 | 3         |                  33.481 |     0.012 |       0.005 |     0.003 |       0.003 |     0.022 |       0.008 |     0.066 |       0.044 |     0.286 |       0.187 |     0.895 |       0.361 |     4.084 |       1.663 |     7.482 |       5.524 |   6.189 |     6.647 |
| 2021-11-24 | 4         |                  40.144 |     0.012 |       0.006 |     0.003 |       0.003 |     0.024 |       0.011 |     0.077 |       0.055 |     0.383 |       0.245 |     1.216 |       0.495 |     4.150 |       1.943 |     8.223 |       5.524 |   8.665 |     9.109 |
| 2021-11-23 | 3         |                  30.959 |     0.006 |       0.004 |     0.002 |       0.002 |     0.016 |       0.006 |     0.055 |       0.039 |     0.268 |       0.169 |     0.942 |       0.356 |     3.018 |       1.211 |     7.334 |       4.113 |   7.633 |     5.785 |
| 2021-11-22 | 1         |                  17.780 |     0.006 |       0.003 |     0.001 |       0.001 |     0.008 |       0.004 |     0.027 |       0.019 |     0.159 |       0.090 |     0.479 |       0.168 |     1.332 |       0.642 |     3.556 |       1.573 |   5.158 |     4.554 |
