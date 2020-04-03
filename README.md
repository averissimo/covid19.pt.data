COVID-19 Portugal data
================

> R package with latest data scrapped from official sources

It downloads the [daily
report](https://covid19.min-saude.pt/relatorio-de-situacao/) from DGS
and stores this in data-friendly format under `/data` directory.

## Check for new reports

``` r
dat <- download.updated.pt()

dgs.pt.new     <- dat$dgs.pt
covid19.pt.new <- dat$cdc.eu
```

## Stores in the package

``` r
# DGS PT
if (nrow(dgs.pt.new) != nrow(dgs.pt)) {
  dgs.pt <- dgs.pt.new
  usethis::use_data(dgs.pt, overwrite = TRUE)
  readr::write_csv(dgs.pt, path = '../data/dgs_pt.csv')
}

# EU CDC
covid19.pt <- tibble()
tryCatch(covid19.pt <- covid19.pt.data::covid19.pt, error = function(err) { })

if (nrow(covid19.pt.new) != nrow(covid19.pt)) {
  covid19.pt <- covid19.pt.new
  usethis::use_data(covid19.pt, overwrite = TRUE)
  readr::write_csv(covid19.pt, path = '../data/covid19_pt.csv')
}
```

## Data from DGS

    #> PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.

<!--html_preserve-->

<div id="htmlwidget-987a7af37f63396bed8e" class="datatables html-widget" style="width:100%;height:auto;">

</div>

<script type="application/json" data-for="htmlwidget-987a7af37f63396bed8e">{"x":{"filter":"none","data":[["1","2","3","4","5","6","7","8","9","10"],["Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal"],["2020-04-02","2020-04-01","2020-03-31","2020-03-30","2020-03-29","2020-03-28","2020-03-27","2020-03-26","2020-03-25","2020-03-24"],[9034,8251,7443,6408,5962,5170,4268,3544,2995,2362],[209,187,160,140,119,100,76,60,43,33],[68,43,43,43,43,43,43,43,22,22]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>country<\/th>\n      <th>date<\/th>\n      <th>confirmed<\/th>\n      <th>deaths<\/th>\n      <th>recoveries<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"columnDefs":[{"className":"dt-right","targets":[3,4,5]},{"orderable":false,"targets":0}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":[],"jsHooks":[]}</script>

<!--/html_preserve-->

## Data from EU CDC updated

``` r
covid19.pt.new %>% datatable()
```

<!--html_preserve-->

<div id="htmlwidget-dfc5f936da1a7a7d9ae2" class="datatables html-widget" style="width:100%;height:auto;">

</div>

<script type="application/json" data-for="htmlwidget-dfc5f936da1a7a7d9ae2">{"x":{"filter":"none","data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32"],["03/04/2020","02/04/2020","01/04/2020","31/03/2020","30/03/2020","29/03/2020","28/03/2020","27/03/2020","26/03/2020","25/03/2020","24/03/2020","23/03/2020","22/03/2020","21/03/2020","20/03/2020","19/03/2020","18/03/2020","17/03/2020","16/03/2020","15/03/2020","14/03/2020","13/03/2020","12/03/2020","11/03/2020","10/03/2020","09/03/2020","08/03/2020","07/03/2020","06/03/2020","05/03/2020","04/03/2020","03/03/2020"],[3,2,1,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3],[4,4,4,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020,2020],[783,808,1035,446,792,902,724,549,633,302,460,320,260,235,143,194,117,86,76,57,34,19,18,2,9,9,8,4,4,1,2,2],[22,27,20,21,19,24,16,17,10,10,9,2,6,3,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],["PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT","PRT"],["PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT","PT"],[10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762,10281762],[null,"Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal","Portugal"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>dateRep<\/th>\n      <th>day<\/th>\n      <th>month<\/th>\n      <th>year<\/th>\n      <th>cases<\/th>\n      <th>deaths<\/th>\n      <th>countryterritoryCode<\/th>\n      <th>geoId<\/th>\n      <th>popData2018<\/th>\n      <th>countriesAndTerritories<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"columnDefs":[{"className":"dt-right","targets":[2,3,4,5,6,9]},{"orderable":false,"targets":0}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":[],"jsHooks":[]}</script>

<!--/html_preserve-->
