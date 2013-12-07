#postscript("pifig.eps",width=10,height=5,horiz=F,paper="special")
pdf("pifig.pdf",width=10,height=5,paper="special")
par(mgp=c(2.,.7,0),mar=c(3,3.5,3,1))
layout(t(1:2))
dk=1:10
fd=plogis(dk,location=5.6,scale=2)

lambda=c(1,(1-fd[-10])/fd[-1])
barplot(cumprod(lambda)/sum(cumprod(lambda)),names=1:10,col="gray",main=expression(paste("Asymptotic Distribution Example: Classical UD")),ylab=expression(paste("Asymptotic Visit Frequency (",pi,")")),xlab="Dose Level (m)",cex.axis=.8,lwd=2)

lambda2=c(1,(1-fd[-10])*3/(7*fd[-1]))

barplot(cumprod(lambda2)/sum(cumprod(lambda2)),names=1:10,col="gray",main=expression(paste("Asymptotic Distribution Example: BCD (",Gamma,"= 0.3)")),ylab=expression(paste("Asymptotic Visit Frequency (",pi,")")),xlab="Dose Level (m)",cex.axis=.8,lwd=2)

dev.off()
