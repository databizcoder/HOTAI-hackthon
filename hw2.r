library(gee)
URL < 'http://static.lib.virginia.edu/statlab/materials/data/depression.csv'
dat <- read.csv(URL, stringsAsFactors = TRUE)
dat$id = factor((dat$id)
dat$drug < relevel(dat$drug, ref = "standard")
head(dat)
dep_gee = gee(depression ~ diagnose + drug*time, data = dat, id = id, family = binomial, corstr= "exchangeable")
summary(dep_gee)