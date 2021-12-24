COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Friday, December 24, 2021)*

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
| 2021-12-24 |        13 |     11 |         6 |          -29 |      1 |            NA |             NA |               498 |               471 |               819 |               909 |              1479 |              1476 |              1110 |              1162 |              1068 |              1178 |               743 |               781 |               404 |               390 |               144 |               144 |              63 |              82 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             0 |             0 |             0 |             2 |             1 |           2 |           4 |
| 2021-12-23 |        11 |     17 |         4 |          -16 |     -7 |            NA |             NA |               427 |               449 |               642 |               697 |              1196 |              1159 |               952 |               872 |               880 |               962 |               581 |               619 |               356 |               326 |               122 |               143 |              48 |              99 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             3 |             0 |             3 |             4 |           2 |           4 |
| 2021-12-22 |         9 |     11 |         4 |            5 |      2 |            NA |             NA |               379 |               383 |               523 |               530 |               942 |               958 |               794 |               739 |               784 |               813 |               516 |               566 |               318 |               304 |               111 |               131 |              51 |              77 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             0 |             1 |             2 |           2 |           4 |
| 2021-12-21 |         6 |     16 |         6 |          -39 |      1 |            NA |             NA |               258 |               244 |               286 |               335 |               584 |               579 |               500 |               491 |               499 |               523 |               349 |               388 |               223 |               217 |                60 |                99 |              29 |              60 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             0 |             2 |             1 |           6 |           5 |
| 2021-12-20 |         2 |     18 |         2 |           12 |      7 |            NA |             NA |               160 |               174 |               140 |               177 |               267 |               252 |               206 |               248 |               223 |               245 |               198 |               172 |                79 |                90 |                36 |                40 |              15 |              17 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             1 |             0 |             4 |             1 |           3 |           8 |

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
| 2021-12-24 |      1266 |  18851 |      1155 |          864 |    149 |             45129 |             43567 |             68306 |             67707 |            102661 |            103225 |             89012 |             98242 |             92443 |            111882 |             76358 |             94323 |             55908 |             61079 |             34821 |             38937 |           27486 |           53997 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           385 |           162 |          1199 |           531 |          2532 |          1543 |        5624 |        6617 |            NA |             NA |
| 2021-12-23 |      1253 |  18840 |      1149 |          893 |    148 |             44631 |             43096 |             67487 |             66798 |            101182 |            101749 |             87902 |             97080 |             91375 |            110704 |             75615 |             93542 |             55504 |             60689 |             34677 |             38793 |           27423 |           53915 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            73 |           384 |           162 |          1199 |           531 |          2530 |          1542 |        5622 |        6613 |            NA |             NA |
| 2021-12-22 |      1242 |  18823 |      1145 |          909 |    155 |             44204 |             42647 |             66845 |             66101 |             99986 |            100590 |             86950 |             96208 |             90495 |            109742 |             75034 |             92923 |             55148 |             60363 |             34555 |             38650 |           27375 |           53816 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            73 |           383 |           162 |          1196 |           531 |          2527 |          1538 |        5620 |        6609 |            NA |             NA |
| 2021-12-21 |      1233 |  18812 |      1141 |          904 |    153 |             43825 |             42264 |             66322 |             65571 |             99044 |             99632 |             86156 |             95469 |             89711 |            108929 |             74518 |             92357 |             54830 |             60059 |             34444 |             38519 |           27324 |           53739 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            73 |           383 |           162 |          1194 |           531 |          2526 |          1536 |        5618 |        6605 |            NA |             NA |
| 2021-12-20 |      1227 |  18796 |      1135 |          943 |    152 |             43567 |             42020 |             66036 |             65236 |             98460 |             99053 |             85656 |             94978 |             89212 |            108406 |             74169 |             91969 |             54607 |             59842 |             34384 |             38420 |           27295 |           53679 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            73 |           383 |           162 |          1192 |           531 |          2524 |          1535 |        5612 |        6600 |            NA |             NA |
| 2021-12-19 |      1225 |  18778 |      1133 |          931 |    145 |             43407 |             41846 |             65896 |             65059 |             98193 |             98801 |             85450 |             94730 |             88989 |            108161 |             73971 |             91797 |             54528 |             59752 |             34348 |             38380 |           27280 |           53662 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           116 |            73 |           383 |           162 |          1191 |           531 |          2520 |          1534 |        5609 |        6592 |            NA |             NA |
| 2021-12-18 |      1220 |  18753 |      1131 |          905 |    147 |             43164 |             41621 |             65639 |             64797 |             97800 |             98458 |             85082 |             94404 |             88634 |            107743 |             73674 |             91542 |             54384 |             59580 |             34278 |             38308 |           27258 |           53619 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           116 |            73 |           382 |           162 |          1186 |           530 |          2517 |          1534 |        5601 |        6585 |            NA |             NA |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-12-24 | 13        |                  59.233 |     0.022 |       0.011 |     0.012 |       0.027 |     0.115 |       0.071 |     0.337 |       0.248 |     1.352 |       0.779 |     3.746 |       1.341 |     8.664 |       3.391 |    10.471 |       5.706 |  12.891 |    10.049 |
| 2021-12-23 | 11        |                  53.385 |     0.019 |       0.010 |     0.009 |       0.021 |     0.093 |       0.056 |     0.289 |       0.186 |     1.114 |       0.636 |     2.929 |       1.063 |     7.635 |       2.834 |     8.871 |       5.667 |   9.821 |    12.132 |
| 2021-12-22 | 9         |                  48.268 |     0.017 |       0.009 |     0.008 |       0.016 |     0.073 |       0.046 |     0.241 |       0.158 |     0.992 |       0.538 |     2.602 |       0.972 |     6.820 |       2.643 |     8.071 |       5.191 |  10.435 |     9.436 |
| 2021-12-21 | 6         |                  32.008 |     0.011 |       0.006 |     0.004 |       0.010 |     0.046 |       0.028 |     0.152 |       0.105 |     0.632 |       0.346 |     1.760 |       0.666 |     4.782 |       1.887 |     4.363 |       3.923 |   5.934 |     7.353 |
| 2021-12-20 | 2         |                  13.734 |     0.007 |       0.004 |     0.002 |       0.005 |     0.021 |       0.012 |     0.062 |       0.053 |     0.282 |       0.162 |     0.998 |       0.295 |     1.694 |       0.782 |     2.618 |       1.585 |   3.069 |     2.083 |
| 2021-12-19 | 5         |                  25.214 |     0.011 |       0.005 |     0.004 |       0.008 |     0.031 |       0.017 |     0.112 |       0.070 |     0.449 |       0.276 |     1.497 |       0.438 |     3.088 |       1.495 |     5.090 |       2.853 |   4.501 |     5.269 |
| 2021-12-18 | 5         |                  33.620 |     0.013 |       0.007 |     0.004 |       0.009 |     0.039 |       0.021 |     0.125 |       0.091 |     0.510 |       0.301 |     1.447 |       0.550 |     4.096 |       1.617 |     5.454 |       3.963 |   7.775 |     7.598 |
| 2021-12-17 | 4         |                  29.445 |     0.012 |       0.006 |     0.004 |       0.007 |     0.036 |       0.018 |     0.109 |       0.081 |     0.494 |       0.273 |     1.376 |       0.534 |     4.761 |       1.860 |     5.381 |       3.250 |   5.729 |     5.514 |
| 2021-12-16 | 6         |                  35.846 |     0.015 |       0.007 |     0.004 |       0.009 |     0.035 |       0.020 |     0.122 |       0.087 |     0.463 |       0.296 |     1.603 |       0.582 |     4.997 |       1.973 |     7.926 |       3.725 |   6.752 |     7.230 |
| 2021-12-15 | 5         |                  39.874 |     0.016 |       0.009 |     0.004 |       0.010 |     0.038 |       0.019 |     0.131 |       0.102 |     0.586 |       0.362 |     1.845 |       0.730 |     5.447 |       2.313 |     6.690 |       4.438 |  10.026 |     7.108 |
| 2021-12-14 | 4         |                  26.908 |     0.010 |       0.005 |     0.003 |       0.005 |     0.023 |       0.012 |     0.093 |       0.055 |     0.404 |       0.220 |     1.054 |       0.428 |     4.053 |       1.591 |     5.963 |       2.972 |   5.115 |     4.902 |
| 2021-12-13 | 2         |                  19.243 |     0.007 |       0.004 |     0.002 |       0.004 |     0.013 |       0.008 |     0.049 |       0.034 |     0.239 |       0.126 |     0.822 |       0.275 |     2.531 |       0.895 |     3.636 |       2.298 |   3.888 |     4.412 |
| 2021-12-12 | 4         |                  29.429 |     0.011 |       0.006 |     0.003 |       0.006 |     0.028 |       0.011 |     0.079 |       0.059 |     0.434 |       0.209 |     1.341 |       0.469 |     4.053 |       1.687 |     6.472 |       3.685 |   5.729 |     5.147 |
| 2021-12-11 | 5         |                  40.841 |     0.014 |       0.008 |     0.005 |       0.008 |     0.033 |       0.017 |     0.126 |       0.086 |     0.549 |       0.351 |     1.528 |       0.632 |     5.276 |       2.460 |     9.089 |       4.835 |   8.594 |     7.230 |
| 2021-12-10 | 4         |                  28.298 |     0.009 |       0.005 |     0.003 |       0.005 |     0.024 |       0.013 |     0.093 |       0.062 |     0.377 |       0.208 |     1.291 |       0.429 |     3.968 |       1.695 |     7.126 |       4.280 |   4.911 |     3.799 |
| 2021-12-09 | 4         |                  29.927 |     0.010 |       0.005 |     0.003 |       0.005 |     0.028 |       0.011 |     0.089 |       0.057 |     0.329 |       0.184 |     0.973 |       0.417 |     3.603 |       1.521 |     6.399 |       3.289 |   7.980 |     5.024 |
| 2021-12-08 | 5         |                  41.503 |     0.014 |       0.007 |     0.004 |       0.008 |     0.040 |       0.014 |     0.119 |       0.084 |     0.552 |       0.306 |     1.563 |       0.629 |     5.619 |       2.521 |    10.980 |       5.389 |   5.934 |     7.720 |
| 2021-12-07 | 3         |                  28.129 |     0.009 |       0.004 |     0.002 |       0.005 |     0.023 |       0.009 |     0.079 |       0.055 |     0.366 |       0.200 |     0.988 |       0.417 |     4.225 |       1.617 |     7.053 |       4.082 |   4.706 |     4.289 |
| 2021-12-06 | 3         |                  16.275 |     0.007 |       0.004 |     0.002 |       0.003 |     0.014 |       0.007 |     0.049 |       0.037 |     0.243 |       0.140 |     0.645 |       0.247 |     2.016 |       0.817 |     3.490 |       2.338 |   3.888 |     2.328 |
| 2021-12-05 | 3         |                  31.612 |     0.012 |       0.006 |     0.003 |       0.006 |     0.024 |       0.010 |     0.070 |       0.055 |     0.444 |       0.244 |     1.049 |       0.428 |     4.096 |       1.774 |     6.617 |       3.567 |   6.957 |     6.250 |
