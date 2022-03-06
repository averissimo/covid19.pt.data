COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, March 06, 2022)*

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
| 2022-03-06 |     10066 |     17 |   2832853 |           19 |     -3 |            NA |             NA |               307 |               292 |              1119 |              1438 |               755 |              1019 |               515 |               731 |               634 |               912 |               390 |               581 |               261 |               364 |               185 |               219 |             128 |             215 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             1 |             1 |             0 |             1 |           5 |           8 |        0 |
| 2022-03-05 |     13696 |     20 |   2821650 |          -78 |      1 |            NA |             NA |               393 |               379 |              1489 |              2016 |              1088 |              1473 |               711 |               908 |               738 |              1142 |               520 |               757 |               387 |               473 |               304 |               345 |             179 |             377 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             0 |             4 |             0 |           6 |           8 |  -113584 |
| 2022-03-04 |     13747 |     21 |   2805955 |          -33 |     -6 |            NA |             NA |               471 |               478 |              1540 |              2067 |               955 |              1312 |               687 |               955 |               786 |              1244 |               545 |               772 |               371 |               479 |               273 |               315 |             170 |             328 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             0 |             7 |             2 |           4 |           6 |   -18270 |
| 2022-03-03 |     12234 |     30 |   2799531 |         -100 |      0 |            NA |             NA |               460 |               453 |              1219 |              1449 |               814 |              1026 |               659 |               942 |               802 |              1095 |               469 |               724 |               362 |               503 |               319 |               329 |             221 |             375 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             2 |             5 |           9 |          12 |   -25721 |
| 2022-03-02 |      8833 |     25 |   2787805 |           42 |     -6 |            NA |             NA |               442 |               417 |               812 |               968 |               593 |               783 |               492 |               680 |               568 |               796 |               391 |               545 |               254 |               317 |               173 |               218 |             154 |             225 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             1 |             0 |             8 |             1 |           8 |           6 |     -851 |

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
| 2022-03-06 |   3332200 |  21199 |   2832853 |         1208 |     82 |            176092 |            168179 |            228400 |            228961 |            245089 |            266182 |            238702 |            284736 |            255639 |            320489 |            177143 |            218318 |            113080 |            130235 |             68165 |             77626 |           46118 |           86100 |             2 |             1 |             1 |             2 |            11 |             8 |            34 |            22 |           138 |            85 |           440 |           189 |          1327 |           610 |          2856 |          1735 |        6343 |        7395 |            NA |             NA |        0 |
| 2022-03-05 |   3322134 |  21182 |   2821650 |         1189 |     85 |            175785 |            167887 |            227281 |            227523 |            244334 |            265163 |            238187 |            284005 |            255005 |            319577 |            176753 |            217737 |            112819 |            129871 |             67980 |             77407 |           45990 |           85885 |             2 |             1 |             1 |             2 |            11 |             8 |            34 |            22 |           137 |            85 |           440 |           189 |          1326 |           609 |          2856 |          1734 |        6338 |        7387 |            NA |             NA |        0 |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2022-03-06 | 10 066    |                  55.758 |     0.003 |       0.002 |     0.005 |       0.013 |     0.034 |       0.031 |     0.073 |       0.056 |     0.342 |       0.242 |     0.969 |       0.503 |     3.063 |       1.705 |     7.751 |       4.895 |  17.605 |    18.466 |
| 2022-03-05 | 13 696    |                  87.146 |     0.004 |       0.002 |     0.007 |       0.018 |     0.049 |       0.044 |     0.101 |       0.070 |     0.398 |       0.303 |     1.292 |       0.655 |     4.541 |       2.215 |    12.737 |       7.711 |  24.619 |    32.380 |
| 2022-03-04 | 13 747    |                  79.692 |     0.005 |       0.003 |     0.007 |       0.018 |     0.043 |       0.039 |     0.098 |       0.074 |     0.424 |       0.330 |     1.354 |       0.668 |     4.354 |       2.244 |    11.438 |       7.040 |  23.382 |    28.171 |
| 2022-03-03 | 12 234    |                  92.703 |     0.005 |       0.003 |     0.005 |       0.013 |     0.037 |       0.031 |     0.094 |       0.073 |     0.433 |       0.290 |     1.165 |       0.627 |     4.248 |       2.356 |    13.366 |       7.353 |  30.396 |    32.208 |
| 2022-03-02 | 8 833     |                  59.246 |     0.005 |       0.002 |     0.004 |       0.008 |     0.027 |       0.024 |     0.070 |       0.053 |     0.307 |       0.211 |     0.971 |       0.472 |     2.981 |       1.485 |     7.248 |       4.872 |  21.181 |    19.325 |
| 2022-03-01 | 11 006    |                 111.355 |     0.005 |       0.003 |     0.004 |       0.009 |     0.027 |       0.024 |     0.074 |       0.060 |     0.366 |       0.269 |     1.331 |       0.682 |     4.565 |       2.496 |    14.958 |       8.583 |  37.961 |    39.938 |
| 2022-02-28 | 4 209     |                  35.725 |     0.003 |       0.001 |     0.002 |       0.003 |     0.010 |       0.010 |     0.034 |       0.024 |     0.139 |       0.107 |     0.492 |       0.233 |     1.643 |       0.815 |     5.195 |       2.593 |  12.654 |    11.767 |
| 2022-02-27 | 7 107     |                  49.801 |     0.005 |       0.002 |     0.003 |       0.006 |     0.017 |       0.015 |     0.058 |       0.041 |     0.256 |       0.184 |     0.768 |       0.399 |     2.887 |       1.588 |     7.542 |       4.291 |  14.304 |    17.435 |
| 2022-02-26 | 20 227    |                 157.727 |     0.011 |       0.006 |     0.008 |       0.016 |     0.059 |       0.050 |     0.166 |       0.119 |     0.648 |       0.471 |     2.245 |       1.137 |     8.825 |       4.094 |    21.787 |      13.723 |  48.964 |    55.398 |
| 2022-02-24 | 11 636    |                  86.304 |     0.006 |       0.003 |     0.005 |       0.010 |     0.033 |       0.028 |     0.091 |       0.077 |     0.416 |       0.285 |     1.155 |       0.582 |     4.248 |       2.290 |    11.648 |       7.532 |  27.233 |    30.662 |
| 2022-02-23 | 13 158    |                  96.943 |     0.008 |       0.004 |     0.005 |       0.011 |     0.037 |       0.033 |     0.105 |       0.077 |     0.413 |       0.304 |     1.401 |       0.679 |     4.659 |       2.487 |    13.533 |       8.538 |  30.809 |    33.840 |
| 2022-02-22 | 13 103    |                 113.060 |     0.009 |       0.004 |     0.005 |       0.011 |     0.033 |       0.027 |     0.100 |       0.074 |     0.422 |       0.316 |     1.401 |       0.751 |     5.762 |       2.848 |    15.377 |       9.656 |  34.522 |    41.742 |
| 2022-02-21 | 5 789     |                  34.801 |     0.005 |       0.002 |     0.002 |       0.005 |     0.015 |       0.013 |     0.052 |       0.036 |     0.208 |       0.136 |     0.604 |       0.322 |     2.101 |       1.054 |     4.986 |       2.593 |  12.103 |    10.564 |
| 2022-02-20 | 9 360     |                  67.788 |     0.006 |       0.003 |     0.004 |       0.007 |     0.024 |       0.021 |     0.075 |       0.057 |     0.338 |       0.238 |     0.919 |       0.489 |     3.122 |       1.813 |     9.637 |       6.079 |  22.281 |    22.675 |
| 2022-02-19 | 14 160    |                 105.932 |     0.008 |       0.004 |     0.005 |       0.011 |     0.040 |       0.031 |     0.124 |       0.087 |     0.526 |       0.345 |     1.567 |       0.778 |     5.692 |       2.623 |    14.664 |       9.141 |  34.385 |    35.901 |
| 2022-02-18 | 15 482    |                 114.885 |     0.009 |       0.005 |     0.006 |       0.013 |     0.047 |       0.038 |     0.134 |       0.097 |     0.500 |       0.386 |     1.513 |       0.770 |     6.126 |       2.857 |    14.664 |       9.410 |  36.998 |    41.312 |
| 2022-02-17 | 16 488    |                 120.089 |     0.010 |       0.005 |     0.006 |       0.013 |     0.050 |       0.044 |     0.140 |       0.104 |     0.557 |       0.389 |     1.734 |       0.815 |     6.161 |       2.927 |    15.000 |       9.700 |  37.686 |    44.748 |
| 2022-02-16 | 20 041    |                 141.539 |     0.014 |       0.007 |     0.008 |       0.016 |     0.061 |       0.047 |     0.172 |       0.127 |     0.688 |       0.491 |     1.960 |       0.982 |     6.454 |       3.550 |    17.555 |      12.248 |  42.362 |    54.797 |
| 2022-02-15 | 18 135    |                 129.947 |     0.011 |       0.006 |     0.007 |       0.013 |     0.048 |       0.040 |     0.163 |       0.112 |     0.638 |       0.465 |     1.863 |       0.996 |     7.722 |       3.649 |    20.111 |      11.824 |  38.648 |    43.631 |
| 2022-02-14 | 8 463     |                  48.492 |     0.007 |       0.004 |     0.003 |       0.006 |     0.023 |       0.019 |     0.077 |       0.053 |     0.331 |       0.220 |     0.859 |       0.396 |     2.699 |       1.368 |     6.201 |       4.090 |  15.817 |    16.319 |
