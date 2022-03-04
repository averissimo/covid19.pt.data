COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Friday, March 04, 2022)*

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
| 2022-03-04 |     13747 |     21 |   2805955 |          -33 |     -6 |            NA |             NA |               471 |               478 |              1540 |              2067 |               955 |              1312 |               687 |               955 |               786 |              1244 |               545 |               772 |               371 |               479 |               273 |               315 |             170 |             328 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             0 |             7 |             2 |           4 |           6 |   -18270 |
| 2022-03-03 |     12234 |     30 |   2799531 |         -100 |      0 |            NA |             NA |               460 |               453 |              1219 |              1449 |               814 |              1026 |               659 |               942 |               802 |              1095 |               469 |               724 |               362 |               503 |               319 |               329 |             221 |             375 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             2 |             5 |           9 |          12 |   -25721 |
| 2022-03-02 |      8833 |     25 |   2787805 |           42 |     -6 |            NA |             NA |               442 |               417 |               812 |               968 |               593 |               783 |               492 |               680 |               568 |               796 |               391 |               545 |               254 |               317 |               173 |               218 |             154 |             225 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             0 |             8 |             1 |           8 |           6 |     -851 |
| 2022-03-01 |     11006 |     23 |   2787126 |         -120 |     -6 |            NA |             NA |               464 |               463 |               934 |              1014 |               612 |               796 |               520 |               774 |               678 |              1014 |               536 |               788 |               389 |               533 |               357 |               384 |             276 |             465 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |             1 |             2 |             3 |             0 |           6 |          10 |     -665 |
| 2022-02-28 |      4209 |     24 |   2785374 |           82 |      0 |            NA |             NA |               241 |               224 |               360 |               348 |               232 |               338 |               242 |               307 |               258 |               405 |               198 |               269 |               140 |               174 |               124 |               116 |              92 |             137 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             5 |             2 |           7 |           9 |     -408 |

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
| 2022-03-04 |   3308438 |  21162 |   2805955 |         1267 |     84 |            175392 |            167508 |            225792 |            225507 |            243246 |            263690 |            237476 |            283097 |            254267 |            318435 |            176233 |            216980 |            112432 |            129398 |             67676 |             77062 |           45811 |           85508 |             2 |             1 |             1 |             2 |            11 |             8 |            34 |            22 |           137 |            85 |           439 |           189 |          1325 |           609 |          2852 |          1734 |        6332 |        7379 |            NA |             NA |   113584 |
| 2022-03-03 |   3294691 |  21141 |   2799531 |         1300 |     90 |            174921 |            167030 |            224252 |            223440 |            242291 |            262378 |            236789 |            282142 |            253481 |            317191 |            175688 |            216208 |            112061 |            128919 |             67403 |             76747 |           45641 |           85180 |             2 |             1 |             1 |             2 |            11 |             8 |            34 |            22 |           137 |            85 |           439 |           189 |          1323 |           609 |          2845 |          1732 |        6328 |        7373 |            NA |             NA |   131854 |
| 2022-03-02 |   3282457 |  21111 |   2787805 |         1400 |     90 |            174461 |            166577 |            223033 |            221991 |            241477 |            261352 |            236130 |            281200 |            252679 |            316096 |            175219 |            215484 |            111699 |            128416 |             67084 |             76418 |           45420 |           84805 |             2 |             1 |             1 |             2 |            11 |             8 |            34 |            22 |           137 |            85 |           439 |           188 |          1323 |           608 |          2843 |          1727 |        6319 |        7361 |            NA |             NA |   157575 |
| 2022-03-01 |   3273624 |  21086 |   2787126 |         1358 |     96 |            174019 |            166160 |            222221 |            221023 |            240884 |            260569 |            235638 |            280520 |            252111 |            315300 |            174828 |            214939 |            111445 |            128099 |             66911 |             76200 |           45266 |           84580 |             2 |             1 |             1 |             2 |            11 |             8 |            34 |            22 |           137 |            85 |           438 |           188 |          1322 |           608 |          2835 |          1726 |        6311 |        7355 |            NA |             NA |   158426 |
| 2022-02-28 |   3262618 |  21063 |   2785374 |         1478 |    102 |            173555 |            165697 |            221287 |            220009 |            240272 |            259773 |            235118 |            279746 |            251433 |            314286 |            174292 |            214151 |            111056 |            127566 |             66554 |             75816 |           44990 |           84115 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           137 |            85 |           438 |           188 |          1321 |           606 |          2832 |          1726 |        6305 |        7345 |            NA |             NA |   159091 |
| 2022-02-27 |   3258409 |  21039 |   2784612 |         1396 |    102 |            173314 |            165473 |            220927 |            219661 |            240040 |            259435 |            234876 |            279439 |            251175 |            313881 |            174094 |            213882 |            110916 |            127392 |             66430 |             75700 |           44898 |           83978 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           137 |            85 |           438 |           187 |          1321 |           606 |          2827 |          1724 |        6298 |        7336 |            NA |             NA |   159499 |
| 2022-02-26 |   3251302 |  21001 |   2784000 |         1378 |    101 |            172910 |            165091 |            220305 |            219014 |            239654 |            258926 |            234469 |            278902 |            250701 |            313186 |            173785 |            213421 |            110670 |            127053 |             66250 |             75508 |           44794 |           83775 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           137 |            85 |           437 |           187 |          1320 |           605 |          2821 |          1719 |        6286 |        7324 |            NA |             NA |   426472 |
| 2022-02-24 |   3231075 |  20941 |   2741600 |         1560 |    106 |            171921 |            164141 |            218489 |            217207 |            238335 |            257259 |            233307 |            277356 |            249501 |            311409 |            172881 |            212108 |            109918 |            126179 |             65730 |             74894 |           44438 |           83130 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           137 |            85 |           437 |           187 |          1320 |           603 |          2809 |          1717 |        6261 |        7305 |            NA |             NA |   448694 |
| 2022-02-23 |   3219439 |  20922 |   2732009 |         1646 |    101 |            171366 |            163603 |            217439 |            216043 |            237599 |            256316 |            232667 |            276356 |            248731 |            310335 |            172416 |            211436 |            109556 |            125690 |             65452 |             74557 |           44240 |           82773 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           137 |            85 |           435 |           187 |          1320 |           601 |          2808 |          1716 |        6255 |        7298 |            NA |             NA |   459334 |
| 2022-02-22 |   3206281 |  20894 |   2717509 |         1763 |    111 |            170648 |            162895 |            216209 |            214732 |            236769 |            255215 |            231932 |            275353 |            247966 |            309190 |            171852 |            210652 |            109159 |            125159 |             65129 |             74175 |           44016 |           82379 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           137 |            85 |           434 |           187 |          1319 |           599 |          2805 |          1716 |        6249 |        7283 |            NA |             NA |   474904 |
| 2022-02-21 |   3193178 |  20866 |   2696696 |         1832 |    114 |            169890 |            162242 |            215037 |            213525 |            236044 |            254327 |            231231 |            274400 |            247185 |            307998 |            171288 |            209785 |            108668 |            124551 |             64762 |             73743 |           43765 |           81893 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           136 |            85 |           433 |           187 |          1319 |           598 |          2800 |          1715 |        6243 |        7270 |            NA |             NA |   489997 |
| 2022-02-20 |   3187389 |  20831 |   2676699 |         1788 |    116 |            169466 |            161897 |            214488 |            213004 |            235715 |            253900 |            230863 |            273940 |            246800 |            307484 |            171045 |            209413 |            108489 |            124326 |             64643 |             73627 |           43677 |           81770 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           134 |            85 |           432 |           186 |          1318 |           595 |          2797 |          1713 |        6234 |        7257 |            NA |             NA |   505037 |
| 2022-02-19 |   3178029 |  20796 |   2653048 |         1799 |    118 |            168899 |            161338 |            213660 |            212162 |            235175 |            253197 |            230335 |            273202 |            246174 |            306586 |            170675 |            208848 |            108223 |            123939 |             64413 |             73355 |           43515 |           81506 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           134 |            85 |           432 |           186 |          1315 |           593 |          2790 |          1710 |        6225 |        7246 |            NA |             NA |   521186 |
| 2022-02-18 |   3163869 |  20759 |   2626220 |         1936 |    127 |            168173 |            160622 |            212476 |            210848 |            234289 |            252152 |            229465 |            272075 |            245199 |            305285 |            170044 |            207949 |            107738 |            123379 |             64063 |             72946 |           43265 |           81088 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           134 |            85 |           431 |           185 |          1314 |           592 |          2785 |          1704 |        6212 |        7237 |            NA |             NA |   534151 |
| 2022-02-17 |   3148387 |  20708 |   2589510 |         2022 |    132 |            167337 |            159831 |            211125 |            209413 |            233248 |            250871 |            228521 |            270814 |            244273 |            303828 |            169435 |            207059 |            107216 |            122769 |             63713 |             72525 |           42996 |           80607 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           133 |            85 |           430 |           185 |          1310 |           592 |          2775 |          1700 |        6197 |        7221 |            NA |             NA |   545242 |
| 2022-02-16 |   3131899 |  20666 |   2574750 |         2141 |    142 |            166450 |            158957 |            209715 |            207911 |            232137 |            249393 |            227535 |            269462 |            243241 |            302363 |            168737 |            206117 |            106691 |            122144 |             63355 |             72091 |           42722 |           80086 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           132 |            85 |           427 |           185 |          1308 |           591 |          2770 |          1697 |        6182 |        7209 |            NA |             NA |   561116 |
| 2022-02-15 |   3111858 |  20620 |   2554403 |         2270 |    147 |            165229 |            157821 |            207931 |            206105 |            230767 |            247817 |            226325 |            267819 |            241967 |            300511 |            167948 |            204983 |            106141 |            121386 |             62936 |             71543 |           42414 |           79448 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           130 |            85 |           426 |           184 |          1307 |           590 |          2769 |          1691 |        6167 |        7191 |            NA |             NA |   574788 |
| 2022-02-14 |   3093723 |  20565 |   2524291 |         2364 |    148 |            164219 |            156762 |            206431 |            204606 |            229702 |            246492 |            225183 |            266372 |            240786 |            298757 |            167198 |            203833 |            105483 |            120607 |             62456 |             71014 |           42133 |           78940 |             2 |             1 |             1 |             2 |            11 |             8 |            33 |            22 |           130 |            85 |           425 |           184 |          1302 |           586 |          2764 |          1686 |        6151 |        7172 |            NA |             NA |   589289 |
| 2022-02-13 |   3085260 |  20530 |   2495002 |         2298 |    155 |            163563 |            156144 |            205698 |            203923 |            229196 |            245868 |            224640 |            265681 |            240172 |            297929 |            166852 |            203376 |            105253 |            120315 |             62308 |             70831 |           42018 |           78750 |             2 |             1 |             1 |             2 |            10 |             8 |            32 |            22 |           130 |            85 |           423 |           183 |          1302 |           584 |          2761 |          1683 |        6136 |        7165 |            NA |             NA |   602483 |
| 2022-02-11 |   3049692 |  20442 |   2428926 |         2332 |    159 |            161421 |            153993 |            202680 |            200711 |            226931 |            243091 |            222388 |            262663 |            237846 |            294593 |            165382 |            201366 |            104223 |            118982 |             61509 |             69909 |           41479 |           77799 |             2 |             1 |             1 |             2 |            10 |             8 |            32 |            22 |           129 |            84 |           423 |           183 |          1296 |           580 |          2750 |          1677 |        6112 |        7130 |            NA |             NA |   628109 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2022-03-04 | 13 747    |                  80.094 |     0.005 |       0.003 |     0.007 |       0.018 |     0.043 |       0.040 |     0.098 |       0.074 |     0.423 |       0.332 |     1.358 |       0.672 |     4.372 |       2.254 |    11.505 |       7.088 |  23.497 |    28.305 |
| 2022-03-03 | 12 234    |                  93.171 |     0.005 |       0.003 |     0.005 |       0.013 |     0.037 |       0.031 |     0.094 |       0.073 |     0.432 |       0.292 |     1.168 |       0.631 |     4.266 |       2.367 |    13.443 |       7.403 |  30.547 |    32.361 |
| 2022-03-02 | 8 833     |                  59.545 |     0.005 |       0.002 |     0.004 |       0.009 |     0.027 |       0.024 |     0.070 |       0.053 |     0.306 |       0.212 |     0.974 |       0.475 |     2.993 |       1.492 |     7.291 |       4.905 |  21.286 |    19.417 |
| 2022-03-01 | 11 006    |                 111.920 |     0.005 |       0.003 |     0.004 |       0.009 |     0.028 |       0.024 |     0.074 |       0.060 |     0.365 |       0.271 |     1.335 |       0.686 |     4.584 |       2.509 |    15.045 |       8.641 |  38.149 |    40.128 |
| 2022-02-28 | 4 209     |                  35.906 |     0.003 |       0.001 |     0.002 |       0.003 |     0.010 |       0.010 |     0.035 |       0.024 |     0.139 |       0.108 |     0.493 |       0.234 |     1.650 |       0.819 |     5.226 |       2.610 |  12.716 |    11.823 |
| 2022-02-27 | 7 107     |                  50.054 |     0.005 |       0.002 |     0.003 |       0.006 |     0.017 |       0.015 |     0.058 |       0.042 |     0.255 |       0.186 |     0.770 |       0.402 |     2.899 |       1.595 |     7.586 |       4.320 |  14.375 |    17.518 |
| 2022-02-26 | 20 227    |                 158.527 |     0.011 |       0.006 |     0.008 |       0.016 |     0.060 |       0.051 |     0.166 |       0.120 |     0.647 |       0.474 |     2.252 |       1.144 |     8.862 |       4.113 |    21.914 |      13.816 |  49.206 |    55.661 |
| 2022-02-24 | 11 636    |                  86.742 |     0.006 |       0.003 |     0.005 |       0.010 |     0.033 |       0.029 |     0.092 |       0.078 |     0.415 |       0.287 |     1.158 |       0.585 |     4.266 |       2.301 |    11.715 |       7.583 |  27.368 |    30.808 |
| 2022-02-23 | 13 158    |                  97.437 |     0.008 |       0.004 |     0.005 |       0.012 |     0.038 |       0.033 |     0.105 |       0.078 |     0.412 |       0.306 |     1.405 |       0.683 |     4.679 |       2.499 |    13.612 |       8.596 |  30.961 |    34.001 |
| 2022-02-22 | 13 103    |                 113.629 |     0.009 |       0.004 |     0.005 |       0.011 |     0.033 |       0.027 |     0.100 |       0.074 |     0.421 |       0.318 |     1.405 |       0.755 |     5.786 |       2.861 |    15.466 |       9.721 |  34.693 |    41.940 |
| 2022-02-21 | 5 789     |                  34.974 |     0.005 |       0.002 |     0.002 |       0.005 |     0.015 |       0.013 |     0.053 |       0.036 |     0.207 |       0.137 |     0.605 |       0.324 |     2.109 |       1.059 |     5.015 |       2.610 |  12.163 |    10.614 |
| 2022-02-20 | 9 360     |                  68.132 |     0.006 |       0.003 |     0.004 |       0.007 |     0.024 |       0.021 |     0.076 |       0.057 |     0.337 |       0.240 |     0.922 |       0.492 |     3.135 |       1.821 |     9.693 |       6.120 |  22.392 |    22.782 |
| 2022-02-19 | 14 160    |                 106.473 |     0.008 |       0.004 |     0.005 |       0.012 |     0.040 |       0.032 |     0.125 |       0.088 |     0.525 |       0.347 |     1.572 |       0.783 |     5.716 |       2.636 |    14.750 |       9.203 |  34.555 |    36.072 |
| 2022-02-18 | 15 482    |                 115.468 |     0.010 |       0.005 |     0.006 |       0.013 |     0.047 |       0.039 |     0.135 |       0.098 |     0.499 |       0.389 |     1.517 |       0.775 |     6.152 |       2.871 |    14.750 |       9.473 |  37.181 |    41.508 |
| 2022-02-17 | 16 488    |                 120.696 |     0.010 |       0.005 |     0.006 |       0.013 |     0.050 |       0.045 |     0.141 |       0.105 |     0.556 |       0.391 |     1.739 |       0.821 |     6.187 |       2.942 |    15.087 |       9.766 |  37.872 |    44.960 |
| 2022-02-16 | 20 041    |                 142.255 |     0.014 |       0.007 |     0.008 |       0.016 |     0.062 |       0.048 |     0.173 |       0.128 |     0.686 |       0.494 |     1.965 |       0.988 |     6.482 |       3.567 |    17.657 |      12.331 |  42.572 |    55.057 |
| 2022-02-15 | 18 135    |                 130.605 |     0.012 |       0.006 |     0.007 |       0.013 |     0.048 |       0.040 |     0.164 |       0.112 |     0.636 |       0.468 |     1.868 |       1.002 |     7.754 |       3.666 |    20.228 |      11.903 |  38.840 |    43.838 |
| 2022-02-14 | 8 463     |                  48.737 |     0.007 |       0.004 |     0.003 |       0.006 |     0.023 |       0.019 |     0.078 |       0.054 |     0.331 |       0.221 |     0.862 |       0.398 |     2.711 |       1.374 |     6.237 |       4.118 |  15.895 |    16.396 |
| 2022-02-13 | 35 568    |                 237.775 |     0.024 |       0.013 |     0.013 |       0.028 |     0.102 |       0.084 |     0.322 |       0.235 |     1.253 |       0.890 |     3.662 |       1.751 |    12.138 |       6.274 |    33.671 |      20.746 |  74.501 |    82.068 |
| 2022-02-11 | 24 271    |                 160.305 |     0.016 |       0.008 |     0.009 |       0.019 |     0.073 |       0.058 |     0.249 |       0.167 |     0.854 |       0.614 |     2.409 |       1.140 |     8.143 |       4.255 |    22.841 |      13.636 |  46.442 |    59.372 |
