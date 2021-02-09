COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Tuesday, February 09, 2021)*

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
| Portugal | 2021-02-09 |      2583 |    203 |     15157 |        \-274 |   \-15 |                  46 |                  48 |                  92 |                  85 |                 155 |                 165 |                 172 |                 201 |                 191 |                 204 |                 193 |                 205 |                 151 |                 130 |                 127 |                 114 |               119 |               185 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               1 |               2 |               1 |               4 |               2 |              10 |               7 |              29 |              14 |            55 |            77 |
| Portugal | 2021-02-08 |      2505 |    196 |      6755 |           96 |     12 |                  73 |                  73 |                  86 |                 119 |                 154 |                 159 |                 163 |                 171 |                 196 |                 224 |                 171 |                 221 |                 155 |                 146 |                  86 |                 100 |                72 |               137 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               2 |               2 |               6 |               3 |              11 |               3 |              27 |              13 |            56 |            73 |
| Portugal | 2021-02-07 |      3508 |    204 |      6573 |           90 |   \-26 |                  88 |                  83 |                 168 |                 167 |                 209 |                 211 |                 194 |                 224 |                 244 |                 303 |                 273 |                 294 |                 182 |                 212 |                 144 |                 141 |               118 |               251 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               3 |               1 |              10 |               4 |              47 |              19 |            59 |            60 |
| Portugal | 2021-02-06 |      6132 |    214 |     14317 |        \-254 |   \-13 |                 177 |                 166 |                 244 |                 250 |                 338 |                 354 |                 332 |                 420 |                 465 |                 540 |                 404 |                 550 |                 354 |                 365 |                 210 |                 271 |               230 |               457 |               1 |               0 |               0 |               0 |               0 |               0 |               1 |               0 |               3 |               2 |               3 |               0 |              13 |               8 |              29 |              17 |            61 |            76 |
| Portugal | 2021-02-05 |      6916 |    258 |     11342 |         \-84 |     41 |                 233 |                 171 |                 315 |                 338 |                 392 |                 453 |                 393 |                 488 |                 516 |                 655 |                 470 |                 530 |                 368 |                 410 |                 235 |                 285 |               215 |               420 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               2 |               1 |               1 |               3 |               2 |              19 |               9 |              30 |              19 |            79 |            93 |

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
| 2021-02-09 |    770502 |  14557 |    628078 |         6070 |    862 |               21869 |               20983 |               35818 |               36197 |               51524 |               58813 |               50381 |               60605 |               56616 |               72191 |               50089 |               63936 |               37259 |               40216 |               23717 |               26751 |             20920 |             42369 |               1 |               1 |               1 |               1 |               6 |               4 |              19 |              17 |              78 |              52 |             266 |             107 |             877 |             366 |            1888 |            1119 |          4442 |          5312 |
| 2021-02-08 |    767919 |  14354 |    612921 |         6344 |    877 |               21823 |               20935 |               35726 |               36112 |               51369 |               58648 |               50209 |               60404 |               56425 |               71987 |               49896 |               63731 |               37108 |               40086 |               23590 |               26637 |             20801 |             42184 |               1 |               1 |               1 |               1 |               6 |               4 |              18 |              16 |              76 |              51 |             262 |             105 |             867 |             359 |            1859 |            1105 |          4387 |          5235 |
| 2021-02-07 |    765414 |  14158 |    606166 |         6248 |    865 |               21750 |               20862 |               35640 |               35993 |               51215 |               58489 |               50046 |               60233 |               56229 |               71763 |               49725 |               63510 |               36953 |               39940 |               23504 |               26537 |             20729 |             42047 |               1 |               1 |               1 |               1 |               6 |               4 |              18 |              16 |              74 |              49 |             256 |             102 |             856 |             356 |            1832 |            1092 |          4331 |          5162 |
| 2021-02-06 |    761906 |  13954 |    599593 |         6158 |    891 |               21662 |               20779 |               35472 |               35826 |               51006 |               58278 |               49852 |               60009 |               55985 |               71460 |               49452 |               63216 |               36771 |               39728 |               23360 |               26396 |             20611 |             41796 |               1 |               1 |               1 |               1 |               6 |               4 |              18 |              16 |              73 |              49 |             253 |             101 |             846 |             352 |            1785 |            1073 |          4272 |          5102 |
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

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted\_future\_deaths | 00-09\_men | 00-09\_women | 10-19\_men | 10-19\_women | 20-29\_men | 20-29\_women | 30-39\_men | 30-39\_women | 40-49\_men | 40-49\_women | 50-59\_men | 50-59\_women | 60-69\_men | 60-69\_women | 70-79\_men | 70-79\_women | 80+\_men | 80+\_women |
| :--------- | :-------- | ------------------------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | -------: | ---------: |
| 2021-02-09 | 2 583     |                    70.015 |      0.002 |        0.002 |      0.003 |        0.002 |      0.018 |        0.011 |      0.065 |        0.056 |      0.263 |        0.147 |      1.025 |        0.343 |      3.554 |        1.183 |     10.110 |        4.769 |   25.268 |     23.194 |
| 2021-02-08 | 2 505     |                    50.328 |      0.003 |        0.003 |      0.002 |        0.003 |      0.018 |        0.011 |      0.061 |        0.048 |      0.270 |        0.161 |      0.908 |        0.370 |      3.648 |        1.329 |      6.846 |        4.183 |   15.288 |     17.176 |
| 2021-02-07 | 3 508     |                    82.786 |      0.004 |        0.004 |      0.005 |        0.005 |      0.024 |        0.014 |      0.073 |        0.063 |      0.336 |        0.218 |      1.450 |        0.492 |      4.284 |        1.929 |     11.463 |        5.898 |   25.055 |     31.469 |
| 2021-02-06 | 6 132     |                   150.271 |      0.008 |        0.008 |      0.007 |        0.007 |      0.039 |        0.024 |      0.125 |        0.118 |      0.641 |        0.389 |      2.145 |        0.920 |      8.332 |        3.322 |     16.717 |       11.336 |   48.837 |     57.296 |
| 2021-02-05 | 6 916     |                   146.296 |      0.011 |        0.008 |      0.009 |        0.009 |      0.046 |        0.031 |      0.148 |        0.137 |      0.711 |        0.472 |      2.496 |        0.887 |      8.662 |        3.731 |     18.707 |       11.922 |   45.652 |     52.657 |
| 2021-02-04 | 7 914     |                   167.984 |      0.010 |        0.010 |      0.010 |        0.010 |      0.056 |        0.035 |      0.174 |        0.145 |      0.796 |        0.527 |      3.091 |        1.113 |      9.509 |        4.469 |     23.086 |       15.059 |   48.200 |     61.684 |
| 2021-02-03 | 9 083     |                   306.458 |      0.018 |        0.020 |      0.018 |        0.019 |      0.096 |        0.060 |      0.336 |        0.294 |      1.566 |        0.988 |      5.751 |        1.956 |     19.113 |        8.072 |     40.838 |       23.007 |   93.851 |    110.455 |
| 2021-02-01 | 5 805     |                   127.739 |      0.010 |        0.009 |      0.007 |        0.008 |      0.037 |        0.025 |      0.124 |        0.111 |      0.595 |        0.382 |      2.140 |        0.827 |      6.355 |        2.985 |     14.170 |        9.788 |   40.768 |     49.398 |
| 2021-01-31 | 9 498     |                   179.170 |      0.016 |        0.017 |      0.014 |        0.014 |      0.057 |        0.041 |      0.225 |        0.187 |      1.002 |        0.646 |      3.234 |        1.332 |     11.063 |        4.641 |     26.668 |       14.473 |   54.357 |     61.183 |
| 2021-01-30 | 12 435    |                   234.082 |      0.019 |        0.018 |      0.018 |        0.016 |      0.084 |        0.055 |      0.281 |        0.250 |      1.292 |        0.869 |      4.190 |        1.868 |     15.865 |        6.544 |     30.011 |       19.451 |   71.131 |     82.120 |
| 2021-01-29 | 13 200    |                   247.050 |      0.020 |        0.018 |      0.020 |        0.018 |      0.087 |        0.058 |      0.308 |        0.266 |      1.363 |        0.903 |      4.625 |        1.950 |     16.853 |        6.589 |     30.330 |       20.706 |   73.042 |     89.894 |
| 2021-01-28 | 16 432    |                   298.821 |      0.027 |        0.027 |      0.023 |        0.023 |      0.115 |        0.075 |      0.368 |        0.341 |      1.768 |        1.092 |      5.746 |        2.219 |     19.395 |        8.910 |     41.236 |       22.588 |   86.419 |    108.449 |
| 2021-01-27 | 15 073    |                   268.104 |      0.021 |        0.021 |      0.021 |        0.020 |      0.098 |        0.065 |      0.338 |        0.327 |      1.635 |        1.104 |      5.905 |        2.127 |     18.313 |        7.454 |     38.449 |       23.048 |   75.378 |     93.780 |
| 2021-01-26 | 10 765    |                   198.879 |      0.015 |        0.015 |      0.014 |        0.014 |      0.073 |        0.050 |      0.256 |        0.231 |      1.188 |        0.753 |      4.137 |        1.456 |     13.158 |        5.315 |     30.489 |       15.854 |   56.905 |     68.956 |
| 2021-01-25 | 6 923     |                   131.137 |      0.011 |        0.012 |      0.010 |        0.010 |      0.048 |        0.031 |      0.161 |        0.146 |      0.719 |        0.461 |      2.406 |        0.932 |      8.356 |        3.304 |     19.105 |       10.290 |   45.015 |     40.120 |
| 2021-01-24 | 11 721    |                   223.768 |      0.019 |        0.017 |      0.017 |        0.017 |      0.079 |        0.056 |      0.279 |        0.227 |      1.248 |        0.836 |      4.137 |        1.593 |     13.534 |        5.724 |     26.429 |       16.021 |   75.803 |     77.732 |
| 2021-01-23 | 15 333    |                   272.461 |      0.021 |        0.024 |      0.023 |        0.022 |      0.106 |        0.069 |      0.357 |        0.338 |      1.671 |        1.047 |      5.454 |        2.236 |     17.889 |        7.281 |     37.016 |       19.953 |   84.296 |     94.658 |
| 2021-01-22 | 13 987    |                   246.891 |      0.022 |        0.021 |      0.022 |        0.020 |      0.099 |        0.065 |      0.338 |        0.305 |      1.481 |        0.951 |      5.029 |        1.940 |     14.641 |        6.553 |     32.161 |       19.284 |   74.316 |     89.643 |
| 2021-01-21 | 13 544    |                   250.671 |      0.020 |        0.020 |      0.021 |        0.019 |      0.091 |        0.060 |      0.315 |        0.285 |      1.431 |        0.975 |      4.838 |        1.913 |     15.017 |        6.407 |     32.081 |       17.694 |   85.358 |     84.126 |
| 2021-01-20 | 14 647    |                   297.591 |      0.019 |        0.019 |      0.021 |        0.020 |      0.099 |        0.065 |      0.349 |        0.338 |      1.543 |        1.032 |      5.088 |        2.013 |     16.123 |        6.762 |     36.937 |       22.003 |  100.221 |    104.939 |
