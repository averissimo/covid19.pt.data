COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Wednesday, July 28, 2021)*

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
| 2021-07-28 |        NA |     NA |        NA |           NA |     NA |         27916 |          57705 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-07-27 |      2316 |      6 |      5051 |            9 |      2 |         25642 |          60700 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-07-26 |      1610 |      9 |      1802 |           40 |      5 |         17520 |          30948 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-07-25 |      2625 |      8 |      1202 |           44 |     12 |         38279 |          55546 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-07-24 |      3396 |     20 |      4128 |          -20 |      3 |         42281 |          60385 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |

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
| 2021-07-28 |        NA |     NA |        NA |           NA |     NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6605125 |        4694022 |
| 2021-07-27 |    956985 |  17307 |    888423 |          928 |    200 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6577209 |        4636317 |
| 2021-07-26 |    954669 |  17301 |    883372 |          919 |    198 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6551567 |        4575617 |
| 2021-07-25 |    953059 |  17292 |    881570 |          879 |    193 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6534047 |        4544669 |
| 2021-07-24 |    950434 |  17284 |    880368 |          835 |    181 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6495768 |        4489123 |
| 2021-07-23 |    947038 |  17264 |    876240 |          855 |    178 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6453487 |        4428738 |
| 2021-07-22 |    943244 |  17248 |    873008 |          860 |    178 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6409251 |        4370554 |
| 2021-07-21 |    939622 |  17232 |    870243 |          867 |    171 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6371905 |        4312030 |
| 2021-07-20 |    935246 |  17219 |    867540 |          854 |    177 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6326914 |        4257882 |
| 2021-07-19 |    932540 |  17215 |    863089 |          851 |    181 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6283286 |        4201782 |
| 2021-07-18 |    930685 |  17207 |    861707 |          805 |    176 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6252238 |        4173228 |
| 2021-07-17 |    927424 |  17199 |    860449 |          780 |    173 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6197078 |        4130217 |
| 2021-07-16 |    923747 |  17194 |    857108 |          778 |    171 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6146105 |        4065355 |
| 2021-07-15 |    920200 |  17187 |    854537 |          774 |    174 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6090821 |        4004315 |
| 2021-07-14 |    916559 |  17182 |    852269 |          734 |    171 |             26882 |             25728 |             43987 |             44404 |             65534 |             71988 |             62342 |             71926 |             67933 |             84079 |             58382 |             73764 |             43057 |             47067 |             27321 |             30641 |           23645 |           47280 |             1 |             1 |             1 |             1 |             7 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |       6034430 |        3940370 |
| 2021-07-13 |    912406 |  17173 |    850034 |          742 |    161 |             26682 |             25539 |             43701 |             44111 |             64964 |             71469 |             61955 |             71572 |             67628 |             83749 |             58252 |             73603 |             42975 |             46967 |             27258 |             30571 |           23616 |           47218 |             1 |             1 |             1 |             1 |             7 |             5 |            25 |            20 |            93 |            63 |           339 |           136 |          1077 |           471 |          2309 |          1366 |        5168 |        6090 |       5977771 |        3881746 |
| 2021-07-12 |    909756 |  17164 |    846544 |          729 |    163 |             26575 |             25416 |             43564 |             43947 |             64567 |             71143 |             61709 |             71353 |             67407 |             83536 |             58140 |             73493 |             42918 |             46893 |             27229 |             30534 |           23600 |           47191 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            93 |            63 |           339 |           136 |          1076 |           470 |          2307 |          1363 |        5168 |        6089 |       5933112 |        3808333 |
| 2021-07-11 |    907974 |  17156 |    845516 |          672 |    153 |             26474 |             25328 |             43445 |             43820 |             64339 |             70942 |             61514 |             71180 |             67266 |             83416 |             58070 |             73410 |             42894 |             46845 |             27214 |             30506 |           23595 |           47172 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            93 |            63 |           339 |           136 |          1076 |           470 |          2305 |          1363 |        5164 |        6087 |            NA |             NA |
| 2021-07-10 |    905651 |  17148 |    844497 |          632 |    144 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-07-09 |    902489 |  17142 |    842024 |          617 |    141 |             26224 |             25035 |             43024 |             43381 |             63646 |             70288 |             61015 |             70711 |             66883 |             82971 |             57857 |             73150 |             42771 |             46729 |             27159 |             30430 |           23576 |           47119 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            93 |            63 |           338 |           136 |          1074 |           468 |          2302 |          1360 |        5162 |        6086 |            NA |             NA |

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
