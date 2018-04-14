# stlData v2.1.0.9000
The `stlData` package is now part of the `stl-openGIS` project and organization!

## major
* Renamed all data tables in package
* Stored non-geometric data as tibbles
* Stored geometric data as simple features
* Added census tract simple feature
* Added `stl_as_sf()` function for converting some tibbles to `sf` objects - this requires additional dependencies since `sf` is a suggested and not required package

## minor
* Added a `NEWS.md` file to track changes to the package.
* Updates to `README` to reflect changes
* Added `.github` directory with guidance for contributing, updated the code of conduct document
* Updated the `LICENSE` file but text remains the same

# stlData v1.4.0
* add simple features objects

# stlData v1.3.0
This update to the Shaw version of the stlData package adds a table stlIncome designed for teaching reshaping data from wide to long (and vice versa) as well as dependent samples t tests.

# stlData v1.1.0
This is a minor update to the initial v1 Shaw release. It adds come clarity to the README file and adds support for Travis-CI and Appveyor.

# stlData v1.0.0
This is the initial full release of the stlData package, which currently contains five data sets focused on the City of St. Louis.
