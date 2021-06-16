COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Wednesday, June 16, 2021)*

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
| 2021-06-16 |      1350 |      6 |       589 |            5 |      4 |         50717 |          51701 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-15 |       973 |      2 |       881 |            6 |      2 |         57447 |          35722 |                25 |                18 |                52 |                46 |               114 |               103 |                93 |                78 |                84 |               111 |                64 |                68 |                24 |                29 |                26 |                19 |               6 |              14 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |           1 |         -10 |
| 2021-06-14 |       625 |      0 |       280 |           15 |     -5 |         21700 |           6070 |                20 |                18 |                48 |                33 |                52 |                67 |                44 |                62 |                66 |                54 |                25 |                43 |                22 |                24 |                11 |                 9 |               5 |              15 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |           0 |           0 |
| 2021-06-13 |       707 |      2 |       248 |           25 |      5 |         65007 |           6016 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-12 |       789 |      1 |       776 |           -6 |      5 |         30754 |          25690 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |

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
| 2021-06-16 |    860395 |  17055 |    817092 |          351 |     83 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       4438408 |        2329985 |
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
| 2021-05-31 |    849093 |  17025 |    809135 |          283 |     52 |             24018 |             22906 |             39270 |             39651 |             57431 |             64327 |             56164 |             66036 |             62559 |             78412 |             55459 |             70301 |             41429 |             45168 |             26388 |             29627 |           23152 |           46428 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           332 |           132 |          1069 |           463 |          2286 |          1343 |        5131 |        6055 |       3684821 |        1787668 |
| 2021-05-30 |    848658 |  17023 |    808813 |          271 |     54 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |            NA |             NA |
| 2021-05-29 |    848213 |  17023 |    808557 |          244 |     49 |             23983 |             22891 |             39212 |             39594 |             57353 |             64233 |             56083 |             65974 |             62510 |             78338 |             55369 |             70253 |             41406 |             45135 |             26360 |             29604 |           23139 |           46407 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           332 |           132 |          1068 |           463 |          2286 |          1343 |        5131 |        6054 |            NA |             NA |
| 2021-05-28 |    847604 |  17023 |    808047 |          246 |     52 |             23969 |             22877 |             39174 |             39545 |             57301 |             64190 |             56023 |             65929 |             62454 |             78277 |             55330 |             70214 |             41373 |             45118 |             26351 |             29588 |           23132 |           46397 |             1 |             1 |             1 |             1 |             7 |             5 |            23 |            20 |            92 |            63 |           332 |           132 |          1068 |           463 |          2286 |          1343 |        5131 |        6054 |       3666216 |        1776366 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-06-15 | 973       |                   7.957 |     0.001 |       0.001 |     0.001 |       0.001 |     0.014 |       0.008 |     0.039 |       0.023 |     0.122 |       0.088 |     0.380 |       0.128 |     0.616 |       0.295 |     2.238 |       0.861 |   1.325 |     1.816 |
| 2021-06-14 | 625       |                   5.636 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.005 |     0.019 |       0.019 |     0.096 |       0.043 |     0.149 |       0.081 |     0.564 |       0.245 |     0.947 |       0.408 |   1.104 |     1.946 |
| 2021-06-13 | 707       |                  13.607 |     0.003 |       0.002 |     0.002 |       0.002 |     0.017 |       0.013 |     0.050 |       0.032 |     0.206 |       0.109 |     0.416 |       0.176 |     1.360 |       0.744 |     2.410 |       0.679 |   3.754 |     3.632 |
| 2021-06-11 | 519       |                   4.441 |     0.001 |       0.027 |     0.001 |       0.001 |     0.007 |       0.005 |     0.017 |       0.013 |     0.051 |       0.040 |     0.202 |       0.040 |     0.462 |       0.122 |     0.689 |       0.453 |   0.883 |     1.427 |
| 2021-06-10 | 910       |                   8.161 |     0.002 |       0.028 |     0.002 |       0.002 |     0.009 |       0.007 |     0.024 |       0.024 |     0.119 |       0.070 |     0.297 |       0.111 |     0.949 |       0.275 |     0.689 |       0.453 |   1.987 |     3.113 |
| 2021-06-09 | 890       |                   7.710 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.006 |     0.035 |       0.024 |     0.123 |       0.065 |     0.327 |       0.119 |     0.616 |       0.275 |     1.980 |       0.544 |   1.767 |     1.816 |
| 2021-06-08 | 598       |                   6.289 |     0.001 |       0.001 |     0.001 |       0.000 |     0.009 |       0.003 |     0.031 |       0.010 |     0.093 |       0.050 |     0.172 |       0.068 |     0.795 |       0.194 |     1.033 |       0.725 |   1.546 |     1.557 |
| 2021-06-07 | 388       |                   4.886 |     0.000 |       0.000 |     0.001 |       0.000 |     0.003 |       0.002 |     0.019 |       0.012 |     0.055 |       0.020 |     0.101 |       0.074 |     0.359 |       0.214 |     0.430 |       0.091 |   2.208 |     1.297 |
| 2021-06-06 | 612       |                   6.129 |     0.001 |       0.001 |     0.001 |       0.001 |     0.005 |       0.003 |     0.024 |       0.018 |     0.094 |       0.040 |     0.143 |       0.081 |     0.872 |       0.234 |     0.172 |       0.453 |   2.429 |     1.557 |
| 2021-06-05 | 573       |                  11.143 |     0.001 |       0.001 |     0.001 |       0.001 |     0.013 |       0.007 |     0.039 |       0.025 |     0.142 |       0.057 |     0.428 |       0.108 |     0.847 |       0.560 |     2.841 |       1.087 |   2.650 |     2.335 |
| 2021-06-03 | 769       |                   6.425 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.005 |     0.034 |       0.014 |     0.093 |       0.059 |     0.256 |       0.096 |     0.795 |       0.234 |     1.291 |       0.951 |   1.546 |     1.038 |
| 2021-06-02 | 724       |                  10.439 |     0.001 |       0.001 |     0.002 |       0.002 |     0.013 |       0.008 |     0.045 |       0.033 |     0.103 |       0.076 |     0.541 |       0.223 |     0.898 |       0.448 |     0.861 |       0.589 |   3.092 |     3.503 |
| 2021-05-31 | 435       |                  10.802 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.007 |     0.034 |       0.019 |     0.071 |       0.059 |     0.535 |       0.091 |     0.590 |       0.336 |     2.410 |       1.042 |   2.871 |     2.724 |
| 2021-05-29 | 609       |                   5.849 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.003 |     0.025 |       0.013 |     0.081 |       0.048 |     0.232 |       0.074 |     0.847 |       0.173 |     0.775 |       0.725 |   1.546 |     1.297 |
| 2021-05-28 | 598       |                   5.953 |     0.000 |       0.000 |     0.001 |       0.001 |     0.005 |       0.004 |     0.026 |       0.014 |     0.074 |       0.048 |     0.267 |       0.111 |     0.359 |       0.204 |     1.808 |       0.317 |   1.546 |     1.168 |
| 2021-05-27 | 572       |                   7.994 |     0.001 |       0.000 |     0.001 |       0.001 |     0.006 |       0.004 |     0.023 |       0.011 |     0.062 |       0.039 |     0.202 |       0.106 |     0.847 |       0.234 |     0.430 |       0.408 |   1.987 |     3.632 |
| 2021-05-26 | 594       |                   5.883 |     0.001 |       0.001 |     0.001 |       0.001 |     0.007 |       0.004 |     0.027 |       0.012 |     0.061 |       0.037 |     0.250 |       0.106 |     0.770 |       0.224 |     0.430 |       0.498 |   1.767 |     1.686 |
| 2021-05-25 | 375       |                   5.994 |     0.000 |       0.000 |     0.001 |       0.000 |     0.004 |       0.002 |     0.019 |       0.011 |     0.038 |       0.032 |     0.178 |       0.059 |     0.257 |       0.143 |     0.344 |       0.272 |   2.429 |     2.205 |
| 2021-05-24 | 241       |                   4.231 |     0.000 |       0.000 |     0.000 |       0.000 |     0.002 |       0.001 |     0.004 |       0.005 |     0.035 |       0.026 |     0.149 |       0.015 |     0.487 |       0.234 |     0.516 |       0.317 |   0.883 |     1.557 |
| 2021-05-23 | 413       |                   5.053 |     0.001 |       0.000 |     0.000 |       0.001 |     0.004 |       0.004 |     0.015 |       0.009 |     0.048 |       0.014 |     0.107 |       0.060 |     0.641 |       0.295 |     0.947 |       0.544 |   1.325 |     1.038 |
