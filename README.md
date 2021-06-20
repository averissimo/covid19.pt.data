COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Sunday, June 20, 2021)*

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
| 2021-06-20 |       941 |      3 |       364 |           16 |     -2 |         47359 |          91118 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-19 |      1183 |      1 |       884 |           -2 |      5 |         23397 |          27448 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-18 |      1298 |      4 |       686 |           27 |      6 |         98424 |          69896 |                50 |                28 |                90 |               113 |               131 |               128 |               130 |               103 |               109 |               115 |                69 |                76 |                24 |                32 |                30 |                27 |              14 |              21 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             0 |             1 |            -1 |            -1 |           1 |           2 |
| 2021-06-17 |      1233 |      2 |       662 |           13 |      5 |         61717 |          49319 |                32 |                55 |                95 |                75 |               124 |               120 |               114 |               113 |               102 |                94 |                67 |                96 |                26 |                50 |                13 |                10 |              20 |              23 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |           0 |           0 |
| 2021-06-16 |      1350 |      6 |       589 |            5 |      4 |         50717 |          51701 |                46 |                39 |                91 |                91 |               158 |               161 |               131 |               103 |                99 |               123 |                52 |                85 |                44 |                53 |                 7 |                22 |              13 |              39 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             2 |           1 |          12 |

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
| 2021-06-20 |    865050 |  17065 |    819688 |          405 |     97 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       4669305 |        2567766 |
| 2021-06-19 |    864109 |  17062 |    819324 |          389 |     99 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       4621946 |        2476648 |
| 2021-06-18 |    862926 |  17061 |    818440 |          391 |     94 |             24480 |             23302 |             40179 |             40538 |             58795 |             65691 |             57432 |             67185 |             63763 |             79646 |             56221 |             71249 |             41879 |             45680 |             26619 |             29843 |           23309 |           46704 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           136 |          1072 |           465 |          2287 |          1352 |        5139 |        6062 |       4598549 |        2449200 |
| 2021-06-17 |    861628 |  17057 |    817754 |          364 |     88 |             24430 |             23274 |             40089 |             40425 |             58664 |             65563 |             57302 |             67082 |             63654 |             79531 |             56152 |             71173 |             41855 |             45648 |             26589 |             29816 |           23295 |           46683 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2288 |          1353 |        5138 |        6060 |       4500125 |        2379304 |
| 2021-06-16 |    860395 |  17055 |    817092 |          351 |     83 |             24398 |             23219 |             39994 |             40350 |             58540 |             65443 |             57188 |             66969 |             63552 |             79437 |             56085 |             71077 |             41829 |             45598 |             26576 |             29806 |           23275 |           46660 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2288 |          1351 |        5138 |        6060 |       4438408 |        2329985 |
| 2021-06-15 |    859045 |  17049 |    816503 |          346 |     79 |             24352 |             23180 |             39903 |             40259 |             58382 |             65282 |             57057 |             66866 |             63453 |             79314 |             56033 |             70992 |             41785 |             45545 |             26569 |             29784 |           23262 |           46621 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2287 |          1349 |        5137 |        6048 |       4387691 |        2278284 |
| 2021-06-14 |    858072 |  17047 |    815622 |          340 |     77 |             24327 |             23162 |             39851 |             40213 |             58268 |             65179 |             56964 |             66788 |             63369 |             79203 |             55969 |             70924 |             41761 |             45516 |             26543 |             29765 |           23256 |           46607 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1349 |        5136 |        6058 |       4330244 |        2242562 |
| 2021-06-13 |    857447 |  17047 |    815342 |          325 |     82 |             24307 |             23144 |             39803 |             40180 |             58216 |             65112 |             56920 |             66726 |             63303 |             79149 |             55944 |             70881 |             41739 |             45492 |             26532 |             29756 |           23251 |           46592 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1349 |        5136 |        6058 |       4308544 |        2236492 |
| 2021-06-12 |    856740 |  17045 |    815094 |          300 |     77 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       4243537 |        2230476 |
| 2021-06-11 |    855951 |  17044 |    814318 |          306 |     72 |             24246 |             23089 |             39717 |             40082 |             58076 |             64939 |             56801 |             66619 |             63161 |             79012 |             55874 |             70788 |             41686 |             45419 |             26504 |             29741 |           23234 |           46564 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1349 |        5135 |        6056 |       4212783 |        2204786 |
| 2021-06-10 |    855432 |  17043 |    814023 |          295 |     72 |             24228 |             23704 |             39681 |             40051 |             58018 |             64874 |             56761 |             66574 |             63126 |             78962 |             55840 |             70767 |             41668 |             45407 |             26496 |             29731 |           23230 |           46553 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1348 |        5135 |        6056 |       4138665 |        2166515 |
| 2021-06-09 |    854522 |  17037 |    813489 |          307 |     70 |             24183 |             23048 |             39614 |             39984 |             57939 |             64778 |             56704 |             66493 |             63044 |             78874 |             55790 |             70708 |             41631 |             45380 |             26488 |             29721 |           23221 |           46529 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1071 |           464 |          2286 |          1346 |        5133 |        6055 |       4073288 |        2132575 |
| 2021-06-08 |    853632 |  17037 |    812964 |          296 |     66 |             24147 |             23020 |             39559 |             39926 |             57863 |             64704 |             56620 |             66412 |             62959 |             78792 |             55735 |             70645 |             41607 |             45353 |             26465 |             29709 |           23213 |           46515 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1071 |           464 |          2286 |          1346 |        5133 |        6055 |       4011686 |        2098674 |
| 2021-06-07 |    853034 |  17036 |    812174 |          291 |     59 |             24133 |             22998 |             39532 |             39908 |             57787 |             64659 |             56546 |             66377 |             62895 |             78729 |             55706 |             70609 |             41576 |             45334 |             26453 |             29693 |           23206 |           46503 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1070 |           464 |          2286 |          1346 |        5133 |        6055 |       3958681 |        2047464 |
| 2021-06-06 |    852646 |  17034 |    811897 |          265 |     52 |             24123 |             22990 |             39501 |             39890 |             57766 |             64628 |             56500 |             66336 |             62857 |             78704 |             55689 |             70570 |             41562 |             45313 |             26448 |             29695 |           23196 |           46493 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           133 |          1069 |           464 |          2286 |          1346 |        5133 |        6055 |       3938442 |        2025651 |
| 2021-06-05 |    852034 |  17032 |    811640 |          265 |     51 |             24097 |             22967 |             39460 |             39849 |             57723 |             64586 |             56444 |             66275 |             62792 |             78654 |             55665 |             70527 |             41528 |             45290 |             26446 |             29685 |           23185 |           46481 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           132 |          1069 |           464 |          2286 |          1346 |        5132 |        6055 |       3902612 |        1980551 |
| 2021-06-04 |    851461 |  17029 |    810959 |          267 |     53 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       3853565 |        1938925 |
| 2021-06-03 |    851031 |  17029 |    810659 |          254 |     52 |             24062 |             22952 |             39407 |             39794 |             57618 |             64497 |             56351 |             66193 |             62694 |             78582 |             55593 |             70470 |             41495 |             45235 |             26413 |             29661 |           23173 |           46463 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           132 |          1069 |           464 |          2286 |          1344 |        5131 |        6055 |       3811706 |        1909140 |
| 2021-06-02 |    850262 |  17026 |    810271 |          264 |     53 |             24044 |             22931 |             39351 |             39736 |             57539 |             64428 |             56271 |             66145 |             62630 |             78508 |             55550 |             70419 |             41464 |             45212 |             26398 |             29640 |           23166 |           46455 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           333 |           132 |          1069 |           463 |          2286 |          1343 |        5131 |        6055 |       3758516 |        1872849 |
| 2021-06-01 |    849538 |  17025 |    809813 |          268 |     50 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       3716876 |        1825733 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-06-18 | 1 298     |                  11.474 |     0.002 |       0.001 |     0.002 |       0.003 |     0.016 |       0.010 |     0.054 |       0.031 |     0.157 |       0.091 |     0.409 |       0.145 |     0.614 |       0.326 |     2.577 |       1.223 |   3.087 |     2.726 |
| 2021-06-17 | 1 233     |                  11.053 |     0.001 |       0.002 |     0.002 |       0.002 |     0.015 |       0.009 |     0.048 |       0.034 |     0.147 |       0.074 |     0.397 |       0.183 |     0.666 |       0.509 |     1.117 |       0.453 |   4.409 |     2.985 |
| 2021-06-16 | 1 350     |                  12.027 |     0.002 |       0.002 |     0.002 |       0.002 |     0.019 |       0.012 |     0.055 |       0.031 |     0.143 |       0.097 |     0.308 |       0.162 |     1.126 |       0.540 |     0.601 |       0.997 |   2.866 |     5.062 |
| 2021-06-15 | 973       |                   7.950 |     0.001 |       0.001 |     0.001 |       0.001 |     0.014 |       0.008 |     0.039 |       0.023 |     0.121 |       0.088 |     0.379 |       0.130 |     0.614 |       0.295 |     2.234 |       0.861 |   1.323 |     1.817 |
| 2021-06-14 | 625       |                   5.628 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.005 |     0.018 |       0.018 |     0.095 |       0.043 |     0.148 |       0.082 |     0.563 |       0.244 |     0.945 |       0.408 |   1.102 |     1.947 |
| 2021-06-13 | 707       |                  13.594 |     0.002 |       0.002 |     0.002 |       0.002 |     0.017 |       0.013 |     0.050 |       0.032 |     0.205 |       0.108 |     0.415 |       0.178 |     1.357 |       0.743 |     2.406 |       0.680 |   3.748 |     3.634 |
| 2021-06-11 | 519       |                   4.435 |     0.001 |       0.026 |     0.001 |       0.001 |     0.007 |       0.005 |     0.017 |       0.013 |     0.050 |       0.040 |     0.201 |       0.040 |     0.461 |       0.122 |     0.687 |       0.453 |   0.882 |     1.428 |
| 2021-06-10 | 910       |                   8.156 |     0.002 |       0.028 |     0.002 |       0.002 |     0.009 |       0.007 |     0.024 |       0.024 |     0.118 |       0.070 |     0.296 |       0.113 |     0.947 |       0.275 |     0.687 |       0.453 |   1.984 |     3.115 |
| 2021-06-09 | 890       |                   7.702 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.006 |     0.035 |       0.024 |     0.123 |       0.065 |     0.326 |       0.120 |     0.614 |       0.275 |     1.976 |       0.544 |   1.764 |     1.817 |
| 2021-06-08 | 598       |                   6.283 |     0.001 |       0.001 |     0.001 |       0.000 |     0.009 |       0.003 |     0.031 |       0.010 |     0.092 |       0.050 |     0.172 |       0.069 |     0.794 |       0.193 |     1.031 |       0.725 |   1.543 |     1.558 |
| 2021-06-07 | 388       |                   4.883 |     0.000 |       0.000 |     0.001 |       0.000 |     0.003 |       0.002 |     0.019 |       0.012 |     0.055 |       0.020 |     0.101 |       0.074 |     0.358 |       0.214 |     0.430 |       0.091 |   2.205 |     1.298 |
| 2021-06-06 | 612       |                   6.123 |     0.001 |       0.001 |     0.001 |       0.001 |     0.005 |       0.003 |     0.023 |       0.018 |     0.094 |       0.040 |     0.142 |       0.082 |     0.870 |       0.234 |     0.172 |       0.453 |   2.425 |     1.558 |
| 2021-06-05 | 573       |                  11.129 |     0.001 |       0.001 |     0.001 |       0.001 |     0.013 |       0.007 |     0.039 |       0.024 |     0.141 |       0.057 |     0.426 |       0.109 |     0.845 |       0.560 |     2.835 |       1.087 |   2.646 |     2.336 |
| 2021-06-03 | 769       |                   6.417 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.005 |     0.033 |       0.014 |     0.092 |       0.059 |     0.255 |       0.097 |     0.794 |       0.234 |     1.289 |       0.951 |   1.543 |     1.038 |
| 2021-06-02 | 724       |                  10.429 |     0.001 |       0.001 |     0.002 |       0.002 |     0.013 |       0.008 |     0.045 |       0.032 |     0.102 |       0.076 |     0.539 |       0.225 |     0.896 |       0.448 |     0.859 |       0.589 |   3.087 |     3.504 |
| 2021-05-31 | 435       |                  10.792 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.007 |     0.034 |       0.018 |     0.071 |       0.059 |     0.533 |       0.092 |     0.589 |       0.336 |     2.406 |       1.042 |   2.866 |     2.726 |
| 2021-05-29 | 609       |                   5.842 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.025 |       0.013 |     0.081 |       0.048 |     0.231 |       0.074 |     0.845 |       0.173 |     0.773 |       0.725 |   1.543 |     1.298 |
| 2021-05-28 | 598       |                   5.946 |     0.000 |       0.000 |     0.001 |       0.001 |     0.005 |       0.004 |     0.026 |       0.014 |     0.074 |       0.047 |     0.267 |       0.113 |     0.358 |       0.204 |     1.804 |       0.317 |   1.543 |     1.168 |
| 2021-05-27 | 572       |                   7.991 |     0.001 |       0.000 |     0.001 |       0.001 |     0.006 |       0.004 |     0.023 |       0.011 |     0.062 |       0.039 |     0.201 |       0.107 |     0.845 |       0.234 |     0.430 |       0.408 |   1.984 |     3.634 |
| 2021-05-26 | 594       |                   5.879 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.004 |     0.027 |       0.012 |     0.061 |       0.037 |     0.249 |       0.107 |     0.768 |       0.224 |     0.430 |       0.498 |   1.764 |     1.687 |
