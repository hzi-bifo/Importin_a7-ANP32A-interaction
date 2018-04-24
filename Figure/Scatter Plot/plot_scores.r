options(warn=-1)
args <- commandArgs(TRUE)
##
#read data and manage variables
mydata <- read.table(args[1], header=T, sep="\t")
min_Isc <- min(mydata$I_sc)
##
#plot data
pdf("scatter_plot_docking_results.pdf")
plot(mydata$I_sc,mydata$total_score, main="docking results", ylab="total score", xlab="interface score",col=ifelse(mydata$I_sc == min_Isc, "red", "blue"), pch=ifelse(mydata$I_sc == min_Isc, 1, 4))

