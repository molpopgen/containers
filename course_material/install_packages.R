options(Ncpus=6)
packages <- read.table("packages.txt", header=TRUE)

for (i in 1:nrow(packages)) {
    devtools::install_version(packages$package[i],
                              packages$version[i],
                              repos='http://cran.us.r-project.org')
}
