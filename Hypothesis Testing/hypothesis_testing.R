print("hypothesis_testing")

d=seq(1,20, by=1)
d
m=mean(d)
m
s=sd(d)
s
smit<-t.test(d,alternative="two.sided", mu=6, conf.int=0.95)
smit
d1=seq(1,85, by=1)
d1
m1=mean(d1)
m1
s1=sd(d1)
mu=8
valz=(m1-mu)/(s1/sqrt(length(d1)))
valz
