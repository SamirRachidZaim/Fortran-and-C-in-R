##############################
##############################
#### Driver.R
####
#### Base R script for invoking
#### Fortran and C functions
##############################
##############################


### Load C Library
dyn.load("foo.so")

## invoke C code
.C("foo", n=as.integer(5), x=as.double(1:5))

## Profile C code vs. regular apply

system.time(lapply(1:10000, function(x) x^2))
system.time(.C("foo", n=as.integer(5), x=as.double(1:10000)))
