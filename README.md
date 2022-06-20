# Exercise Workshop "_Taking a page from Git: Reproducible research and dynamic documents with Stata_ "

– Pre-Conference Workshop at the [2022 German Stata Conference](https://www.stata.com/meeting/germany22/) in Frankfurt (Main) –


## Description
This repository contains a sample solution to the exercise for creating (very) basic dynamic monthly reports for the COVID-19 pandemic in the EU. This corresponding workshop material is available its GitHub page [&lt;here&gt;](https://sospiess.github.io/stata-gitintro22/slides).


## Usage notes
Execute the do-file `code/make-report.do` to create (dynamic) reports. Select year and month of the report with the two respective global macros `yy` and `mm` at the top of the do file:
```
**# Set Report Date
*==================
global v  = "1.1.0"   // 2022-06-20, by: Sven Spieß
global yy = 22
global mm = 04
```


---

## Sources and license information
Data for this excercise is derived from the time series data of confirmed global cases from the:  
_COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University_ (JHU CSSE COVID-19 Data), available under a Creative Commons Attribution 4.0 International (CC BY 4.0) license from: https://github.com/CSSEGISandData/COVID-19.

Unless otherwise mentioned, all material in this repository is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0). Copyright 2022 by Sven O. Spieß
