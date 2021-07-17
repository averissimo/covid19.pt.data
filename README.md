COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Saturday, July 17, 2021)*

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
| 2021-07-17 |      3677 |      5 |      3341 |            2 |      2 |         50973 |          64862 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-07-16 |      3547 |      7 |      2571 |            4 |     -3 |         55284 |          61040 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-07-15 |      3641 |      5 |      2268 |           40 |      3 |         56391 |          63945 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-07-14 |      4153 |      9 |      2235 |           -8 |     10 |         56659 |          58624 |               200 |               189 |               286 |               293 |               570 |               519 |               387 |               354 |               305 |               330 |               130 |               161 |                82 |               100 |                63 |                70 |              29 |              62 |             0 |             0 |             0 |             0 |             0 |            -5 |           -25 |           -20 |           -93 |           -63 |          -339 |          -136 |         -1077 |          -471 |         -2309 |         -1366 |       -5168 |       -6090 |
| 2021-07-13 |      2650 |      9 |      3490 |           13 |     -2 |         44659 |          73413 |               107 |               123 |               137 |               164 |               397 |               326 |               246 |               219 |               221 |               213 |               112 |               110 |                57 |                74 |                29 |                37 |              16 |              27 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             2 |             3 |           0 |           1 |

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
| 2021-07-17 |    927424 |  17199 |    860449 |          780 |    173 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6197078 |        4130217 |
| 2021-07-16 |    923747 |  17194 |    857108 |          778 |    171 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6146105 |        4065355 |
| 2021-07-15 |    920200 |  17187 |    854537 |          774 |    174 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6090821 |        4004315 |
| 2021-07-14 |    916559 |  17182 |    852269 |          734 |    171 |             26882 |             25728 |             43987 |             44404 |             65534 |             71988 |             62342 |             71926 |             67933 |             84079 |             58382 |             73764 |             43057 |             47067 |             27321 |             30641 |           23645 |           47280 |             1 |             1 |             1 |             1 |             7 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |       6034430 |        3940370 |
| 2021-07-13 |    912406 |  17173 |    850034 |          742 |    161 |             26682 |             25539 |             43701 |             44111 |             64964 |             71469 |             61955 |             71572 |             67628 |             83749 |             58252 |             73603 |             42975 |             46967 |             27258 |             30571 |           23616 |           47218 |             1 |             1 |             1 |             1 |             7 |             5 |            25 |            20 |            93 |            63 |           339 |           136 |          1077 |           471 |          2309 |          1366 |        5168 |        6090 |       5977771 |        3881746 |
| 2021-07-12 |    909756 |  17164 |    846544 |          729 |    163 |             26575 |             25416 |             43564 |             43947 |             64567 |             71143 |             61709 |             71353 |             67407 |             83536 |             58140 |             73493 |             42918 |             46893 |             27229 |             30534 |           23600 |           47191 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            93 |            63 |           339 |           136 |          1076 |           470 |          2307 |          1363 |        5168 |        6089 |       5933112 |        3808333 |
| 2021-07-11 |    907974 |  17156 |    845516 |          672 |    153 |             26474 |             25328 |             43445 |             43820 |             64339 |             70942 |             61514 |             71180 |             67266 |             83416 |             58070 |             73410 |             42894 |             46845 |             27214 |             30506 |           23595 |           47172 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            93 |            63 |           339 |           136 |          1076 |           470 |          2305 |          1363 |        5164 |        6087 |            NA |             NA |
| 2021-07-10 |    905651 |  17148 |    844497 |          632 |    144 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-07-09 |    902489 |  17142 |    842024 |          617 |    141 |             26224 |             25035 |             43024 |             43381 |             63646 |             70288 |             61015 |             70711 |             66883 |             82971 |             57857 |             73150 |             42771 |             46729 |             27159 |             30430 |           23576 |           47119 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            93 |            63 |           338 |           136 |          1074 |           468 |          2302 |          1360 |        5162 |        6086 |            NA |             NA |
| 2021-07-08 |    899295 |  17135 |    840297 |          599 |    136 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-07-07 |    896026 |  17126 |    838642 |          603 |    130 |             25922 |             24705 |             42588 |             42866 |             62825 |             69469 |             60424 |             70119 |             66370 |             82451 |             57651 |             72900 |             42634 |             46575 |             27097 |             30349 |           23546 |           47035 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           336 |           136 |          1074 |           468 |          2298 |          1359 |        5158 |        6082 |       5915601 |        3710093 |
| 2021-07-06 |    892741 |  17118 |    837135 |          613 |    133 |             25742 |             24552 |             42351 |             42626 |             62413 |             69088 |             60116 |             69823 |             66124 |             82162 |             57532 |             72751 |             42558 |             46488 |             27056 |             30306 |           23536 |           47010 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           468 |          2296 |          1359 |        5156 |        6079 |       5771249 |        3513739 |
| 2021-07-05 |    890571 |  17117 |    834625 |          613 |    136 |             25657 |             24470 |             42220 |             42481 |             62105 |             68820 |             59900 |             69635 |             65929 |             81973 |             57443 |             72658 |             42527 |             46429 |             27028 |             30282 |           23524 |           46996 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           468 |          2296 |          1359 |        5156 |        6078 |       5702799 |        3435821 |
| 2021-07-04 |    889088 |  17112 |    833852 |          567 |    128 |             25581 |             24396 |             42113 |             42368 |             61916 |             68643 |             59758 |             69495 |             65820 |             81851 |             57397 |             72592 |             42495 |             46405 |             27007 |             30259 |           23516 |           46987 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           467 |          2295 |          1359 |        5154 |        6077 |       5662065 |        3398503 |
| 2021-07-03 |    887047 |  17112 |    833197 |          543 |    122 |             25473 |             24298 |             41958 |             42213 |             61657 |             68390 |             59564 |             69308 |             65667 |             81687 |             57326 |             72496 |             42459 |             46359 |             26984 |             30233 |           23507 |           46973 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           467 |          2295 |          1359 |        5154 |        6077 |       5589854 |        3332199 |
| 2021-07-02 |    884442 |  17108 |    831479 |          532 |    118 |             25354 |             24174 |             41773 |             42025 |             61311 |             68101 |             59297 |             69039 |             65479 |             81472 |             57223 |             72394 |             42397 |             46309 |             26962 |             30199 |           23496 |           46950 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           467 |          2295 |          1358 |        5152 |        6076 |       5506650 |        3249196 |
| 2021-07-01 |    882006 |  17101 |    830224 |          509 |    113 |             25246 |             24058 |             41575 |             41851 |             60965 |             67805 |             59046 |             68828 |             65298 |             81300 |             57135 |             72303 |             42344 |             46255 |             26939 |             30161 |           23484 |           46932 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           467 |          2293 |          1358 |        5148 |        6075 |       5413040 |        3158425 |
| 2021-06-30 |    879557 |  17096 |    828990 |          504 |    120 |             25151 |             23951 |             41419 |             41707 |             60642 |             67492 |             58822 |             68616 |             65122 |             81079 |             57039 |             72185 |             42286 |             46189 |             26897 |             30119 |           23471 |           46907 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           466 |          2291 |          1358 |        5147 |        6074 |       5270193 |        3019844 |
| 2021-06-29 |    877195 |  17092 |    827969 |          492 |    119 |             25045 |             23859 |             41271 |             41525 |             60342 |             67248 |             58608 |             68423 |             64927 |             80867 |             56923 |             72068 |             42233 |             46129 |             26862 |             30079 |           23451 |           46884 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           466 |          2290 |          1358 |        5147 |        6071 |       5149017 |        2922293 |
| 2021-06-28 |    875449 |  17086 |    826292 |          502 |    115 |             24968 |             23794 |             41156 |             41404 |             60133 |             67060 |             58440 |             68262 |             64773 |             80716 |             56853 |             71981 |             42190 |             46082 |             26834 |             30051 |           23442 |           46869 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           465 |          2289 |          1357 |        5146 |        6069 |       5086547 |        2870076 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-07-14 | 4 153     |                   0.089 |     0.007 |       0.007 |     0.007 |       0.007 |     0.061 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-13 | 2 650     |                   0.058 |     0.004 |       0.005 |     0.003 |       0.004 |     0.042 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-12 | 1 782     |                   0.037 |     0.004 |       0.003 |     0.003 |       0.003 |     0.024 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-11 | 2 323     |                   0.114 |     0.009 |       0.011 |     0.010 |       0.010 |     0.074 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-09 | 3 194     |                   0.134 |     0.011 |       0.013 |     0.010 |       0.012 |     0.088 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-07 | 3 285     |                   0.067 |     0.007 |       0.006 |     0.005 |       0.005 |     0.044 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-06 | 2 170     |                   0.045 |     0.003 |       0.003 |     0.003 |       0.003 |     0.033 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-05 | 1 483     |                   0.031 |     0.003 |       0.003 |     0.002 |       0.003 |     0.020 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-04 | 2 041     |                   0.043 |     0.004 |       0.004 |     0.004 |       0.003 |     0.028 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-03 | 2 605     |                   0.054 |     0.004 |       0.005 |     0.004 |       0.004 |     0.037 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-02 | 2 436     |                   0.055 |     0.004 |       0.005 |     0.005 |       0.004 |     0.037 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-07-01 | 2 449     |                   0.050 |     0.004 |       0.004 |     0.004 |       0.003 |     0.035 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-06-30 | 2 362     |                   0.047 |     0.004 |       0.004 |     0.003 |       0.004 |     0.032 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-06-29 | 1 746     |                   0.034 |     0.003 |       0.003 |     0.003 |       0.003 |     0.022 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-06-28 | 902       |                   0.016 |     0.001 |       0.001 |     0.002 |       0.002 |     0.010 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-06-27 | 1 496     |                   0.028 |     0.002 |       0.002 |     0.003 |       0.002 |     0.019 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-06-26 | 1 568     |                   8.355 |     8.330 |       0.003 |     0.002 |       0.002 |     0.018 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-06-25 | 1 604     |                   8.361 |     8.335 |       0.003 |     0.003 |       0.003 |     0.017 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-06-24 | 1 556     |                   0.030 |     0.003 |       0.003 |     0.003 |       0.003 |     0.018 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
| 2021-06-23 | 1 497     |                   0.028 |     0.002 |       0.002 |     0.003 |       0.002 |     0.019 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |         0 |           0 |       0 |         0 |
