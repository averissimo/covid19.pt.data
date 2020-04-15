COVID-19 Portugal data
================

> R package with latest data scrapped from official sources

It downloads the [daily
report](https://covid19.min-saude.pt/relatorio-de-situacao/) from DGS
and stores this in data-friendly format under `/data` directory.

# Check for new reports

``` r
download.updated.pt()
```

## Data for Portugal

![](README_files/figure-gfm/unnamed-chunk-6-1.svg)<!-- -->

# New cases / deaths by age groups

(latest date)

``` r
age.data.new <- age.data %>% 
  mutate(value = abs(value)) %>% 
  group_by(country, type, gender, age_type) %>% 
  arrange(desc(date)) %>% 
  mutate(value = zoo::rollapply(value, 2, function(ix) { if(length(ix) <= 1) { return(ix) } else { ix[1] - sum(ix[-1]) } }, fill = c(0, 0, 0), align = 'left', partial = TRUE)) %>%
  filter(value > 0) %>% 
  mutate(value = if_else(gender == 'men', value * -1, value %>% as.double))

confirmed.max <- age.data.new %>% filter(age_type == 'confirmed') %>%  pull(value) %>% max
death.max <- age.data.new %>% filter(age_type == 'death') %>%  pull(value) %>% max

confi.dat <- age.data.new %>% 
  filter(date == max(date) & age_type == 'confirmed' & value != 0) %>% 
  mutate(label = if_else(value != 0, format(abs(value), big.mark = ','), NA_character_))

death.dat <- age.data.new %>% 
  filter(date == max(date) & age_type == 'death' & value != 0) %>% 
  mutate(label = if_else(value != 0, format(abs(value), big.mark = ','), NA_character_))

  print(confi.dat %>%
    ggplot(aes(x = value, y = type, fill = gender)) +
    geom_bar(stat = 'identity') + 
    ggrepel::geom_label_repel(aes(label = label, fill = gender), color = 'white', direction = 'x', seed = 1985, size = 3.5,
                              nudge_x = ifelse(confi.dat$gender == 'men', -1, 1),
                              show.legend = FALSE) +
    expand_limits(x =c(-1 * confirmed.max, confirmed.max)) +
    scale_x_continuous('', labels = function(ix) { return(abs(ix)) }) +
    scale_y_discrete(limits = age.data$type %>% unique %>% sort) + 
    scale_fill_viridis_d('', end = .8) + 
    labs(title = "Confirmed cases at {max(age.data.new$date)}" %>% glue,
         y = 'Age group',
         x = 'Confirmed Cases') +
    theme_minimal() + 
    theme(legend.position = 'bottom'))
```

![](README_files/figure-gfm/unnamed-chunk-7-1.svg)<!-- -->

``` r
  print(death.dat %>%
    ggplot(aes(x = value, y = type, fill = gender)) +
    geom_bar(stat = 'identity') + 
    ggrepel::geom_label_repel(aes(label = label, fill = gender), color = 'white', direction = 'x', seed = 1985, size = 3.5,
                              nudge_x = ifelse(death.dat$gender == 'men', -1, 1),
                              show.legend = FALSE) +
    expand_limits(x =c(-1 * death.max, death.max)) +
    scale_x_continuous('', labels = function(ix) { return(abs(ix)) }) +
    scale_y_discrete(limits = age.data$type %>% unique %>% sort) + 
    scale_fill_viridis_d(end = .8) + 
    labs(title = "Deaths at {max(age.data.new$date)}" %>% glue,
         y = 'Age group',
         x = 'Deaths') +
    theme_minimal() + 
    theme(legend.position = 'bottom'))
```

![](README_files/figure-gfm/unnamed-chunk-7-2.svg)<!-- -->

# Cases / Deaths by age groups

![](README_files/figure-gfm/unnamed-chunk-8-1.svg)<!-- -->![](README_files/figure-gfm/unnamed-chunk-8-2.svg)<!-- -->

# Data

## Data from DGS

Only showing last 10
days

| country  | date       | confirmed | deaths | recovered |  tests | hospitalized | in.icu | confirmed\_m\_00-09 | confirmed\_w\_00-09 | confirmed\_m\_10-19 | confirmed\_w\_10-19 | confirmed\_m\_20-29 | confirmed\_w\_20-29 | confirmed\_m\_30-39 | confirmed\_w\_30-39 | confirmed\_m\_40-49 | confirmed\_w\_40-49 | confirmed\_m\_50-59 | confirmed\_w\_50-59 | confirmed\_m\_60-69 | confirmed\_w\_60-69 | confirmed\_m\_70-79 | confirmed\_w\_70-79 | confirmed\_m\_80+ | confirmed\_w\_80+ | death\_m\_00-09 | death\_w\_00-09 | death\_m\_10-19 | death\_w\_10-19 | death\_m\_20-29 | death\_w\_20-29 | death\_m\_30-39 | death\_w\_30-39 | death\_m\_40-49 | death\_w\_40-49 | death\_m\_50-59 | death\_w\_50-59 | death\_m\_60-69 | death\_w\_60-69 | death\_m\_70-79 | death\_w\_70-79 | death\_m\_80+ | death\_w\_80+ |
| :------- | :--------- | --------: | -----: | --------: | -----: | -----------: | -----: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ------------------: | ----------------: | ----------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | --------------: | ------------: | ------------: |
| Portugal | 2020-04-15 |     18091 |    599 |       383 | 150804 |         1200 |    208 |                 151 |                 153 |                 220 |                 250 |                 754 |                1144 |                1049 |                1457 |                1221 |                1903 |                1243 |                1890 |                1030 |                1212 |                 833 |                 840 |               920 |              1821 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               2 |               5 |              13 |               5 |              39 |              19 |              76 |              49 |           173 |           218 |
| Portugal | 2020-04-14 |     17448 |    567 |       347 | 142514 |         1227 |    218 |                 143 |                 147 |                 210 |                 241 |                 726 |                1094 |                1025 |                1397 |                1176 |                1829 |                1211 |                1817 |                 995 |                1173 |                 802 |                 824 |               884 |              1754 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               2 |               5 |              13 |               5 |              39 |              17 |              71 |              45 |           162 |           208 |
| Portugal | 2020-04-13 |     16934 |    535 |       277 | 139184 |         1187 |    188 |                 137 |                 147 |                 206 |                 229 |                 704 |                1059 |                1010 |                1362 |                1159 |                1773 |                1180 |                1762 |                 986 |                1120 |                 784 |                 781 |               859 |              1676 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               5 |              13 |               4 |              37 |              16 |              68 |              43 |           154 |           194 |
| Portugal | 2020-04-12 |     16585 |    504 |       277 | 136243 |         1177 |    228 |                 136 |                 147 |                 201 |                 229 |                 681 |                1030 |                 995 |                1329 |                1143 |                1752 |                1163 |                1728 |                 972 |                1101 |                 767 |                 750 |               845 |              1616 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               4 |              13 |               3 |              35 |              13 |              68 |              40 |           147 |           180 |
| Portugal | 2020-04-11 |     15987 |    470 |       266 | 130300 |         1175 |    233 |                 133 |                 132 |                 191 |                 224 |                 657 |                 982 |                 966 |                1290 |                1116 |                1701 |                1127 |                1665 |                 945 |                1065 |                 746 |                 714 |               816 |              1517 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               3 |              13 |               3 |              35 |              13 |              62 |              38 |           141 |           161 |
| Portugal | 2020-04-10 |     15472 |    435 |       233 | 123564 |         1179 |    226 |                 126 |                 119 |                 186 |                 214 |                 649 |                 959 |                 954 |                1261 |                1094 |                1641 |                1093 |                1619 |                 924 |                1035 |                 724 |                 682 |               777 |              1415 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               3 |              10 |               2 |              31 |              12 |              57 |              35 |           133 |           151 |
| Portugal | 2020-04-09 |     13956 |    409 |       205 | 115158 |         1173 |    241 |                 105 |                 101 |                 161 |                 190 |                 598 |                 846 |                 872 |                1141 |                1000 |                1483 |                1005 |                1452 |                 842 |                 938 |                 676 |                 608 |               703 |              1235 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               3 |               8 |               2 |              30 |              12 |              54 |              34 |           126 |           139 |
| Portugal | 2020-04-08 |     13141 |    380 |       196 | 104886 |         1211 |    245 |                  97 |                  95 |                 148 |                 175 |                 567 |                 796 |                 831 |                1093 |                 957 |                1423 |                 966 |                1386 |                 814 |                 896 |                 658 |                 568 |               619 |              1052 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               3 |               8 |               2 |              26 |              12 |              53 |              34 |           116 |           125 |
| Portugal | 2020-04-07 |     12442 |    345 |       184 |  99730 |         1180 |    271 |                  92 |                  87 |                 140 |                 166 |                 538 |                 756 |                 797 |                1021 |                 901 |                1338 |                 920 |                1296 |                 769 |                 845 |                 629 |                 530 |               605 |              1012 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               3 |               7 |               2 |              25 |              10 |              50 |              28 |           105 |           114 |
| Portugal | 2020-04-06 |     11730 |    311 |       140 |  91794 |         1099 |    270 |                  87 |                  87 |                 130 |                 155 |                 507 |                 708 |                 768 |                 963 |                 860 |                1269 |                 883 |                1217 |                 733 |                 802 |                 599 |                 503 |               562 |               897 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               0 |               1 |               3 |               6 |               2 |              22 |               7 |              45 |              26 |           100 |            99 |

## Data from EU CDC updated

Only showing last 10
days

| dateRep    | day | month | year | cases | deaths | countriesAndTerritories | geoId | countryterritoryCode | popData2018 |
| :--------- | --: | ----: | ---: | ----: | -----: | :---------------------- | :---- | :------------------- | ----------: |
| 16/04/2020 |  16 |     4 | 2020 |   643 |     32 | Portugal                | PT    | PRT                  |    10281762 |
| 15/04/2020 |  15 |     4 | 2020 |   514 |     32 | Portugal                | PT    | PRT                  |    10281762 |
| 14/04/2020 |  14 |     4 | 2020 |   349 |     31 | Portugal                | PT    | PRT                  |    10281762 |
| 13/04/2020 |  13 |     4 | 2020 |   598 |     34 | Portugal                | PT    | PRT                  |    10281762 |
| 12/04/2020 |  12 |     4 | 2020 |   515 |     35 | Portugal                | PT    | PRT                  |    10281762 |
| 11/04/2020 |  11 |     4 | 2020 |  1516 |     26 | Portugal                | PT    | PRT                  |    10281762 |
| 10/04/2020 |  10 |     4 | 2020 |   815 |     29 | Portugal                | PT    | PRT                  |    10281762 |
| 09/04/2020 |   9 |     4 | 2020 |   699 |     35 | Portugal                | PT    | PRT                  |    10281762 |
| 08/04/2020 |   8 |     4 | 2020 |   712 |     34 | Portugal                | PT    | PRT                  |    10281762 |
| 07/04/2020 |   7 |     4 | 2020 |   452 |     16 | Portugal                | PT    | PRT                  |    10281762 |
