# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).




## [Unreleased]
_n/a_  




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
