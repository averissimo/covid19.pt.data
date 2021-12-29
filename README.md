COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Wednesday, December 29, 2021)*

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
| 2021-12-29 |        27 |     12 |         6 |           35 |     -1 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-12-28 |        17 |     19 |         8 |           22 |      2 |            NA |             NA |               426 |               414 |               895 |               977 |              1800 |              1830 |              1402 |              1525 |              1511 |              1769 |              1187 |              1345 |               638 |               666 |               227 |               242 |             107 |             145 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             4 |             2 |             3 |             1 |           3 |           5 |
| 2021-12-27 |      1010 |     29 |         4 |           57 |     -2 |            NA |             NA |               189 |               195 |               325 |               430 |               704 |               753 |               577 |               540 |               565 |               619 |               364 |               398 |               199 |               221 |                70 |                72 |              41 |              52 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             2 |             0 |             3 |             1 |           7 |           2 |
| 2021-12-26 |         0 |      0 |         0 |            0 |      0 |            NA |             NA |               152 |               133 |               204 |               238 |               385 |               463 |               325 |               323 |               304 |               332 |               243 |               223 |               127 |               110 |                48 |                42 |              30 |              51 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             2 |             2 |           6 |           2 |
| 2021-12-25 |      -990 |     10 |         2 |           -7 |      3 |            NA |             NA |               357 |               384 |               632 |               735 |              1085 |              1115 |               842 |               913 |               870 |               872 |               625 |               629 |               296 |               330 |                98 |               123 |              36 |              67 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             1 |           2 |           5 |

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
| 2021-12-29 |      1330 |  18921 |      1175 |          971 |    151 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-12-28 |      1303 |  18909 |      1169 |          936 |    152 |             46253 |             44693 |             70362 |             70087 |            106635 |            107386 |             92158 |            101543 |             95693 |            115474 |             78777 |             96918 |             57168 |             62406 |             35264 |             39416 |           27700 |           54312 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           386 |           163 |          1206 |           534 |          2541 |          1548 |        5642 |        6631 |            NA |             NA |
| 2021-12-27 |      1286 |  18890 |      1161 |          914 |    150 |             45827 |             44279 |             69467 |             69110 |            104835 |            105556 |             90756 |            100018 |             94182 |            113705 |             77590 |             95573 |             56530 |             61740 |             35037 |             39174 |           27593 |           54167 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           386 |           162 |          1202 |           532 |          2538 |          1547 |        5639 |        6626 |            NA |             NA |
| 2021-12-26 |       276 |  18861 |      1157 |          857 |    152 |             45638 |             44084 |             69142 |             68680 |            104131 |            104803 |             90179 |             99478 |             93617 |            113086 |             77226 |             95175 |             56331 |             61519 |             34967 |             39102 |           27552 |           54115 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           385 |           162 |          1200 |           532 |          2535 |          1546 |        5632 |        6624 |            NA |             NA |
| 2021-12-25 |       276 |  18861 |      1157 |          857 |    152 |             45486 |             43951 |             68938 |             68442 |            103746 |            104340 |             89854 |             99155 |             93313 |            112754 |             76983 |             94952 |             56204 |             61409 |             34919 |             39060 |           27522 |           54064 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           385 |           162 |          1200 |           531 |          2533 |          1544 |        5626 |        6622 |            NA |             NA |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-12-28 | 17        |                  96.589 |     0.018 |       0.009 |     0.013 |       0.028 |     0.135 |       0.085 |     0.411 |       0.315 |     1.847 |       1.134 |     5.816 |       2.262 |    13.459 |       5.699 |    16.357 |       9.504 |  21.794 |    17.703 |
| 2021-12-27 | 1 010     |                  32.600 |     0.008 |       0.004 |     0.005 |       0.012 |     0.053 |       0.035 |     0.169 |       0.112 |     0.691 |       0.397 |     1.784 |       0.669 |     4.198 |       1.891 |     5.044 |       2.828 |   8.351 |     6.349 |
| 2021-12-26 | 0         |                  23.449 |     0.007 |       0.003 |     0.003 |       0.007 |     0.029 |       0.022 |     0.095 |       0.067 |     0.372 |       0.213 |     1.191 |       0.375 |     2.679 |       0.941 |     3.459 |       1.649 |   6.110 |     6.227 |
| 2021-12-25 | -990      |                  42.840 |     0.015 |       0.009 |     0.009 |       0.021 |     0.081 |       0.052 |     0.247 |       0.189 |     1.064 |       0.559 |     3.062 |       1.058 |     6.244 |       2.824 |     7.062 |       4.831 |   7.333 |     8.180 |
| 2021-12-24 | 13        |                  58.566 |     0.022 |       0.011 |     0.012 |       0.026 |     0.111 |       0.069 |     0.325 |       0.240 |     1.306 |       0.755 |     3.641 |       1.314 |     8.523 |       3.337 |    10.376 |       5.655 |  12.832 |    10.011 |
| 2021-12-23 | 11        |                  52.811 |     0.018 |       0.010 |     0.009 |       0.020 |     0.090 |       0.054 |     0.279 |       0.180 |     1.076 |       0.616 |     2.847 |       1.041 |     7.510 |       2.790 |     8.791 |       5.616 |   9.777 |    12.087 |
| 2021-12-22 | 9         |                  47.750 |     0.016 |       0.009 |     0.007 |       0.015 |     0.071 |       0.045 |     0.233 |       0.153 |     0.959 |       0.521 |     2.528 |       0.952 |     6.708 |       2.601 |     7.998 |       5.145 |  10.388 |     9.401 |
| 2021-12-21 | 6         |                  31.661 |     0.011 |       0.005 |     0.004 |       0.010 |     0.044 |       0.027 |     0.146 |       0.102 |     0.610 |       0.335 |     1.710 |       0.653 |     4.704 |       1.857 |     4.323 |       3.888 |   5.907 |     7.325 |
| 2021-12-20 | 2         |                  13.583 |     0.007 |       0.004 |     0.002 |       0.005 |     0.020 |       0.012 |     0.060 |       0.051 |     0.273 |       0.157 |     0.970 |       0.289 |     1.667 |       0.770 |     2.594 |       1.571 |   3.055 |     2.076 |
| 2021-12-19 | 5         |                  24.946 |     0.011 |       0.005 |     0.004 |       0.007 |     0.029 |       0.016 |     0.108 |       0.067 |     0.434 |       0.268 |     1.455 |       0.429 |     3.038 |       1.472 |     5.044 |       2.828 |   4.481 |     5.250 |
| 2021-12-18 | 5         |                  33.290 |     0.013 |       0.006 |     0.004 |       0.008 |     0.038 |       0.020 |     0.121 |       0.089 |     0.493 |       0.292 |     1.406 |       0.538 |     4.029 |       1.592 |     5.404 |       3.927 |   7.740 |     7.570 |
| 2021-12-17 | 4         |                  29.130 |     0.012 |       0.006 |     0.003 |       0.007 |     0.035 |       0.018 |     0.105 |       0.079 |     0.477 |       0.264 |     1.338 |       0.523 |     4.683 |       1.831 |     5.332 |       3.220 |   5.703 |     5.494 |
| 2021-12-16 | 6         |                  35.479 |     0.015 |       0.007 |     0.004 |       0.009 |     0.033 |       0.020 |     0.117 |       0.085 |     0.447 |       0.286 |     1.558 |       0.570 |     4.915 |       1.942 |     7.854 |       3.692 |   6.722 |     7.203 |
| 2021-12-15 | 5         |                  39.466 |     0.016 |       0.008 |     0.004 |       0.009 |     0.037 |       0.019 |     0.126 |       0.099 |     0.566 |       0.351 |     1.793 |       0.715 |     5.358 |       2.276 |     6.629 |       4.399 |   9.980 |     7.081 |
| 2021-12-14 | 4         |                  26.631 |     0.010 |       0.005 |     0.003 |       0.005 |     0.022 |       0.012 |     0.090 |       0.054 |     0.390 |       0.213 |     1.024 |       0.419 |     3.987 |       1.566 |     5.909 |       2.946 |   5.092 |     4.884 |
| 2021-12-13 | 2         |                  19.054 |     0.007 |       0.004 |     0.002 |       0.003 |     0.013 |       0.007 |     0.048 |       0.033 |     0.231 |       0.122 |     0.799 |       0.269 |     2.489 |       0.881 |     3.603 |       2.278 |   3.870 |     4.395 |
| 2021-12-12 | 4         |                  29.124 |     0.011 |       0.006 |     0.003 |       0.006 |     0.027 |       0.011 |     0.076 |       0.057 |     0.419 |       0.203 |     1.303 |       0.459 |     3.987 |       1.660 |     6.413 |       3.652 |   5.703 |     5.128 |
| 2021-12-11 | 5         |                  40.431 |     0.014 |       0.008 |     0.005 |       0.008 |     0.031 |       0.016 |     0.122 |       0.084 |     0.531 |       0.340 |     1.485 |       0.619 |     5.190 |       2.422 |     9.007 |       4.791 |   8.555 |     7.203 |
| 2021-12-10 | 4         |                  27.996 |     0.009 |       0.005 |     0.003 |       0.005 |     0.024 |       0.012 |     0.089 |       0.060 |     0.364 |       0.202 |     1.254 |       0.420 |     3.903 |       1.669 |     7.062 |       4.242 |   4.888 |     3.785 |
| 2021-12-09 | 4         |                  29.645 |     0.010 |       0.005 |     0.003 |       0.005 |     0.027 |       0.011 |     0.086 |       0.055 |     0.318 |       0.178 |     0.946 |       0.409 |     3.544 |       1.497 |     6.341 |       3.260 |   7.944 |     5.006 |
