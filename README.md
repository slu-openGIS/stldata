
<!-- README.md is generated from README.Rmd. Please edit that file -->
stlData <img src="man/figures/logo.png" align="right" />
========================================================

The `stlData` package contains various datasets representing the City of St. Louis. These datasets are primary designed for teaching statistics, data science, and spatial data analysis using `R`.

Installation
------------

You can install stlData from [Github](https://github.com/chris-prener/stlData) with:

``` r
# install.packages("devtools")
library(devtools)
devtools::install_github("chris-prener/stlData")
```

Current Data
------------

The package currently contains two data tables:

-   `stlAsmtha` - current asthma prevalence in 2014 by census tract via [Centers for Disease Control 500 Cities Project](https://www.cdc.gov/500cities/)
-   `stlInsurance` - lack of health insurance in 2014 by census tract via [Centers for Disease Control 500 Cities Project](https://www.cdc.gov/500cities/)
-   `stlLead` - blood lead level test result data from 2010-2015 via [Reuters](http://www.reuters.com/investigates/special-report/usa-lead-testing/#interactive-lead) and 2015 5-year estimates for demographics (poverty and race) via the American Community Survey, by census tract
-   `stlMurders` - all murders between 2008 and 2016 via the St. Louis Metropolitan Police Department
-   `stlSmoking` - current smoking in 2014 by census tract via [Centers for Disease Control 500 Cities Project](https://www.cdc.gov/500cities/)

Useage
------

Once loaded, the data contained in testDriveR can be loaded into data frames in your global environment and then explored. For example, to load the `asthma` data:

``` r
library("stlData")
asthma <- stlAsthma
str(asthma)
```

Additional examples and information are available in each table's help file. For example:

``` r
?stlAsthma
```

Future Data
-----------

I am currently working on a set of tables with educational outcomes by school for St. Louis City Public Schools.

If you have data about the City or the metro area that you would like to donate or variables you'd like to see added to a table, open up an issue on the package's [GitHub page](http://github.com/chris-prener/stlData/issues).

Contributor Code of Conduct
---------------------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
