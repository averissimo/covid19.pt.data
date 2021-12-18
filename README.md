COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Saturday, December 18, 2021)*

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
| 2021-12-18 |         5 |     12 |         5 |          -38 |      0 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-12-17 |         4 |     24 |         4 |           -9 |    -11 |            NA |             NA |               267 |               270 |               241 |               228 |               465 |               380 |               358 |               381 |               390 |               412 |               273 |               311 |               222 |               214 |                74 |                82 |              28 |              45 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             2 |             1 |             2 |             4 |             2 |           6 |           6 |
| 2021-12-16 |         6 |     19 |         3 |          -15 |      8 |            NA |             NA |               344 |               295 |               296 |               300 |               446 |               421 |               401 |               409 |               366 |               447 |               318 |               339 |               233 |               227 |               109 |                94 |              33 |              59 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             1 |             0 |             1 |             0 |             1 |             1 |           6 |           8 |
| 2021-12-15 |         5 |     11 |         4 |           14 |      8 |            NA |             NA |               366 |               374 |               291 |               331 |               487 |               400 |               431 |               479 |               463 |               548 |               366 |               425 |               254 |               266 |                92 |               112 |              49 |              58 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             3 |             3 |           1 |           2 |
| 2021-12-14 |         4 |     14 |         6 |          -41 |     -2 |            NA |             NA |               220 |               208 |               180 |               160 |               299 |               247 |               306 |               259 |               319 |               332 |               209 |               249 |               189 |               183 |                82 |                75 |              25 |              40 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             2 |             0 |             1 |             3 |           2 |           5 |

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
| 2021-12-18 |      1220 |  18753 |      1131 |          905 |    147 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-12-17 |      1215 |  18741 |      1126 |          943 |    147 |             42874 |             41334 |             65344 |             64508 |             97299 |             98023 |             84670 |             93976 |             88231 |            107288 |             73387 |             91222 |             54193 |             59394 |             34203 |             38208 |           27220 |           53557 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           116 |            73 |           381 |           162 |          1184 |           530 |          2515 |          1531 |        5598 |        6584 |            NA |             NA |
| 2021-12-16 |      1211 |  18717 |      1122 |          952 |    158 |             42607 |             41064 |             65103 |             64280 |             96834 |             97643 |             84312 |             93595 |             87841 |            106876 |             73114 |             90911 |             53971 |             59180 |             34129 |             38126 |           27192 |           53512 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           116 |            73 |           380 |           160 |          1183 |           528 |          2511 |          1529 |        5592 |        6578 |            NA |             NA |
| 2021-12-15 |      1205 |  18698 |      1119 |          967 |    150 |             42263 |             40769 |             64807 |             63980 |             96388 |             97222 |             83911 |             93186 |             87475 |            106429 |             72796 |             90572 |             53738 |             58953 |             34020 |             38032 |           27159 |           53453 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            20 |           116 |            73 |           379 |           160 |          1182 |           528 |          2510 |          1528 |        5586 |        6570 |            NA |             NA |
| 2021-12-14 |      1200 |  18687 |      1115 |          953 |    142 |             41897 |             40395 |             64516 |             63649 |             95901 |             96822 |             83480 |             92707 |             87012 |            105881 |             72430 |             90147 |             53484 |             58687 |             33928 |             37920 |           27110 |           53395 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           116 |            73 |           378 |           160 |          1182 |           528 |          2507 |          1525 |        5585 |        6568 |            NA |             NA |
| 2021-12-13 |      1196 |  18673 |      1109 |          994 |    144 |             41677 |             40187 |             64336 |             63489 |             95602 |             96575 |             83174 |             92448 |             86693 |            105549 |             72221 |             89898 |             53295 |             58504 |             33846 |             37845 |           27085 |           53355 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           115 |            73 |           378 |           160 |          1180 |           528 |          2506 |          1522 |        5583 |        6563 |            NA |             NA |
| 2021-12-12 |      1194 |  18658 |      1107 |          964 |    143 |             41513 |             40013 |             64219 |             63369 |             95434 |             96416 |             83011 |             92287 |             86504 |            105358 |             72058 |             89738 |             53177 |             58401 |             33796 |             37787 |           27066 |           53319 |             2 |             1 |             1 |             1 |             8 |             5 |            27 |            20 |           115 |            72 |           378 |           160 |          1177 |           527 |          2502 |          1521 |        5580 |        6561 |            NA |             NA |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-12-17 | 4         |                  29.825 |     0.012 |       0.007 |     0.004 |       0.007 |     0.038 |       0.019 |     0.114 |       0.085 |     0.513 |       0.280 |     1.417 |       0.552 |     4.850 |       1.910 |     5.441 |       3.286 |   5.758 |     5.532 |
| 2021-12-16 | 6         |                  36.291 |     0.016 |       0.007 |     0.005 |       0.009 |     0.037 |       0.021 |     0.128 |       0.091 |     0.481 |       0.304 |     1.651 |       0.602 |     5.091 |       2.026 |     8.015 |       3.767 |   6.787 |     7.253 |
| 2021-12-15 | 5         |                  40.364 |     0.017 |       0.009 |     0.004 |       0.010 |     0.040 |       0.020 |     0.137 |       0.107 |     0.609 |       0.373 |     1.900 |       0.755 |     5.549 |       2.374 |     6.765 |       4.488 |  10.077 |     7.130 |
| 2021-12-14 | 4         |                  27.244 |     0.010 |       0.005 |     0.003 |       0.005 |     0.025 |       0.013 |     0.098 |       0.058 |     0.419 |       0.226 |     1.085 |       0.442 |     4.129 |       1.633 |     6.030 |       3.005 |   5.141 |     4.917 |
| 2021-12-13 | 2         |                  19.467 |     0.008 |       0.004 |     0.002 |       0.004 |     0.014 |       0.008 |     0.052 |       0.036 |     0.248 |       0.130 |     0.846 |       0.284 |     2.578 |       0.919 |     3.677 |       2.324 |   3.907 |     4.426 |
| 2021-12-12 | 4         |                  29.797 |     0.012 |       0.006 |     0.003 |       0.006 |     0.029 |       0.012 |     0.083 |       0.062 |     0.451 |       0.215 |     1.381 |       0.485 |     4.129 |       1.731 |     6.544 |       3.727 |   5.758 |     5.163 |
| 2021-12-11 | 5         |                  41.342 |     0.015 |       0.008 |     0.005 |       0.009 |     0.034 |       0.018 |     0.133 |       0.090 |     0.571 |       0.361 |     1.573 |       0.654 |     5.375 |       2.525 |     9.191 |       4.889 |   8.638 |     7.253 |
| 2021-12-10 | 4         |                  28.666 |     0.010 |       0.005 |     0.003 |       0.005 |     0.026 |       0.013 |     0.097 |       0.065 |     0.392 |       0.214 |     1.329 |       0.444 |     4.042 |       1.740 |     7.206 |       4.328 |   4.936 |     3.811 |
| 2021-12-09 | 4         |                  30.275 |     0.011 |       0.005 |     0.003 |       0.006 |     0.029 |       0.012 |     0.094 |       0.060 |     0.342 |       0.189 |     1.002 |       0.432 |     3.670 |       1.562 |     6.471 |       3.326 |   8.021 |     5.040 |
| 2021-12-08 | 5         |                  42.025 |     0.015 |       0.007 |     0.005 |       0.008 |     0.042 |       0.014 |     0.125 |       0.088 |     0.573 |       0.315 |     1.609 |       0.650 |     5.724 |       2.588 |    11.103 |       5.450 |   5.964 |     7.745 |
| 2021-12-07 | 3         |                  28.493 |     0.010 |       0.005 |     0.003 |       0.005 |     0.025 |       0.010 |     0.084 |       0.058 |     0.380 |       0.206 |     1.018 |       0.432 |     4.304 |       1.660 |     7.133 |       4.127 |   4.730 |     4.303 |
| 2021-12-06 | 3         |                  16.474 |     0.007 |       0.004 |     0.002 |       0.003 |     0.014 |       0.007 |     0.051 |       0.039 |     0.252 |       0.144 |     0.665 |       0.256 |     2.054 |       0.839 |     3.530 |       2.364 |   3.907 |     2.336 |
| 2021-12-05 | 3         |                  31.980 |     0.012 |       0.006 |     0.004 |       0.006 |     0.025 |       0.010 |     0.074 |       0.057 |     0.461 |       0.251 |     1.080 |       0.442 |     4.173 |       1.820 |     6.691 |       3.606 |   6.992 |     6.270 |
| 2021-12-04 | 6         |                  47.157 |     0.017 |       0.007 |     0.005 |       0.009 |     0.037 |       0.019 |     0.136 |       0.084 |     0.615 |       0.359 |     1.962 |       0.689 |     5.986 |       2.615 |    13.089 |       6.051 |   7.609 |     7.868 |
| 2021-12-03 | 3         |                  27.610 |     0.006 |       0.003 |     0.002 |       0.003 |     0.016 |       0.007 |     0.060 |       0.044 |     0.281 |       0.146 |     0.903 |       0.284 |     3.037 |       1.276 |     6.691 |       3.686 |   5.141 |     6.024 |
| 2021-12-02 | 3         |                  27.753 |     0.009 |       0.005 |     0.002 |       0.005 |     0.018 |       0.008 |     0.071 |       0.051 |     0.306 |       0.164 |     0.945 |       0.346 |     3.015 |       1.080 |     6.324 |       3.045 |   6.581 |     5.778 |
| 2021-12-01 | 4         |                  43.457 |     0.014 |       0.008 |     0.004 |       0.006 |     0.028 |       0.012 |     0.106 |       0.082 |     0.505 |       0.273 |     1.521 |       0.581 |     5.331 |       2.133 |     9.191 |       6.131 |   9.049 |     8.482 |
| 2021-11-30 | 3         |                  30.853 |     0.008 |       0.004 |     0.002 |       0.004 |     0.019 |       0.008 |     0.066 |       0.046 |     0.289 |       0.174 |     0.960 |       0.398 |     3.102 |       1.356 |     7.941 |       4.488 |   5.964 |     6.024 |
| 2021-11-29 | 2         |                  16.101 |     0.006 |       0.003 |     0.001 |       0.002 |     0.009 |       0.004 |     0.045 |       0.031 |     0.175 |       0.097 |     0.446 |       0.206 |     1.748 |       0.723 |     3.824 |       1.843 |   3.496 |     3.442 |
| 2021-11-28 | 3         |                  25.029 |     0.010 |       0.005 |     0.003 |       0.004 |     0.021 |       0.008 |     0.060 |       0.045 |     0.293 |       0.174 |     0.825 |       0.332 |     2.862 |       1.490 |     5.662 |       2.725 |   5.347 |     5.163 |
