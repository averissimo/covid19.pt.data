COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Saturday, February 06, 2021)*

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
| Portugal | 2021-02-06 |      6132 |    214 |     14317 |        \-254 |   \-13 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2021-02-05 |      6916 |    258 |     11342 |         \-84 |     41 |                 233 |                 171 |                 315 |                 338 |                 392 |                 453 |                 393 |                 488 |                 516 |                 655 |                 470 |                 530 |                 368 |                 410 |                 235 |                 285 |               215 |               420 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               2 |               1 |               1 |               3 |               2 |              19 |               9 |              30 |              19 |            79 |            93 |
| Portugal | 2021-02-04 |      7914 |    225 |     10760 |        \-188 |   \-14 |                 218 |                 211 |                 353 |                 360 |                 477 |                 511 |                 462 |                 517 |                 578 |                 732 |                 582 |                 665 |                 404 |                 491 |                 290 |                 360 |               227 |               492 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               3 |               1 |              15 |               7 |              32 |              25 |            57 |            84 |
| Portugal | 2021-02-03 |      9083 |    240 |     11218 |         \-91 |     25 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| Portugal | 2021-02-02 |      5540 |    260 |     17572 |         \-94 |   \-13 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |

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
| 2021-02-06 |    761906 |  13954 |    599593 |         6158 |    891 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| 2021-02-05 |    755774 |  13740 |    585276 |         6412 |    904 |               21485 |               20613 |               35228 |               35576 |               50668 |               57924 |               49520 |               59589 |               55520 |               70920 |               49048 |               62666 |               36417 |               39363 |               23150 |               26125 |             20381 |             41339 |               0 |               1 |               1 |               1 |               6 |               4 |              17 |              16 |              70 |              47 |             250 |             101 |             833 |             344 |            1756 |            1056 |          4211 |          5026 |
| 2021-02-04 |    748858 |  13482 |    573934 |         6496 |    863 |               21252 |               20442 |               34913 |               35238 |               50276 |               57471 |               49127 |               59101 |               55004 |               70265 |               48578 |               62136 |               36049 |               38953 |               22915 |               25840 |             20166 |             40919 |               0 |               1 |               1 |               1 |               6 |               4 |              17 |              14 |              69 |              46 |             247 |              99 |             814 |             335 |            1726 |            1037 |          4132 |          4933 |
| 2021-02-03 |    740944 |  13257 |    563174 |         6684 |    877 |               21034 |               20231 |               34560 |               34878 |               49799 |               56960 |               48665 |               58584 |               54426 |               69533 |               47996 |               61471 |               35645 |               38462 |               22625 |               25480 |             19939 |             40427 |               0 |               1 |               1 |               1 |               6 |               4 |              17 |              14 |              69 |              45 |             244 |              98 |             799 |             328 |            1694 |            1012 |          4075 |          4849 |
| 2021-02-02 |    731861 |  13017 |    551956 |         6775 |    852 |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                  NA |                NA |                NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |              NA |            NA |            NA |
| 2021-02-01 |    726321 |  12757 |    534384 |         6869 |    865 |               20639 |               19815 |               33932 |               34184 |               48975 |               56082 |               47773 |               57536 |               53289 |               68161 |               46913 |               60302 |               34833 |               37575 |               22112 |               24930 |             19497 |             39546 |               0 |               1 |               1 |               1 |               5 |               4 |              17 |              14 |              68 |              41 |             234 |              95 |             762 |             312 |            1636 |             973 |          3922 |          4671 |
| 2021-01-31 |    720516 |  12482 |    526411 |         6694 |    858 |               20424 |               19620 |               33695 |               33906 |               48653 |               55708 |               47444 |               57140 |               52857 |               67630 |               46510 |               59808 |               34563 |               37247 |               21934 |               24696 |             19305 |             39152 |               0 |               1 |               1 |               1 |               5 |               4 |              17 |              13 |              68 |              40 |             225 |              93 |             744 |             308 |            1593 |             953 |          3836 |          4580 |
| 2021-01-30 |    711018 |  12179 |    518900 |         6544 |    843 |               20076 |               19261 |               33183 |               33408 |               48166 |               55112 |               46847 |               56472 |               52130 |               66733 |               45901 |               59012 |               34093 |               36737 |               21599 |               24350 |             19049 |             38664 |               0 |               1 |               1 |               1 |               5 |               4 |              17 |              12 |              68 |              40 |             221 |              91 |             723 |             298 |            1564 |             934 |          3739 |          4460 |
| 2021-01-29 |    698583 |  11886 |    504886 |         6627 |    806 |               19657 |               18893 |               32553 |               32832 |               47443 |               54308 |               46102 |               55579 |               51192 |               65527 |               45112 |               57896 |               33419 |               36018 |               21222 |               23885 |             18714 |             38009 |               0 |               1 |               1 |               1 |               5 |               4 |              16 |              12 |              66 |              39 |             217 |              86 |             705 |             286 |            1540 |             911 |          3647 |          4349 |
| 2021-01-28 |    685383 |  11608 |    493699 |         6565 |    782 |               19229 |               18511 |               31842 |               32190 |               46695 |               53452 |               45285 |               54630 |               50203 |               64274 |               44241 |               56731 |               32703 |               35294 |               20841 |               23390 |             18370 |             37292 |               0 |               1 |               1 |               1 |               5 |               4 |              14 |              12 |              65 |              36 |             211 |              84 |             694 |             278 |            1504 |             889 |          3567 |          4242 |
| 2021-01-27 |    668951 |  11305 |    484753 |         6603 |    783 |               18639 |               17938 |               31014 |               31374 |               45711 |               52349 |               44308 |               53416 |               48920 |               62758 |               43159 |               55405 |               31879 |               34315 |               20323 |               22850 |             17963 |             36427 |               0 |               1 |               1 |               1 |               5 |               3 |              13 |              12 |              63 |              35 |             207 |              82 |             679 |             267 |            1469 |             867 |          3464 |          4136 |
| 2021-01-26 |    653878 |  11012 |    475485 |         6472 |    765 |               18170 |               17500 |               30262 |               30661 |               44869 |               51392 |               43412 |               52250 |               47733 |               61225 |               42047 |               54134 |               31101 |               33496 |               19840 |               22299 |             17608 |             35679 |               0 |               1 |               1 |               1 |               5 |               3 |              13 |              12 |              61 |              32 |             205 |              81 |             668 |             261 |            1428 |             831 |          3360 |          4049 |
| 2021-01-25 |    643113 |  10721 |    461757 |         6420 |    767 |               17843 |               17186 |               29777 |               30171 |               44246 |               50652 |               42732 |               51428 |               46871 |               60180 |               41268 |               53264 |               30542 |               32912 |               19457 |               21920 |             17340 |             35129 |               0 |               1 |               1 |               1 |               5 |               3 |              12 |              12 |              59 |              31 |             199 |              76 |             650 |             257 |            1393 |             807 |          3270 |          3944 |
| 2021-01-24 |    636190 |  10469 |    456491 |         6117 |    742 |               17594 |               16937 |               29434 |               29813 |               43836 |               50194 |               42304 |               50909 |               46349 |               59540 |               40815 |               52707 |               30187 |               32549 |               19217 |               21674 |             17128 |             34809 |               0 |               1 |               1 |               1 |               5 |               3 |              12 |              12 |              59 |              30 |             195 |              75 |             625 |             252 |            1356 |             794 |          3200 |          3848 |
| 2021-01-23 |    624469 |  10194 |    451324 |         5922 |    720 |               17185 |               16581 |               28831 |               29212 |               43160 |               49364 |               41564 |               50100 |               45443 |               58379 |               40036 |               51755 |               29612 |               31920 |               18885 |               21291 |             16771 |             34189 |               0 |               1 |               1 |               1 |               5 |               3 |              12 |              12 |              59 |              29 |             191 |              74 |             610 |             244 |            1318 |             771 |          3117 |          3746 |
| 2021-01-22 |    609136 |   9920 |    441556 |         5779 |    715 |               16725 |               16084 |               27996 |               28428 |               42251 |               48351 |               40617 |               48895 |               44230 |               56926 |               39009 |               50419 |               28852 |               31120 |               18420 |               20814 |             16374 |             33434 |               0 |               1 |               1 |               1 |               5 |               3 |              12 |              12 |              58 |              29 |             184 |              73 |             587 |             238 |            1277 |             751 |          3035 |          3653 |
| 2021-01-21 |    595149 |   9686 |    434237 |         5630 |    702 |               16253 |               15642 |               27213 |               27712 |               41400 |               47389 |               39721 |               47806 |               43155 |               55606 |               38062 |               49260 |               28230 |               30400 |               18016 |               20353 |             16024 |             32719 |               0 |               1 |               1 |               1 |               5 |               3 |              12 |              12 |              57 |              29 |             183 |              73 |             575 |             234 |            1241 |             734 |          2959 |          3566 |
| 2021-01-20 |    581605 |   9465 |    428364 |         5493 |    681 |               15808 |               15213 |               26457 |               27009 |               40617 |               46504 |               38886 |               46790 |               42116 |               54253 |               37151 |               48117 |               27592 |               29696 |               17613 |               19930 |             15622 |             32048 |               0 |               1 |               1 |               1 |               5 |               3 |              12 |              11 |              56 |              29 |             176 |              72 |             561 |             229 |            1213 |             715 |          2900 |          3480 |
| 2021-01-19 |    566958 |   9246 |    421871 |         5291 |    670 |               15385 |               14819 |               25716 |               26302 |               39770 |               45542 |               37960 |               45585 |               40996 |               52820 |               36193 |               46914 |               26907 |               28953 |               17149 |               19404 |             15150 |             31211 |               0 |               1 |               1 |               1 |               4 |               3 |              11 |              11 |              54 |              28 |             172 |              71 |             548 |             225 |            1191 |             692 |          2826 |          3407 |
| 2021-01-18 |    556503 |   9028 |    411589 |         5165 |    664 |               15132 |               14541 |               25258 |               25868 |               39168 |               44845 |               37323 |               44765 |               40187 |               51822 |               35507 |               46013 |               26344 |               28410 |               16800 |               19052 |             14826 |             30463 |               0 |               1 |               1 |               1 |               4 |               3 |               9 |              11 |              54 |              28 |             168 |              68 |             537 |             220 |            1159 |             682 |          2764 |          3318 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted\_future\_deaths | 00-09\_men | 00-09\_women | 10-19\_men | 10-19\_women | 20-29\_men | 20-29\_women | 30-39\_men | 30-39\_women | 40-49\_men | 40-49\_women | 50-59\_men | 50-59\_women | 60-69\_men | 60-69\_women | 70-79\_men | 70-79\_women | 80+\_men | 80+\_women |
| :--------- | :-------- | ------------------------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | -------: | ---------: |
| 2021-02-05 | 6 916     |                   141.537 |          0 |        0.008 |      0.009 |        0.010 |      0.046 |        0.031 |      0.135 |        0.131 |      0.651 |        0.434 |      2.396 |        0.854 |      8.418 |        3.583 |     17.825 |       11.520 |   44.422 |     51.064 |
| 2021-02-04 | 7 914     |                   162.470 |          0 |        0.010 |      0.010 |        0.010 |      0.056 |        0.035 |      0.159 |        0.139 |      0.729 |        0.485 |      2.966 |        1.072 |      9.241 |        4.291 |     21.997 |       14.552 |   46.901 |     59.817 |
| 2021-02-03 | 9 083     |                   296.457 |          0 |        0.020 |      0.018 |        0.020 |      0.098 |        0.061 |      0.306 |        0.281 |      1.434 |        0.909 |      5.520 |        1.884 |     18.574 |        7.752 |     38.913 |       22.232 |   91.323 |    107.112 |
| 2021-02-01 | 5 805     |                   123.630 |          0 |        0.009 |      0.007 |        0.008 |      0.038 |        0.026 |      0.113 |        0.106 |      0.545 |        0.352 |      2.054 |        0.796 |      6.176 |        2.866 |     13.502 |        9.459 |   39.670 |     47.903 |
| 2021-01-31 | 9 498     |                   173.256 |          0 |        0.017 |      0.015 |        0.014 |      0.058 |        0.041 |      0.205 |        0.179 |      0.917 |        0.594 |      3.104 |        1.283 |     10.751 |        4.457 |     25.411 |       13.986 |   52.893 |     59.331 |
| 2021-01-30 | 12 435    |                   226.437 |          0 |        0.018 |      0.018 |        0.016 |      0.086 |        0.056 |      0.256 |        0.240 |      1.183 |        0.799 |      4.022 |        1.799 |     15.417 |        6.283 |     28.597 |       18.796 |   69.216 |     79.635 |
| 2021-01-29 | 13 200    |                   238.996 |          0 |        0.019 |      0.020 |        0.018 |      0.089 |        0.059 |      0.280 |        0.255 |      1.247 |        0.830 |      4.440 |        1.878 |     16.378 |        6.327 |     28.900 |       20.008 |   71.075 |     87.173 |
| 2021-01-28 | 16 432    |                   288.986 |          0 |        0.028 |      0.024 |        0.023 |      0.117 |        0.076 |      0.335 |        0.326 |      1.618 |        1.005 |      5.515 |        2.137 |     18.848 |        8.556 |     39.292 |       21.827 |   84.092 |    105.167 |
| 2021-01-27 | 15 073    |                   259.230 |          0 |        0.021 |      0.021 |        0.020 |      0.100 |        0.066 |      0.308 |        0.313 |      1.497 |        1.016 |      5.668 |        2.048 |     17.796 |        7.157 |     36.637 |       22.272 |   73.348 |     90.942 |
| 2021-01-26 | 10 765    |                   192.280 |          0 |        0.015 |      0.014 |        0.014 |      0.074 |        0.051 |      0.233 |        0.221 |      1.087 |        0.693 |      3.971 |        1.402 |     12.787 |        5.104 |     29.052 |       15.320 |   55.373 |     66.869 |
| 2021-01-25 | 6 923     |                   126.837 |          0 |        0.012 |      0.010 |        0.010 |      0.049 |        0.032 |      0.147 |        0.139 |      0.658 |        0.424 |      2.309 |        0.898 |      8.120 |        3.172 |     18.205 |        9.944 |   43.802 |     38.906 |
| 2021-01-24 | 11 721    |                   216.530 |          0 |        0.017 |      0.017 |        0.017 |      0.080 |        0.057 |      0.254 |        0.217 |      1.142 |        0.769 |      3.971 |        1.534 |     13.153 |        5.497 |     25.183 |       15.481 |   73.761 |     75.380 |
| 2021-01-23 | 15 333    |                   263.524 |          0 |        0.024 |      0.024 |        0.022 |      0.108 |        0.070 |      0.325 |        0.324 |      1.529 |        0.963 |      5.235 |        2.153 |     17.384 |        6.991 |     35.272 |       19.281 |   82.026 |     91.793 |
| 2021-01-22 | 13 987    |                   238.799 |          0 |        0.021 |      0.022 |        0.020 |      0.101 |        0.066 |      0.308 |        0.292 |      1.355 |        0.875 |      4.827 |        1.868 |     14.228 |        6.292 |     30.645 |       18.634 |   72.315 |     86.930 |
| 2021-01-21 | 13 544    |                   242.520 |          0 |        0.021 |      0.021 |        0.020 |      0.093 |        0.061 |      0.287 |        0.273 |      1.310 |        0.897 |      4.643 |        1.842 |     14.594 |        6.152 |     30.569 |       17.098 |   83.059 |     81.580 |
| 2021-01-20 | 14 647    |                   287.956 |          0 |        0.019 |      0.021 |        0.020 |      0.100 |        0.066 |      0.318 |        0.324 |      1.412 |        0.950 |      4.883 |        1.939 |     15.669 |        6.493 |     35.196 |       21.261 |   97.522 |    101.763 |
| 2021-01-19 | 10 455    |                   223.435 |          0 |        0.013 |      0.013 |        0.012 |      0.071 |        0.048 |      0.219 |        0.220 |      1.020 |        0.661 |      3.497 |        1.452 |     12.878 |        4.745 |     26.473 |       14.228 |   66.943 |     90.942 |
| 2021-01-18 | 6 702     |                   121.444 |          0 |        0.011 |      0.011 |        0.009 |      0.051 |        0.032 |      0.144 |        0.143 |      0.623 |        0.408 |      1.524 |        0.828 |      7.823 |        2.954 |     16.764 |        8.650 |   38.430 |     43.039 |
| 2021-01-17 | 10 385    |                   209.896 |          0 |        0.016 |      0.015 |        0.015 |      0.070 |        0.050 |      0.213 |        0.200 |      0.968 |        0.653 |      6.677 |        1.310 |     11.048 |        5.165 |     24.804 |       13.218 |   60.125 |     85.349 |
| 2021-01-16 | 10 947    |                   197.586 |          0 |        0.016 |      0.017 |        0.018 |      0.083 |        0.054 |      0.223 |        0.223 |      1.029 |        0.681 |      3.711 |        1.462 |     11.574 |        4.562 |     27.535 |       15.441 |   61.778 |     69.179 |
