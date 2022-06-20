# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).




## [1.1.0] – 2022-06-20

### <i class="fa-solid fa-bug-slash"></i> ! ! ! Fixed
- country graphs were _saved_ in Stata .gph format with false .svg 
  extension; now correctly _exported_
<br>


### <i class="fa-solid fa-circle-plus"></i> +++ Added
- do file now also creates supplementary log file for every report 
  created

- date & version information to report template
<br>


### <i class="fa-solid fa-wrench"></i> * * * Changed
- year and month for reports not issued with `dyndoc` command but 
  set a (global) macros at beginning of do file for easier use and 
  maintainance

- graph scheme changed to `s1color` and improvements to graph like 
  titles, note on data source, etc.

- time range restricted to past six months before chosen date 
  instead full range available

- (temporary) graph to be embedded in reports (as PNG) automatically 
  deleted after creation

- minor visual and other improvements to report template; esp. list 
  of five top/bottom countries (now with `noheader` option)
<br>




## [1.0] – 2022-06-09

### <i class="fa-solid fa-circle-plus"></i> +++ Added
- set up project structure & repository  
  (and added empty `.gitkeep` files to currently empty directories to preserve consistent project structure)

- cleaned daily & monthly time-series data until April 2022 in Stata (.dta) format:  
  `data/covid19_eu-ch-uk_daily-ts.dta`, `data/covid19_eu-ch-uk_monthly-ts.dta`

- first version of report template [`templates/_template-COVID-brief`]

- Stata code to create dynamic reports [`code/make-report.do`]  
  specify arguments of `dyndoc` command to select respective report date in numeric format in order:
  1. YY
  2. MM

- documentation files, i.e., README and CHANGELOG
