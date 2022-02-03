COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Thursday, February 03, 2022)*

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

| date       | confirmed | deaths | recovered | hospitalized | in.icu | first vaccine | second vaccine | confirmed m 00-09 | confirmed w 00-09 | confirmed m 10-19 | confirmed w 10-19 | confirmed m 20-29 | confirmed w 20-29 | confirmed m 30-39 | confirmed w 30-39 | confirmed m 40-49 | confirmed w 40-49 | confirmed m 50-59 | confirmed w 50-59 | confirmed m 60-69 | confirmed w 60-69 | confirmed m 70-79 | confirmed w 70-79 | confirmed m 80+ | confirmed w 80+ | death m 00-09 | death w 00-09 | death m 10-19 | death w 10-19 | death m 20-29 | death w 20-29 | death m 30-39 | death w 30-39 | death m 40-49 | death w 40-49 | death m 50-59 | death w 50-59 | death m 60-69 | death w 60-69 | death m 70-79 | death w 70-79 | death m 80+ | death w 80+ | contacts |
|:-----------|----------:|-------:|----------:|-------------:|-------:|--------------:|---------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|----------------:|----------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|------------:|------------:|---------:|
| 2022-02-03 |     50447 |     53 |   2133640 |           -2 |      6 |            NA |             NA |              3296 |              3207 |              4319 |              4236 |              3268 |              3889 |              3838 |              4875 |              4116 |              5210 |              1878 |              2511 |              1181 |              1575 |               837 |               913 |             451 |             809 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             4 |             1 |             7 |             4 |          17 |          19 |     7365 |
| 2022-02-02 |     54693 |     56 |   2112346 |            5 |     -6 |            NA |             NA |              4056 |              3888 |              4709 |              4580 |              3223 |              4006 |              4046 |              5330 |              4340 |              5738 |              2054 |              2643 |              1225 |              1645 |               880 |               920 |             485 |             893 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             0 |             0 |             3 |             1 |             7 |             3 |          23 |          17 |     6390 |
| 2022-02-01 |     50888 |     63 |   2078357 |          -32 |     -5 |            NA |             NA |              3818 |              3586 |              4420 |              4231 |              2773 |              3495 |              3617 |              4989 |              4052 |              5260 |              2018 |              2611 |              1246 |              1629 |               858 |               974 |             473 |             793 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             3 |             1 |             9 |             5 |          16 |          28 |     6130 |
| 2022-01-31 |     27916 |     49 |   2033747 |           72 |      0 |            NA |             NA |              2492 |              2301 |              2414 |              2382 |              1625 |              1897 |              2093 |              2739 |              2358 |              2948 |              1077 |              1216 |               546 |               752 |               292 |               363 |             160 |             242 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             1 |             1 |             1 |             0 |             4 |             3 |          20 |          18 |     8578 |
| 2022-01-30 |   1111910 |    827 |   1994151 |         1146 |     17 |            NA |             NA |             79298 |             75225 |             83802 |             81537 |             74597 |             83451 |             82394 |            102865 |             92083 |            115104 |             56045 |             66573 |             29018 |             34321 |             15525 |             18122 |            7840 |           13142 |             0 |             0 |             0 |             0 |             2 |             3 |             4 |             0 |             4 |             6 |            23 |            12 |            45 |            30 |           115 |            65 |         255 |         263 |       NA |

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

| date       | confirmed | deaths | recovered | hospitalized | in.icu | confirmed m 00-09 | confirmed w 00-09 | confirmed m 10-19 | confirmed w 10-19 | confirmed m 20-29 | confirmed w 20-29 | confirmed m 30-39 | confirmed w 30-39 | confirmed m 40-49 | confirmed w 40-49 | confirmed m 50-59 | confirmed w 50-59 | confirmed m 60-69 | confirmed w 60-69 | confirmed m 70-79 | confirmed w 70-79 | confirmed m 80+ | confirmed w 80+ | death m 00-09 | death w 00-09 | death m 10-19 | death w 10-19 | death m 20-29 | death w 20-29 | death m 30-39 | death w 30-39 | death m 40-49 | death w 40-49 | death m 50-59 | death w 50-59 | death m 60-69 | death w 60-69 | death m 70-79 | death w 70-79 | death m 80+ | death w 80+ | first vaccine | second vaccine | contacts |
|:-----------|----------:|-------:|----------:|-------------:|-------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|----------------:|----------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|------------:|------------:|--------------:|---------------:|---------:|
| 2022-02-03 |   2795830 |  20077 |   2133640 |         2440 |    155 |            144948 |            138466 |            180540 |            178615 |            210641 |            223655 |            204353 |            239648 |            219382 |            269803 |            155401 |            187898 |             97524 |            110304 |             56700 |             64365 |           38524 |           72511 |             2 |             1 |             1 |             2 |            10 |             8 |            32 |            22 |           123 |            82 |           415 |           179 |          1275 |           568 |          2706 |          1646 |        6004 |        7001 |            NA |             NA |   653062 |
| 2022-02-02 |   2745383 |  20024 |   2112346 |         2442 |    149 |            141652 |            135259 |            176221 |            174379 |            207373 |            219766 |            200515 |            234773 |            215266 |            264593 |            153523 |            185387 |             96343 |            108729 |             55863 |             63452 |           38073 |           71702 |             2 |             1 |             1 |             2 |            10 |             8 |            32 |            22 |           122 |            82 |           415 |           179 |          1271 |           567 |          2699 |          1642 |        5987 |        6982 |            NA |             NA |   645697 |
| 2022-02-01 |   2690690 |  19968 |   2078357 |         2437 |    155 |            137596 |            131371 |            171512 |            169799 |            204150 |            215760 |            196469 |            229443 |            210926 |            258855 |            151469 |            182744 |             95118 |            107084 |             54983 |             62532 |           37588 |           70809 |             2 |             1 |             1 |             2 |            10 |             8 |            32 |            22 |           121 |            81 |           415 |           179 |          1268 |           566 |          2692 |          1639 |        5964 |        6965 |            NA |             NA |   639307 |
| 2022-01-31 |   2639802 |  19905 |   2033747 |         2469 |    160 |            133778 |            127785 |            167092 |            165568 |            201377 |            212265 |            192852 |            224454 |            206874 |            253595 |            149451 |            180133 |             93872 |            105455 |             54125 |             61558 |           37115 |           70016 |             2 |             1 |             1 |             2 |            10 |             8 |            32 |            22 |           121 |            81 |           415 |           178 |          1265 |           565 |          2683 |          1634 |        5948 |        6937 |            NA |             NA |   633177 |
| 2022-01-30 |   2611886 |  19856 |   1994151 |         2397 |    160 |            131286 |            125484 |            164678 |            163186 |            199752 |            210368 |            190759 |            221715 |            204516 |            250647 |            148374 |            178917 |             93326 |            104703 |             53833 |             61195 |           36955 |           69774 |             2 |             1 |             1 |             2 |            10 |             8 |            32 |            21 |           121 |            81 |           414 |           177 |          1264 |           565 |          2679 |          1631 |        5928 |        6919 |            NA |             NA |   624599 |
| 2022-01-05 |   1499976 |  19029 |   1227000 |         1251 |    143 |             51988 |             50259 |             80876 |             81649 |            125155 |            126917 |            108365 |            118850 |            112433 |            135543 |             92329 |            112344 |             64308 |             70382 |             38308 |             43073 |           29115 |           56632 |             2 |             1 |             1 |             2 |             8 |             5 |            28 |            21 |           117 |            75 |           391 |           165 |          1219 |           535 |          2564 |          1566 |        5673 |        6656 |            NA |             NA |       NA |
| 2022-01-04 |   1460406 |  19015 |   1227000 |         1203 |    147 |             50800 |             49178 |             78833 |             79383 |            121498 |            122986 |            105064 |            115353 |            108960 |            131579 |             89512 |            109219 |             62880 |             68761 |             37677 |             42346 |           28822 |           56175 |             2 |             1 |             1 |             2 |             8 |             5 |            28 |            21 |           117 |            75 |           390 |           165 |          1215 |           535 |          2561 |          1565 |        5670 |        6654 |            NA |             NA |       NA |
| 2022-01-03 |   1434570 |  19000 |   1207000 |         1167 |    147 |             50170 |             48583 |             77617 |             77973 |            119014 |            120458 |            102924 |            113126 |            106666 |            128895 |             87576 |            107175 |             61856 |             67665 |             37251 |             41873 |           28610 |           55859 |             2 |             1 |             1 |             2 |             8 |             5 |            28 |            21 |           117 |            75 |           389 |           164 |          1214 |           535 |          2557 |          1562 |        5667 |        6652 |            NA |             NA |       NA |
| 2022-01-02 |   1424016 |  18990 |   1201000 |         1081 |    148 |             49831 |             48248 |             77095 |             77422 |            118101 |            119417 |            102000 |            112174 |            105738 |            127811 |             86817 |            106323 |             61475 |             67256 |             37107 |             41702 |           28532 |           55729 |             2 |             1 |             1 |             2 |             8 |             5 |            28 |            21 |           117 |            75 |           389 |           164 |          1213 |           535 |          2556 |          1560 |        5663 |        6650 |            NA |             NA |       NA |
| 2022-01-01 |   1412936 |  18976 |   1197000 |         1023 |    142 |             49464 |             47860 |             76501 |             76779 |            117155 |            118336 |            101109 |            111159 |            104821 |            126655 |             86042 |            105454 |             61070 |             66817 |             36953 |             41480 |           28460 |           55589 |             2 |             1 |             1 |             2 |             8 |             5 |            28 |            21 |           117 |            75 |           389 |           163 |          1213 |           535 |          2552 |          1559 |        5659 |        6646 |            NA |             NA |       NA |
| 2021-12-31 |   1389646 |  18955 |   1191000 |         1024 |    145 |             48735 |             47202 |             75187 |             75381 |            115010 |            116121 |             99190 |            109112 |            102877 |            124323 |             84444 |            103597 |             60235 |             65887 |             36585 |             41018 |           28287 |           55276 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            75 |           388 |           163 |          1209 |           534 |          2547 |          1557 |        5657 |        6641 |            NA |             NA |       NA |
| 2021-12-30 |   1358817 |  18937 |   1181000 |         1034 |    144 |             47830 |             46310 |             73467 |             73495 |            112090 |            113036 |             96661 |            106369 |            100289 |            121220 |             82462 |            101239 |             59173 |             64625 |             36082 |             40391 |           28063 |           54894 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           388 |           163 |          1208 |           534 |          2545 |          1553 |        5650 |        6638 |            NA |             NA |       NA |
| 2021-12-29 |   1330158 |  18921 |   1175000 |          971 |    151 |             47019 |             45541 |             71874 |             71736 |            109246 |            110145 |             94312 |            103959 |             97954 |            118272 |             80531 |             98948 |             58125 |             63443 |             35654 |             39868 |           27879 |           54572 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           386 |           163 |          1208 |           534 |          2542 |          1551 |        5644 |        6635 |            NA |             NA |       NA |
| 2021-12-28 |   1303291 |  18909 |   1169000 |          936 |    152 |             46253 |             44693 |             70362 |             70087 |            106635 |            107386 |             92158 |            101543 |             95693 |            115474 |             78777 |             96918 |             57168 |             62406 |             35264 |             39416 |           27700 |           54312 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           386 |           163 |          1206 |           534 |          2541 |          1548 |        5642 |        6631 |            NA |             NA |       NA |
| 2021-12-27 |   1286119 |  18890 |   1161000 |          914 |    150 |             45827 |             44279 |             69467 |             69110 |            104835 |            105556 |             90756 |            100018 |             94182 |            113705 |             77590 |             95573 |             56530 |             61740 |             35037 |             39174 |           27593 |           54167 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           386 |           162 |          1202 |           532 |          2538 |          1547 |        5639 |        6626 |            NA |             NA |       NA |
| 2021-12-26 |   1279785 |  18861 |   1157000 |          857 |    152 |             45638 |             44084 |             69142 |             68680 |            104131 |            104803 |             90179 |             99478 |             93617 |            113086 |             77226 |             95175 |             56331 |             61519 |             34967 |             39102 |           27552 |           54115 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           385 |           162 |          1200 |           532 |          2535 |          1546 |        5632 |        6624 |            NA |             NA |       NA |
| 2021-12-25 |   1276053 |  18861 |   1157000 |          857 |    152 |             45486 |             43951 |             68938 |             68442 |            103746 |            104340 |             89854 |             99155 |             93313 |            112754 |             76983 |             94952 |             56204 |             61409 |             34919 |             39060 |           27522 |           54064 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           385 |           162 |          1200 |           531 |          2533 |          1544 |        5626 |        6622 |            NA |             NA |       NA |
| 2021-12-24 |   1266037 |  18851 |   1155000 |          864 |    149 |             45129 |             43567 |             68306 |             67707 |            102661 |            103225 |             89012 |             98242 |             92443 |            111882 |             76358 |             94323 |             55908 |             61079 |             34821 |             38937 |           27486 |           53997 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            74 |           385 |           162 |          1199 |           531 |          2532 |          1543 |        5624 |        6617 |            NA |             NA |       NA |
| 2021-12-23 |   1253094 |  18840 |   1149000 |          893 |    148 |             44631 |             43096 |             67487 |             66798 |            101182 |            101749 |             87902 |             97080 |             91375 |            110704 |             75615 |             93542 |             55504 |             60689 |             34677 |             38793 |           27423 |           53915 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            73 |           384 |           162 |          1199 |           531 |          2530 |          1542 |        5622 |        6613 |            NA |             NA |       NA |
| 2021-12-22 |   1242545 |  18823 |   1145000 |          909 |    155 |             44204 |             42647 |             66845 |             66101 |             99986 |            100590 |             86950 |             96208 |             90495 |            109742 |             75034 |             92923 |             55148 |             60363 |             34555 |             38650 |           27375 |           53816 |             2 |             1 |             1 |             2 |             8 |             5 |            27 |            21 |           117 |            73 |           383 |           162 |          1196 |           531 |          2527 |          1538 |        5620 |        6609 |            NA |             NA |       NA |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women |  80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|---------:|----------:|
| 2022-02-03 | 50 447    |                 248.023 |     0.045 |       0.023 |     0.024 |       0.047 |     0.155 |       0.139 |     0.601 |       0.448 |     2.308 |       1.583 |     5.015 |       2.392 |    15.440 |       8.110 |    39.946 |      23.348 |   70.289 |    78.110 |
| 2022-02-02 | 54 693    |                 265.579 |     0.056 |       0.028 |     0.026 |       0.051 |     0.153 |       0.143 |     0.634 |       0.489 |     2.433 |       1.744 |     5.485 |       2.518 |    16.015 |       8.471 |    41.998 |      23.527 |   75.588 |    86.220 |
| 2022-02-01 | 50 888    |                 253.994 |     0.053 |       0.026 |     0.024 |       0.047 |     0.132 |       0.125 |     0.566 |       0.458 |     2.272 |       1.599 |     5.389 |       2.487 |    16.290 |       8.388 |    40.948 |      24.908 |   73.717 |    76.565 |
| 2022-01-31 | 27 916    |                  89.597 |     0.034 |       0.017 |     0.013 |       0.027 |     0.077 |       0.068 |     0.328 |       0.251 |     1.322 |       0.896 |     2.876 |       1.158 |     7.138 |       3.872 |    13.936 |       9.283 |   24.936 |    23.365 |
| 2022-01-30 | 1 111 910 |                4582.795 |     1.094 |       0.543 |     0.464 |       0.913 |     3.541 |       2.985 |    12.902 |       9.443 |    51.628 |      34.983 |   149.669 |      63.420 |   379.373 |     176.733 |   740.929 |     463.432 | 1221.871 |  1268.872 |
| 2022-01-05 | 39 570    |                 180.375 |     0.016 |       0.008 |     0.011 |       0.025 |     0.174 |       0.141 |     0.517 |       0.321 |     1.947 |       1.205 |     7.523 |       2.977 |    18.669 |       8.347 |    30.114 |      18.592 |   45.664 |    44.124 |
| 2022-01-04 | 25 836    |                 125.010 |     0.009 |       0.004 |     0.007 |       0.016 |     0.118 |       0.090 |     0.335 |       0.204 |     1.286 |       0.816 |     5.170 |       1.947 |    13.387 |       5.644 |    20.331 |      12.096 |   33.040 |    30.510 |
| 2022-01-03 | 10 554    |                  47.056 |     0.005 |       0.002 |     0.003 |       0.006 |     0.043 |       0.037 |     0.145 |       0.087 |     0.520 |       0.329 |     2.027 |       0.812 |     4.981 |       2.106 |     6.872 |       4.373 |   12.156 |    12.552 |
| 2022-01-02 | 11 080    |                  49.419 |     0.005 |       0.003 |     0.003 |       0.007 |     0.045 |       0.039 |     0.140 |       0.093 |     0.514 |       0.351 |     2.070 |       0.828 |     5.295 |       2.261 |     7.350 |       5.677 |   11.221 |    13.517 |
| 2022-01-01 | 23 290    |                 110.808 |     0.010 |       0.005 |     0.007 |       0.016 |     0.102 |       0.079 |     0.300 |       0.188 |     1.090 |       0.709 |     4.267 |       1.769 |    10.917 |       4.789 |    17.563 |      11.815 |   26.962 |    30.220 |
| 2021-12-31 | 30 829    |                 143.095 |     0.012 |       0.006 |     0.010 |       0.021 |     0.139 |       0.110 |     0.396 |       0.252 |     1.451 |       0.943 |     5.293 |       2.246 |    13.884 |       6.499 |    24.006 |      16.034 |   34.911 |    36.882 |
| 2021-12-30 | 28 659    |                 123.773 |     0.011 |       0.006 |     0.009 |       0.020 |     0.135 |       0.103 |     0.368 |       0.221 |     1.309 |       0.896 |     5.157 |       2.183 |    13.701 |       6.087 |    20.426 |      13.375 |   28.677 |    31.089 |
| 2021-12-29 | 26 867    |                 110.585 |     0.011 |       0.006 |     0.008 |       0.018 |     0.124 |       0.099 |     0.337 |       0.222 |     1.268 |       0.850 |     4.684 |       1.934 |    12.512 |       5.340 |    18.613 |      11.559 |   27.897 |    25.103 |
| 2021-12-28 | 17 172    |                  65.841 |     0.006 |       0.003 |     0.005 |       0.011 |     0.085 |       0.065 |     0.220 |       0.140 |     0.847 |       0.538 |     3.170 |       1.281 |     8.341 |       3.430 |    10.834 |       6.189 |   16.676 |    14.000 |
| 2021-12-27 | 6 334     |                  22.400 |     0.003 |       0.001 |     0.002 |       0.005 |     0.033 |       0.027 |     0.090 |       0.050 |     0.317 |       0.188 |     0.972 |       0.379 |     2.602 |       1.138 |     3.341 |       1.841 |    6.390 |     5.021 |
| 2021-12-26 | 3 732     |                  16.446 |     0.002 |       0.001 |     0.001 |       0.003 |     0.018 |       0.017 |     0.051 |       0.030 |     0.170 |       0.101 |     0.649 |       0.212 |     1.660 |       0.566 |     2.291 |       1.074 |    4.676 |     4.924 |
| 2021-12-25 | 10 016    |                  28.820 |     0.005 |       0.003 |     0.004 |       0.008 |     0.052 |       0.040 |     0.132 |       0.084 |     0.488 |       0.265 |     1.669 |       0.599 |     3.870 |       1.699 |     4.677 |       3.145 |    5.611 |     6.469 |
| 2021-12-24 | 12 943    |                  39.694 |     0.007 |       0.003 |     0.005 |       0.010 |     0.070 |       0.053 |     0.174 |       0.107 |     0.599 |       0.358 |     1.984 |       0.744 |     5.282 |       2.008 |     6.872 |       3.682 |    9.819 |     7.917 |
| 2021-12-23 | 10 549    |                  36.127 |     0.006 |       0.003 |     0.004 |       0.008 |     0.057 |       0.041 |     0.149 |       0.080 |     0.493 |       0.292 |     1.552 |       0.590 |     4.654 |       1.679 |     5.822 |       3.657 |    7.481 |     9.559 |
| 2021-12-22 | 8 937     |                  32.643 |     0.005 |       0.003 |     0.003 |       0.006 |     0.045 |       0.034 |     0.124 |       0.068 |     0.440 |       0.247 |     1.378 |       0.539 |     4.157 |       1.565 |     5.297 |       3.350 |    7.948 |     7.434 |
