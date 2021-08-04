COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Wednesday, August 04, 2021)*

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
| 2021-08-04 |      3203 |     15 |      3290 |          -26 |      0 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-08-03 |      2076 |     19 |      4368 |          -23 |      1 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-08-02 |      1190 |      9 |      1448 |           45 |      3 |         44008 |          91161 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-08-01 |      2306 |      8 |      1500 |           28 |      5 |         32148 |          56964 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-07-31 |      2590 |     17 |      4128 |          -29 |     -4 |         33776 |          59647 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |

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
| 2021-08-04 |    977406 |  17412 |    912620 |          919 |    204 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6800840 |        5076293 |
| 2021-08-03 |    974203 |  17397 |    909330 |          945 |    204 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-08-02 |    972127 |  17378 |    904962 |          968 |    203 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6772846 |        5019116 |
| 2021-08-01 |    970937 |  17369 |    903514 |          923 |    200 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6728838 |        4927955 |
| 2021-07-31 |    968631 |  17361 |    902014 |          895 |    195 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6696690 |        4870991 |
| 2021-07-30 |    966041 |  17344 |    897886 |          924 |    199 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6662914 |        4811344 |
| 2021-07-29 |    963446 |  17330 |    894555 |          954 |    208 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6633199 |        4753260 |
| 2021-07-28 |    960437 |  17320 |    891687 |          934 |    200 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       6605125 |        4694022 |
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
