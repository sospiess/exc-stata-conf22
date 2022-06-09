version 17
log close _all
clear all


use "../data/covid19_eu-ch-uk_monthly-ts.dta"


**# Plot Country Trends
*======================
xtline cases_confirmed, ///
    ytitle("Confirmed cases")  ylabel(0 (5000000) 30000000, angle(0)) /// 
    xtitle(Time)  ///
    // note("EU countries plus Switzerland and United Kingdom" "Source: John Hopkins")
    
    
graph save "../images/total-countries-2022-04.svg", replace

    

    
**# Country Ranking
*==================

**## Top 5 most cases
*--------------------
gsort - year - month - cases_confirmed
list country in 1/5, clean noobs    


**## Top 5 least cases
*--------------------    
gsort - year - month + cases_confirmed
list country in 1/5, clean noobs    

