version 17
log close _all
clear all


**# Set Report Date
*==================
global v  = "1.1.0"   // 2022-06-20, by: Sven Spieß
global yy = 22
global mm = 04




***  MAKE NO CHANGES BELOW TO CREATE NEW REPORT  *******************************
***  INSTEAD ADJUST GLOBALS ABOVE  *********************************************




log using "../logs/make-report 20${yy}-${mm}.smcl", replace

di "{txt}Do-file version: $v"
set scheme s1color

use "../data/covid19_eu-ch-uk_monthly-ts.dta"
local begin = monthly("$yy $mm", "YM", 2099)-5  // restrict to 6 months range
local end   = monthly("$yy $mm", "YM", 2099)    // no months after end date
keep if date >= `begin'
drop if date >  `end'
format %tmn-Y date




**# Plot Country Trends
*======================
xtline cases_confirmed, ///
    ytitle("Confirmed cases")  ylabel(0 (20000000) 40000000, angle(0)) ///
    ytick(0 (10000000) 40000000, grid gmax) ///
    xtitle("Month (end)") xlabel(`=`begin'+1'(2)`end', gmax) xtick(#6, grid gmin gmax)  ///
    lwidth(*1.5)  ///
    plotregion(margin(b = 0))  ///
    byopts( ///
        title("Development of Confirmed COVID-19 Cases", span) ///
        note("EU countries plus Switzerland and United Kingdom. Source: John Hopkins"))


graph export "../images/total-countries-20${yy}-${mm}.svg", replace




**# Country Ranking
*==================

label variable country "Country"
label variable cases_confirmed  "Confirmed Cases (total)"


**## Top 5 most cases
*--------------------
gsort - year - month - cases_confirmed
list country cases_confirmed in 1/5, clean noobs


**## Top 5 least cases
*--------------------
gsort - year - month + cases_confirmed
list country cases_confirmed in 1/5, clean noobs




**## Create dynamic document
*===========================
dyndoc "../templates/_template-COVID-brief.domd" $yy $mm,  ///
    saving(../reports/COVID-brief 20${yy}-${mm}.html) replace  ///
    embedimage

capture erase "../images/total-countries.png"




********************************************************************************
log close
exit
