
<!-- README.md is generated from README.Rmd. Please edit that file -->

# stldata <img src="man/figures/logo.png" align="right" />

[![lifecycle](https://img.shields.io/badge/lifecycle-questioning-blue.svg)](https://www.tidyverse.org/lifecycle/#questioning)
[![Travis-CI Build
Status](https://travis-ci.org/slu-openGIS/stldata.svg?branch=master)](https://travis-ci.org/slu-openGIS/stldata)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/slu-openGIS/stldata?branch=master&svg=true)](https://ci.appveyor.com/project/chris-prener/stldata)
[![Coverage
Status](https://img.shields.io/codecov/c/github/slu-openGIS/stldata/master.svg)](https://codecov.io/github/slu-openGIS/stldata?branch=master)
[![DOI](https://zenodo.org/badge/85344799.svg)](https://zenodo.org/badge/latestdoi/85344799)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/stldata)](https://cran.r-project.org/package=stldata)

The `stlData` package contains various data sets representing the City
of St. Louis. These data sets are primary designed for teaching
statistics, data science, and spatial data analysis using `R`.

## Important Lifecycle Update

As of **June 4, 2019,** this package has been moved to a [“questioning”
lifecycle stats](https://www.tidyverse.org/lifecycle/#questioning) -
some of its functionality has been shifted to the still-developing
[`gateway` package](https://github.com/slu-openGIS/gateway), while other
aspects are better handeled by teaching students to import raw data
sources. Development has therefore been suspended, with no current plans
to return to this package in the future.

## Installation

You can install `stldata` from
[Github](https://github.com/chris-prener/stlData) with:

``` r
devtools::install_github("slu-openGIS/stlData")
```

## Use with Simple Features

One goal of `stldata` is to provide accessible data for learning how to
manipulate and map simple features objects in `R`. However, the
installation of [`sf`](https://r-spatial.github.io/sf/) requires a
number of dependencies. To make `stldata` as accessible as possible,
`sf` is not required. If `sf` is not installed, only the data tables
listed below will be fully accessible and functional.

## Current Data

### Data Tables

The package currently contains eight data tables stored as tibbles with
quantitative data about the city:

  - `stl_tbl_asthma` - current asthma prevalence in 2014 by census tract
    via [Centers for Disease Control 500 Cities
    Project](https://www.cdc.gov/500cities/)
  - `stl_tbl_income` - 2010 and 2015 median income estimates via the
    American Community Survey, by census tract
  - `stl_tbl_insurance` - lack of health insurance in 2014 by census
    tract via [Centers for Disease Control 500 Cities
    Project](https://www.cdc.gov/500cities/)
  - `stl_tbl_lead` - blood lead level test result data from 2010-2015
    via
    [Reuters](http://www.reuters.com/investigates/special-report/usa-lead-testing/#interactive-lead)
    and 2015 5-year estimates for demographics (poverty and race) via
    the American Community Survey, by census tract
  - `stl_tbl_murders` - all murders between 2008 and 2016 via the
    St. Louis Metropolitan Police Department
  - `stl_tbl_sluPlaces` - a small number of locations at Saint Louis
    University
  - `stl_tbl_smoking` - current smoking in 2014 by census tract via
    [Centers for Disease Control 500 Cities
    Project](https://www.cdc.gov/500cities/)
  - `stl_tbl_water` - rivers and streams listed under the Clean Water
    Act via the [Missouri Spatial Data Information
    Service](http://msdis.missouri.edu)

### Simple Features Objects

The package contains four `sf` objects describing the City of St. Louis:

  - `stl_sf_boundary` - city boundary
  - `stl_sf_historic` - historic districts
  - `stl_sf_hydro` - Missouri side of the Mississippi River and the
    River Des Peres
  - `stl_sf_tracts` - 2016 census tracts

### Conversion of Tibbles to `sf` Objects

The following tibbles can be converted to `sf` objects using the
`stl_as_sf()` function:

  - `stl_tbl_asthma`
  - `stl_tbl_income`
  - `stl_tbl_insurance`
  - `stl_tbl_lead`
  - `stl_tbl_smoking`

Input tables should not be quoted when the `stl_as_sf()` function is
used:

``` r
asthma <- stl_as_sf(stl_tbl_asthma)
```

## Useage

### Basic Usage

Once the package is loaded, the data contained in `stldata` can be
assigned to data frames in your global environment and then explored.
For example, to load the `stl_tbl_asthma` data:

``` r
library("stldata")
asthma <- stl_tbl_asthma
str(asthma)
```

Additional examples and information are available in each table’s help
file. For example:

``` r
?stl_tbl_asthma
```

### Skill Building

The `stl_tbl_murders` and `stl_tbl_water` data have been created for
practicing data wrangling. The murder data can be used for working with
demographic data specifically, and the water data have both missing and
duplicate information. The `stl_tbl_sluPlaces` table is meant for
introducing basic mapping wither either `plot()`, `ggplot2`, or
`leaflet`. All of the tables excepting `stl_tbl_sluPlaces` contain count
or rate data suitable for plotting, and the data measured at the census
tract level can be use for practicing joins with demographic data from
`tidycensus`.

### Mapping with `sf`

If you have the [development version of
`ggplot2`](https://github.com/tidyverse/ggplot2), the `sf` objects in
the package can be mapped using the `geom_sf()` function:

``` r
ggplot() +
  geom_sf(data = stl_sf_boundary, fill = "#5d5d5d", color = "#5d5d5d") +
  geom_sf(data = stl_sf_historic, fill = "#d48a72", color = "#d48a72") +
  geom_sf(data = stl_sf_hydro, fill = "#72bcd4", color = "#72bcd4")  +
  labs(title = "Historic Districts", subtitle = "St. Louis, MO")
```

![](man/figures/refMap.png)

When the tibbles like `stl_tbl_asthma` are converted to `sf` objects,
they can be mapped as well:

``` r
asthma <- stl_as_sf(stl_tbl_asthma)

ggplot() +
  geom_sf(data = asthma, mapping = aes(fill = pctAsthma), color = "#5d5d5d") +
  scale_fill_viridis(name = "Percent") +
  labs(title = "Crude Asthma Prevalence", subtitle = "St. Louis, MO")
```

![](man/figures/asthmaMap.png)

## Contributor Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](.github/CODE_OF_CONDUCT.md). By participating in this project
you agree to abide by its terms.
