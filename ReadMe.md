## qtl2cran mini-CRAN

Use the R package [miniCRAN](https://github.com/andrie/miniCRAN) to
set up a mini-CRAN for folks to download
[R/qtl2](http://kbroman.org/qtl2).

1. First create the subdirectory `qtl2cran/`

2. Run [`miniCRAN.R`](miniCRAN.R), which downloads all of the R/qtl2
depenedencies and puts them in the right place within `qtl2cran/`

3. Use `R CMD build` to build the `.tar.gz` files for the R/qtl2
packages and put them in `qtl2cran/src/contrib/`

4. Use `R CMD INSTALL` to install the R/qtl2 packages locally (on my
Mac, in `~/Rlibs/`).

5. Run [`tar_Rlibs.R`](tar_Rlibs.R) to tar the local compiled Mac versions of
the R/qtl2 packages and put them in `qtl2cran/bin/macosx/....`

6. Use the
[win-builder tool](http://win-builder.r-project.org/upload.aspx) to
create compiled Windows versions of the R/qtl2 packages, and put them
in `qtl2cran/bin/windows/....`

7. Run [`updatePACKfiles.R`](updatePACKfiles.R) to update the `PACKAGE`,
`PACKAGE.gz`, and `PACKAGE.rds` files using
`tools::write_PACKAGES()`.

8. Finally, I tar the `qtl2cran` directory, move it to the
[R/qtl](https://rqtl.org) web server, and then unpack it there.

9. I then send an announcement of the new version, at which point I
immediately find a bug which makes me have to go through this process
again.
