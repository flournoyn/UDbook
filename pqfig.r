#postscript("PQfig.eps",width=10,height=5,horiz=F,paper="special")
pdf("pqfig.pdf",width=10,height=5,paper="special")
par(mgp=c(2.,.7,0),mar=c(3,3,3,1))
layout(t(1:2))
x=seq(1,10,.01)
fx=plogis(x,location=5.6,scale=2)

plot(x,fx,type='l',ylim=c(0,1),main=expression(paste("Transition Probability Example: Classical UD")),xlab="Dose Level (m)",ylab="Transition Probability",xaxt='n',cex.axis=.8,lwd=2,lty=2)
lines(x,1-fx,lwd=2)
abline(h=0.5,lty=4)
abline(v=5.6,lty=4)
axis(1,at=1:10,cex.axis=.8)
legend(7,0.1,legend=c("'up' (p(x))","'down' (q(x))"),lty=1:2,bty='n',cex=.8,lwd=2)


plot(x,fx,type='l',ylim=c(0,1),main=expression(paste("Transition Probability Example: BCD (",Gamma,"= 0.3)")),xlab="Dose Level (m)",ylab="Transition Probability",xaxt='n',cex.axis=.8,lwd=2,cex.main=1.2,lty=2)
lines(x,(1-fx)*3/7,lwd=2)
abline(h=0.3,lty=2)
abline(v=qlogis(.3,location=5.6,scale=2),lty=2)
axis(1,at=1:10,cex.axis=.8)
legend(7,.3,legend=c("'up' (p(x))","'down' (q(x))"),lty=1:2,bty='n',cex=.8,lwd=2)
dev.off()