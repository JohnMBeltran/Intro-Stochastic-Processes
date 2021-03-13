library('heemod')
library('shape')
library('diagram')

Tr <- define_transition(
  state_names = c('1', '2', '3', '4', '5'),
  0, 1, 0, 0, 0,
  1-alpha, 0, alpha, 0, 0,
  0, 1, 0, 0, 0, 
  .5, 0, 0, 0, .5,
  0, 0, 0, .5, .5);

curves <- matrix(nrow = 5, ncol = 5, 0.065)

plot(Tr, 
     curve=curves,
     self.shiftx = 0.125, 
     self.shifty = 0, 
     self.arrpos = 1.4,
     arr.type= "triangle",
     self.cex=0.7,
     latex = FALSE,
     lwd = 1, 
     box.lwd = 1, 
     box.col = "lightblue",
     cex.txt = 0.7, 
     box.size = 0.09)


Tr2 <- define_transition( state_names = c('4', '3', '2', '1', '0'),
                          0, mu, 0, 0, 0, 
                          lambda^1, 0, mu, 0, 0, 
                          0, lambda^1, 0, mu, 0,  
                          lambda^3, 0, lambda^1, 0, mu,
                          0, lambda^3 , 0, lambda^1, 0)

curves <- matrix(nrow = 5, ncol = 5, 0.55)
plot(Tr2, pos=c(5),curve=curves, endhead=FALSE,
     arr.length=0.3, latex=FALSE,
     lwd = 1, box.lwd = 1, box.col = "lightblue",
     cex.txt = 1, box.size = 0.07)

K=2
stateNames=1:K
T=matrix(c(0.5,0.5,1,0),nrow=K,byrow=T)
Tc=t(T)
row.names(Tc) <- stateNames; colnames(Oz) <- stateNames

plotmat(Tc,pos = c(2), 
        lwd = 2, 
        box.lwd = 3, 
        cex.txt = 1.0, 
        box.size = 0.15, 
        box.prop = 0.5,
        box.col = "light grey",
        arr.length=.3,
        arr.width=.3,
        self.cex = .5,
        self.shifty = 0.12,
        self.shiftx = 0,
        main = "")


