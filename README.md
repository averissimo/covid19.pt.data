COVID-19 Portugal data
================

``` r
dat <- download.updated.pt()
#> Report being downloaded: (1/1) -- 2021-07-01
#> Updating age data from esri...
#> Updating vaccines data from esri...

dgs.pt.new     <- dat$dgs.pt 

dgs.pt <- tibble()
tryCatch(dgs.pt <- covid19.pt.data::dgs.pt, error = function(err) { })

# DGS PT
send.discord.msg(dgs.pt.new, dgs.pt)
#> Discord webhook is not defined. Discord msg not sent.
#> Discord webhook is not defined. Discord msg not sent.
if (digest::digest(dgs.pt.new, algo = "sha256") != digest::digest(dgs.pt, algo = "sha256")) {
  dgs.pt <- dgs.pt.new 
  usethis::use_data(dgs.pt, overwrite = TRUE)
  readr::write_csv(dgs.pt, file = '../data/dgs_pt.csv')
}
#> ✔ Setting active project to '/github/workspace/repo'
#> ✔ Saving 'dgs.pt' to 'data/dgs.pt.rda'
#> • Document your data (see 'https://r-pkgs.org/data.html')
```

> R package with latest data scrapped from official sources *(last data
> from Thursday, July 01, 2021)*

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
| 2021-07-01 |      2449 |      5 |      1234 |            5 |     -7 |            NA |             NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-30 |      2362 |      4 |      1021 |           12 |      1 |        121176 |          97551 |               106 |                92 |               148 |               182 |               300 |               244 |               214 |               193 |               195 |               212 |               116 |               117 |                53 |                60 |                35 |                40 |              20 |              23 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |           0 |           3 |
| 2021-06-29 |      1746 |      6 |      1677 |          -10 |      4 |         62470 |          52217 |                77 |                65 |               115 |               121 |               209 |               188 |               168 |               161 |               154 |               151 |                70 |                87 |                43 |                47 |                28 |                28 |               9 |              15 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             1 |             1 |           1 |           2 |
| 2021-06-28 |       902 |      2 |       608 |           25 |     -1 |         38087 |          15219 |                21 |                19 |                68 |                70 |                92 |                98 |                83 |                89 |                79 |                66 |                54 |                53 |                25 |                31 |                10 |                15 |              10 |              18 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |           0 |           1 |
| 2021-06-27 |      1496 |      1 |       475 |           30 |      3 |         61023 |          37061 |                63 |                59 |               116 |                93 |               178 |               160 |               119 |               126 |               117 |               137 |                71 |                85 |                43 |                49 |                15 |                21 |              19 |              22 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |           0 |           0 |

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
| 2021-07-01 |    882006 |  17101 |    830224 |          509 |    113 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-06-30 |    879557 |  17096 |    828990 |          504 |    120 |             25151 |             23951 |             41419 |             41707 |             60642 |             67492 |             58822 |             68616 |             65122 |             81079 |             57039 |             72185 |             42286 |             46189 |             26897 |             30119 |           23471 |           46907 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           466 |          2291 |          1358 |        5147 |        6074 |       5270193 |        3019844 |
| 2021-06-29 |    877195 |  17092 |    827969 |          492 |    119 |             25045 |             23859 |             41271 |             41525 |             60342 |             67248 |             58608 |             68423 |             64927 |             80867 |             56923 |             72068 |             42233 |             46129 |             26862 |             30079 |           23451 |           46884 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           466 |          2290 |          1358 |        5147 |        6071 |       5149017 |        2922293 |
| 2021-06-28 |    875449 |  17086 |    826292 |          502 |    115 |             24968 |             23794 |             41156 |             41404 |             60133 |             67060 |             58440 |             68262 |             64773 |             80716 |             56853 |             71981 |             42190 |             46082 |             26834 |             30051 |           23442 |           46869 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           335 |           136 |          1074 |           465 |          2289 |          1357 |        5146 |        6069 |       5086547 |        2870076 |
| 2021-06-27 |    874547 |  17084 |    825684 |          477 |    116 |             24947 |             23775 |             41088 |             41334 |             60041 |             66962 |             58357 |             68173 |             64694 |             80650 |             56799 |             71928 |             42165 |             46051 |             26824 |             30036 |           23432 |           46851 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           334 |           136 |          1074 |           465 |          2289 |          1357 |        5146 |        6068 |       5048460 |        2854857 |
| 2021-06-26 |    873051 |  17083 |    825209 |          447 |    113 |             24884 |             23716 |             40972 |             41241 |             59863 |             66802 |             58238 |             68047 |             64577 |             80513 |             56728 |             71843 |             42122 |             46002 |             26809 |             30015 |           23413 |           46829 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           334 |           136 |          1073 |           465 |          2289 |          1357 |        5146 |        6068 |       4987437 |        2817796 |
| 2021-06-25 |    871483 |  17081 |    823960 |          431 |    108 |            248816 |             23641 |             40872 |             41144 |             59690 |             66642 |             58085 |             67899 |             64458 |             80368 |             56658 |             71747 |             42087 |             45970 |             26785 |             29989 |           23398 |           46805 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           334 |           136 |          1073 |           465 |          2289 |          1356 |        5145 |        6068 |       4922099 |        2773507 |
| 2021-06-24 |    869879 |  17079 |    823103 |          427 |    106 |             24756 |             23574 |             40746 |             41026 |             59533 |             66473 |             57961 |             67760 |             64327 |             80236 |             56577 |             71642 |             42052 |             45919 |             26745 |             29964 |           23380 |           46789 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           334 |           136 |          1073 |           465 |          2289 |          1356 |        5144 |        6067 |       4858850 |        2725370 |
| 2021-06-23 |    868323 |  17077 |    822234 |          437 |    100 |             24684 |             23498 |             40617 |             40902 |             59367 |             66326 |             57846 |             67618 |             64205 |             80080 |             56506 |             71574 |             42017 |             45857 |             26723 |             29939 |           23374 |           46771 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           334 |           136 |          1072 |           465 |          2289 |          1355 |        5144 |        6067 |       4798204 |        2675508 |
| 2021-06-22 |    866826 |  17074 |    821374 |          450 |    101 |             24625 |             23448 |             40493 |             40818 |             59185 |             66162 |             57714 |             67482 |             64080 |             79956 |             56427 |             71487 |             41985 |             45809 |             26704 |             29920 |           23358 |           46753 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           136 |          1072 |           465 |          2289 |          1355 |        5143 |        6066 |       4743032 |        2624060 |
| 2021-06-21 |    865806 |  17068 |    820081 |          443 |     97 |             24602 |             23409 |             40417 |             40754 |             59079 |             66042 |             57626 |             67398 |             63992 |             79870 |             56379 |             71422 |             41961 |             45778 |             26685 |             29898 |           23342 |           46738 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           136 |          1072 |           465 |          2287 |          1354 |        5140 |        6066 |       4727518 |        2608463 |
| 2021-06-20 |    865050 |  17065 |    819688 |          405 |     97 |             24578 |             23390 |             40350 |             40706 |             58987 |             65963 |             57579 |             67351 |             63927 |             79805 |             56329 |             71380 |             41938 |             45756 |             26660 |             29877 |           23334 |           46731 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           136 |          1072 |           465 |          2287 |          1352 |        5139 |        6066 |       4669305 |        2567766 |
| 2021-06-19 |    864109 |  17062 |    819324 |          389 |     99 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       4621946 |        2476648 |
| 2021-06-18 |    862926 |  17061 |    818440 |          391 |     94 |             24480 |             23302 |             40179 |             40538 |             58795 |             65691 |             57432 |             67185 |             63763 |             79646 |             56221 |             71249 |             41879 |             45680 |             26619 |             29843 |           23309 |           46704 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           136 |          1072 |           465 |          2287 |          1352 |        5139 |        6062 |       4598549 |        2449200 |
| 2021-06-17 |    861628 |  17057 |    817754 |          364 |     88 |             24430 |             23274 |             40089 |             40425 |             58664 |             65563 |             57302 |             67082 |             63654 |             79531 |             56152 |             71173 |             41855 |             45648 |             26589 |             29816 |           23295 |           46683 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2288 |          1353 |        5138 |        6060 |       4500125 |        2379304 |
| 2021-06-16 |    860395 |  17055 |    817092 |          351 |     83 |             24398 |             23219 |             39994 |             40350 |             58540 |             65443 |             57188 |             66969 |             63552 |             79437 |             56085 |             71077 |             41829 |             45598 |             26576 |             29806 |           23275 |           46660 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2288 |          1351 |        5138 |        6060 |       4438408 |        2329985 |
| 2021-06-15 |    859045 |  17049 |    816503 |          346 |     79 |             24352 |             23180 |             39903 |             40259 |             58382 |             65282 |             57057 |             66866 |             63453 |             79314 |             56033 |             70992 |             41785 |             45545 |             26569 |             29784 |           23262 |           46621 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2287 |          1349 |        5137 |        6048 |       4387691 |        2278284 |
| 2021-06-14 |    858072 |  17047 |    815622 |          340 |     77 |             24327 |             23162 |             39851 |             40213 |             58268 |             65179 |             56964 |             66788 |             63369 |             79203 |             55969 |             70924 |             41761 |             45516 |             26543 |             29765 |           23256 |           46607 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1349 |        5136 |        6058 |       4330244 |        2242562 |
| 2021-06-13 |    857447 |  17047 |    815342 |          325 |     82 |             24307 |             23144 |             39803 |             40180 |             58216 |             65112 |             56920 |             66726 |             63303 |             79149 |             55944 |             70881 |             41739 |             45492 |             26532 |             29756 |           23251 |           46592 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1349 |        5136 |        6058 |       4308544 |        2236492 |
| 2021-06-12 |    856740 |  17045 |    815094 |          300 |     77 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       4243537 |        2230476 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-06-30 | 2 362     |                  15.653 |     0.004 |       0.004 |     0.004 |       0.004 |     0.035 |       0.018 |     0.087 |       0.056 |     0.275 |       0.165 |     0.681 |       0.220 |     1.346 |       0.605 |     2.981 |       1.804 |   4.386 |     2.978 |
| 2021-06-29 | 1 746     |                  10.205 |     0.003 |       0.003 |     0.003 |       0.003 |     0.024 |       0.014 |     0.069 |       0.047 |     0.218 |       0.117 |     0.411 |       0.164 |     1.092 |       0.474 |     2.385 |       1.262 |   1.974 |     1.942 |
| 2021-06-28 | 902       |                   7.664 |     0.001 |       0.001 |     0.002 |       0.002 |     0.011 |       0.007 |     0.034 |       0.026 |     0.112 |       0.051 |     0.317 |       0.100 |     0.635 |       0.313 |     0.852 |       0.676 |   2.193 |     2.331 |
| 2021-06-27 | 1 496     |                  11.804 |     0.003 |       0.002 |     0.003 |       0.002 |     0.021 |       0.012 |     0.049 |       0.037 |     0.165 |       0.106 |     0.417 |       0.160 |     1.092 |       0.494 |     1.278 |       0.947 |   4.167 |     2.849 |
| 2021-06-26 | 1 568     |                  20.746 |     8.904 |       0.003 |     0.002 |       0.002 |     0.020 |       0.012 |     0.062 |       0.043 |     0.168 |       0.113 |     0.411 |       0.181 |     0.889 |       0.323 |     2.044 |       1.172 |   3.289 |     3.108 |
| 2021-06-25 | 1 604     |                  21.960 |     8.909 |       0.003 |     0.003 |       0.003 |     0.018 |       0.013 |     0.051 |       0.041 |     0.185 |       0.103 |     0.476 |       0.198 |     0.889 |       0.515 |     3.407 |       1.127 |   3.947 |     2.072 |
| 2021-06-24 | 1 556     |                   9.131 |     0.003 |       0.003 |     0.003 |       0.003 |     0.019 |       0.011 |     0.047 |       0.041 |     0.172 |       0.121 |     0.417 |       0.128 |     0.889 |       0.626 |     1.874 |       1.127 |   1.316 |     2.331 |
| 2021-06-23 | 1 497     |                  10.649 |     0.002 |       0.002 |     0.003 |       0.002 |     0.021 |       0.012 |     0.054 |       0.040 |     0.177 |       0.096 |     0.464 |       0.164 |     0.813 |       0.484 |     1.618 |       0.857 |   3.509 |     2.331 |
| 2021-06-22 | 1 020     |                   9.667 |     0.001 |       0.002 |     0.002 |       0.002 |     0.012 |       0.009 |     0.036 |       0.024 |     0.124 |       0.067 |     0.282 |       0.122 |     0.610 |       0.313 |     1.618 |       0.992 |   3.509 |     1.942 |
| 2021-06-21 | 756       |                   7.113 |     0.001 |       0.001 |     0.002 |       0.001 |     0.011 |       0.006 |     0.019 |       0.014 |     0.092 |       0.051 |     0.294 |       0.079 |     0.584 |       0.222 |     2.129 |       0.947 |   1.754 |     0.906 |
| 2021-06-20 | 941       |                  17.672 |     0.004 |       0.004 |     0.004 |       0.004 |     0.022 |       0.020 |     0.060 |       0.048 |     0.232 |       0.124 |     0.634 |       0.247 |     1.499 |       0.767 |     3.492 |       1.533 |   5.482 |     3.496 |
| 2021-06-18 | 1 298     |                  11.400 |     0.002 |       0.001 |     0.002 |       0.003 |     0.015 |       0.009 |     0.053 |       0.030 |     0.154 |       0.089 |     0.405 |       0.143 |     0.610 |       0.323 |     2.555 |       1.217 |   3.070 |     2.719 |
| 2021-06-17 | 1 233     |                  10.988 |     0.001 |       0.002 |     0.002 |       0.002 |     0.014 |       0.009 |     0.047 |       0.033 |     0.144 |       0.073 |     0.394 |       0.181 |     0.660 |       0.504 |     1.107 |       0.451 |   4.386 |     2.978 |
| 2021-06-16 | 1 350     |                  11.964 |     0.002 |       0.002 |     0.002 |       0.002 |     0.018 |       0.012 |     0.053 |       0.030 |     0.140 |       0.096 |     0.305 |       0.160 |     1.118 |       0.535 |     0.596 |       0.992 |   2.851 |     5.050 |
| 2021-06-15 | 973       |                   7.899 |     0.001 |       0.001 |     0.001 |       0.001 |     0.013 |       0.008 |     0.038 |       0.023 |     0.119 |       0.086 |     0.376 |       0.128 |     0.610 |       0.293 |     2.215 |       0.857 |   1.316 |     1.813 |
| 2021-06-14 | 625       |                   5.596 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.005 |     0.018 |       0.018 |     0.093 |       0.042 |     0.147 |       0.081 |     0.559 |       0.242 |     0.937 |       0.406 |   1.096 |     1.942 |
| 2021-06-13 | 707       |                  13.507 |     0.002 |       0.002 |     0.002 |       0.002 |     0.016 |       0.013 |     0.049 |       0.031 |     0.201 |       0.106 |     0.411 |       0.175 |     1.346 |       0.736 |     2.385 |       0.676 |   3.728 |     3.626 |
| 2021-06-11 | 519       |                   4.409 |     0.001 |       0.026 |     0.001 |       0.001 |     0.007 |       0.005 |     0.016 |       0.013 |     0.049 |       0.039 |     0.200 |       0.040 |     0.457 |       0.121 |     0.681 |       0.451 |   0.877 |     1.424 |
| 2021-06-10 | 910       |                   8.111 |     0.002 |       0.027 |     0.002 |       0.002 |     0.009 |       0.007 |     0.023 |       0.024 |     0.116 |       0.068 |     0.294 |       0.111 |     0.940 |       0.272 |     0.681 |       0.451 |   1.974 |     3.108 |
| 2021-06-09 | 890       |                   7.651 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.005 |     0.034 |       0.024 |     0.120 |       0.064 |     0.323 |       0.119 |     0.610 |       0.272 |     1.959 |       0.541 |   1.754 |     1.813 |
