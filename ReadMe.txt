miniCRAN.R creates CRAN-like repo for packages

but currently only works for source and windows

Need also macosx-el-capitan
...doesn't work for that, but there's a pull request that fixes the problem

To incorporate the qtl2 packages:

- compile both el-capitan and windows versions
- put the three forms of packages in the right places
- create the PACKAGE, PACKAGE.gz, and PACKAGE.rds files using tools::write_PACKAGES
