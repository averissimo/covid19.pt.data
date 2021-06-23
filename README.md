COVID-19 Portugal data
================

> R package with latest data scrapped from official sources *(last data
> from Wednesday, June 23, 2021)*

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
| 2021-06-23 |      1497 |      3 |       860 |          -13 |     -1 |         55172 |          51448 |                59 |                50 |               124 |                84 |               182 |               164 |               132 |               136 |               125 |               124 |                79 |                87 |                32 |                48 |                19 |                19 |              16 |              18 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             1 |             0 |             0 |             0 |             0 |             0 |           1 |           1 |
| 2021-06-22 |      1020 |      6 |      1293 |            7 |      4 |         15514 |          15597 |                23 |                39 |                76 |                64 |               106 |               120 |                88 |                84 |                88 |                86 |                48 |                65 |                24 |                31 |                19 |                22 |              16 |              15 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |             1 |           3 |           0 |
| 2021-06-21 |       756 |      3 |       393 |           38 |      0 |         58213 |          40697 |                24 |                19 |                67 |                48 |                92 |                79 |                47 |                47 |                65 |                65 |                50 |                42 |                23 |                22 |                25 |                21 |               8 |               7 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             0 |             2 |           1 |           0 |
| 2021-06-20 |       941 |      3 |       364 |           16 |     -2 |         47359 |          91118 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |
| 2021-06-19 |      1183 |      1 |       884 |           -2 |      5 |         23397 |          27448 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |

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

| date       | confirmed | deaths | recovered | hospitalized | in.icu | confirmed m 00-09 | confirmed w 00-09 | confirmed m 10-19 | confirmed w 10-19 | confirmed m 20-29 | confirmed w 20-29 | confirmed m 30-39 | confirmed w 30-39 | confirmed m 40-49 | confirmed w 40-49 | confirmed m 50-59 | confirmed w 50-59 | confirmed m 60-69 | confirmed w 60-69 | confirmed m 70-79 | confirmed w 70-79 | confirmed m 80+ | confirmed w 80+ | death m 00-09 | death w 00-09 | death m 10-19 | death w 10-19 | death m 20-29 | death w 20-29 | death m 30-39 | death w 30-39 | death m 40-49 | death w 40-49 | death m 50-59 | death w 50-59 | death m 60-69 | death w 60-69 | death m 70-79 | death w 70-79 | death m 80+ | death w 80+ | first vaccine | second vaccine |
|:-----------|----------:|-------:|----------:|-------------:|-------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|------------------:|----------------:|----------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|--------------:|------------:|------------:|--------------:|---------------:|
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
| 2021-06-11 |    855951 |  17044 |    814318 |          306 |     72 |             24246 |             23089 |             39717 |             40082 |             58076 |             64939 |             56801 |             66619 |             63161 |             79012 |             55874 |             70788 |             41686 |             45419 |             26504 |             29741 |           23234 |           46564 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1349 |        5135 |        6056 |       4212783 |        2204786 |
| 2021-06-10 |    855432 |  17043 |    814023 |          295 |     72 |             24228 |             23704 |             39681 |             40051 |             58018 |             64874 |             56761 |             66574 |             63126 |             78962 |             55840 |             70767 |             41668 |             45407 |             26496 |             29731 |           23230 |           46553 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1072 |           464 |          2286 |          1348 |        5135 |        6056 |       4138665 |        2166515 |
| 2021-06-09 |    854522 |  17037 |    813489 |          307 |     70 |             24183 |             23048 |             39614 |             39984 |             57939 |             64778 |             56704 |             66493 |             63044 |             78874 |             55790 |             70708 |             41631 |             45380 |             26488 |             29721 |           23221 |           46529 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1071 |           464 |          2286 |          1346 |        5133 |        6055 |       4073288 |        2132575 |
| 2021-06-08 |    853632 |  17037 |    812964 |          296 |     66 |             24147 |             23020 |             39559 |             39926 |             57863 |             64704 |             56620 |             66412 |             62959 |             78792 |             55735 |             70645 |             41607 |             45353 |             26465 |             29709 |           23213 |           46515 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1071 |           464 |          2286 |          1346 |        5133 |        6055 |       4011686 |        2098674 |
| 2021-06-07 |    853034 |  17036 |    812174 |          291 |     59 |             24133 |             22998 |             39532 |             39908 |             57787 |             64659 |             56546 |             66377 |             62895 |             78729 |             55706 |             70609 |             41576 |             45334 |             26453 |             29693 |           23206 |           46503 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           134 |          1070 |           464 |          2286 |          1346 |        5133 |        6055 |       3958681 |        2047464 |
| 2021-06-06 |    852646 |  17034 |    811897 |          265 |     52 |             24123 |             22990 |             39501 |             39890 |             57766 |             64628 |             56500 |             66336 |             62857 |             78704 |             55689 |             70570 |             41562 |             45313 |             26448 |             29695 |           23196 |           46493 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           133 |          1069 |           464 |          2286 |          1346 |        5133 |        6055 |       3938442 |        2025651 |
| 2021-06-05 |    852034 |  17032 |    811640 |          265 |     51 |             24097 |             22967 |             39460 |             39849 |             57723 |             64586 |             56444 |             66275 |             62792 |             78654 |             55665 |             70527 |             41528 |             45290 |             26446 |             29685 |           23185 |           46481 |             1 |             1 |             1 |             1 |             7 |             5 |            24 |            20 |            92 |            63 |           333 |           132 |          1069 |           464 |          2286 |          1346 |        5132 |        6055 |       3902612 |        1980551 |
| 2021-06-04 |    851461 |  17029 |    810959 |          267 |     53 |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |                NA |              NA |              NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |            NA |          NA |          NA |       3853565 |        1938925 |

## Future deaths prediction

Based on the daily new confirmed cases and current *‘mortality rate’*
per age group *(see plots above)*

*Only shows last 20 days*

| date       | confirmed | predicted future deaths | 00-09 men | 00-09 women | 10-19 men | 10-19 women | 20-29 men | 20-29 women | 30-39 men | 30-39 women | 40-49 men | 40-49 women | 50-59 men | 50-59 women | 60-69 men | 60-69 women | 70-79 men | 70-79 women | 80+ men | 80+ women |
|:-----------|:----------|------------------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|----------:|------------:|--------:|----------:|
| 2021-06-23 | 1 497     |                  10.692 |     0.002 |       0.002 |     0.003 |       0.002 |     0.021 |       0.012 |     0.055 |       0.040 |     0.179 |       0.098 |     0.467 |       0.165 |     0.816 |       0.487 |     1.627 |       0.860 |   3.521 |     2.335 |
| 2021-06-22 | 1 020     |                   9.708 |     0.001 |       0.002 |     0.002 |       0.002 |     0.012 |       0.009 |     0.037 |       0.025 |     0.126 |       0.068 |     0.284 |       0.124 |     0.612 |       0.314 |     1.627 |       0.996 |   3.521 |     1.946 |
| 2021-06-21 | 756       |                   7.146 |     0.001 |       0.001 |     0.002 |       0.001 |     0.011 |       0.006 |     0.020 |       0.014 |     0.093 |       0.051 |     0.296 |       0.080 |     0.587 |       0.223 |     2.141 |       0.950 |   1.761 |     0.908 |
| 2021-06-20 | 941       |                  17.748 |     0.004 |       0.004 |     0.004 |       0.004 |     0.023 |       0.021 |     0.061 |       0.049 |     0.235 |       0.125 |     0.638 |       0.249 |     1.505 |       0.771 |     3.512 |       1.539 |   5.502 |     3.502 |
| 2021-06-18 | 1 298     |                  11.448 |     0.002 |       0.001 |     0.002 |       0.003 |     0.015 |       0.010 |     0.054 |       0.030 |     0.156 |       0.090 |     0.408 |       0.144 |     0.612 |       0.324 |     2.570 |       1.222 |   3.081 |     2.724 |
| 2021-06-17 | 1 233     |                  11.030 |     0.001 |       0.002 |     0.002 |       0.002 |     0.015 |       0.009 |     0.047 |       0.033 |     0.146 |       0.074 |     0.396 |       0.182 |     0.663 |       0.507 |     1.114 |       0.453 |   4.401 |     2.983 |
| 2021-06-16 | 1 350     |                  12.007 |     0.002 |       0.002 |     0.002 |       0.002 |     0.019 |       0.012 |     0.054 |       0.030 |     0.142 |       0.097 |     0.307 |       0.162 |     1.123 |       0.537 |     0.600 |       0.996 |   2.861 |     5.059 |
| 2021-06-15 | 973       |                   7.930 |     0.001 |       0.001 |     0.001 |       0.001 |     0.013 |       0.008 |     0.039 |       0.023 |     0.120 |       0.087 |     0.378 |       0.129 |     0.612 |       0.294 |     2.227 |       0.860 |   1.320 |     1.816 |
| 2021-06-14 | 625       |                   5.617 |     0.001 |       0.001 |     0.001 |       0.001 |     0.006 |       0.005 |     0.018 |       0.018 |     0.095 |       0.042 |     0.148 |       0.082 |     0.561 |       0.243 |     0.942 |       0.407 |   1.100 |     1.946 |
| 2021-06-13 | 707       |                  13.563 |     0.002 |       0.002 |     0.002 |       0.002 |     0.017 |       0.013 |     0.049 |       0.032 |     0.203 |       0.108 |     0.414 |       0.177 |     1.352 |       0.740 |     2.398 |       0.679 |   3.741 |     3.632 |
| 2021-06-11 | 519       |                   4.427 |     0.001 |       0.026 |     0.001 |       0.001 |     0.007 |       0.005 |     0.017 |       0.013 |     0.050 |       0.039 |     0.201 |       0.040 |     0.459 |       0.122 |     0.685 |       0.453 |   0.880 |     1.427 |
| 2021-06-10 | 910       |                   8.142 |     0.002 |       0.028 |     0.002 |       0.002 |     0.009 |       0.007 |     0.024 |       0.024 |     0.117 |       0.069 |     0.296 |       0.112 |     0.944 |       0.274 |     0.685 |       0.453 |   1.981 |     3.113 |
| 2021-06-09 | 890       |                   7.686 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.006 |     0.035 |       0.024 |     0.122 |       0.065 |     0.325 |       0.120 |     0.612 |       0.274 |     1.970 |       0.543 |   1.761 |     1.816 |
| 2021-06-08 | 598       |                   6.271 |     0.001 |       0.001 |     0.001 |       0.000 |     0.009 |       0.003 |     0.031 |       0.010 |     0.092 |       0.050 |     0.171 |       0.068 |     0.791 |       0.193 |     1.028 |       0.724 |   1.541 |     1.557 |
| 2021-06-07 | 388       |                   4.871 |     0.000 |       0.000 |     0.001 |       0.000 |     0.002 |       0.002 |     0.019 |       0.012 |     0.054 |       0.020 |     0.100 |       0.074 |     0.357 |       0.213 |     0.428 |       0.091 |   2.201 |     1.297 |
| 2021-06-06 | 612       |                   6.111 |     0.001 |       0.001 |     0.001 |       0.001 |     0.005 |       0.003 |     0.023 |       0.018 |     0.093 |       0.039 |     0.142 |       0.082 |     0.867 |       0.233 |     0.171 |       0.453 |   2.421 |     1.557 |
| 2021-06-05 | 573       |                  11.106 |     0.001 |       0.001 |     0.001 |       0.001 |     0.012 |       0.007 |     0.039 |       0.024 |     0.140 |       0.057 |     0.426 |       0.108 |     0.842 |       0.558 |     2.827 |       1.086 |   2.641 |     2.335 |
| 2021-06-03 | 769       |                   6.404 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.005 |     0.033 |       0.014 |     0.092 |       0.058 |     0.254 |       0.097 |     0.791 |       0.233 |     1.285 |       0.950 |   1.541 |     1.038 |
| 2021-06-02 | 724       |                  10.410 |     0.001 |       0.001 |     0.002 |       0.002 |     0.013 |       0.008 |     0.044 |       0.032 |     0.102 |       0.076 |     0.538 |       0.224 |     0.893 |       0.446 |     0.857 |       0.588 |   3.081 |     3.502 |
| 2021-05-31 | 435       |                  10.769 |     0.001 |       0.001 |     0.001 |       0.001 |     0.009 |       0.007 |     0.034 |       0.018 |     0.070 |       0.058 |     0.532 |       0.091 |     0.587 |       0.335 |     2.398 |       1.041 |   2.861 |     2.724 |
