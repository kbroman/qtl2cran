# After putting the qtl2 packages in their respective directories...
# ...use this to update the PACKAGES files

library(tools)
write_PACKAGES("qtl2cran/src/contrib", type="source", verbose=TRUE)
write_PACKAGES("qtl2cran/bin/windows/contrib/3.4", type="win.binary", verbose=TRUE)
write_PACKAGES("qtl2cran/bin/macosx/el-capitan/contrib/3.4", type="mac.binary", verbose=TRUE)
write_PACKAGES("qtl2cran/bin/windows/contrib/3.5", type="win.binary", verbose=TRUE)
write_PACKAGES("qtl2cran/bin/macosx/el-capitan/contrib/3.5", type="mac.binary", verbose=TRUE)
write_PACKAGES("qtl2cran/bin/windows/contrib/3.6", type="win.binary", verbose=TRUE)
write_PACKAGES("qtl2cran/bin/macosx/el-capitan/contrib/3.6", type="mac.binary", verbose=TRUE)
write_PACKAGES("qtl2cran/bin/windows/contrib/4.0", type="win.binary", verbose=TRUE)
write_PACKAGES("qtl2cran/bin/macosx/contrib/4.0", type="mac.binary", verbose=TRUE)
