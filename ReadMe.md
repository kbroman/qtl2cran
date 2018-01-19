## qtl2cran mini-CRAN

Use the R package [miniCRAN](https://github.com/andrie/miniCRAN) to
set up a mini-CRAN for folks to download
[R/qtl2](http://kbroman.org/qtl2). Currently
[miniCRAN](https://github.com/andrie/miniCRAN)
only works for source and
windows. I also need it for macosx-el-capitan; while it doesn't work,
there's a pull request that fixes the problem.

For the R/qtl2 packages, need the source `.tar.gz` files plus the
MacOS `.tgz` files (which I build locally) plus Windows `.zip` files
(which I create using the [Win-builder
tool](http://win-builder.r-project.org/upload.aspx)).


- [`miniCRAN.R`](miniCRAN.R) creates the CRAN-like repo for packages,
  containing all of the R/qtl2 dependencies

- [`tar_Rlibs.R`](tar_Rlibs.R) tars my local compiled Mac versions of
  the R/qtl2 packages (after I've installed them with `R CMD INSTALL`)
  and puts them in the right place

- [`updatePACKfiles.R`](updatePACKfiles.R) updates the `PACKAGE`,
  `PACKAGE.gz`, and `PACKAGE.rds` files using
  `tools::write_PACKAGES()`, once all of the packages are in place.

I then tar this directory and use `scp` to move it to my
[R/qtl](https://rqtl.org) web server, and then unpack it there.
