##ggplot of absolute sums
p = 190
absfun <- function(x){
  sum(abs(x))
}

sumNYU1023964_3 = apply(NYU1023964_3,2,absfun)
sumNYU0010005_2 = apply(NYU0010005_2,2,absfun)
sumNYU1000804_0 = apply(NYU1000804_0,2,absfun)

## scatter plots of absolute sums of individuals 1000804 (DX=0) and 0010005 (DX=2)

ggplot(data = melt(data.frame(sumNYU1000804_0,c(1:p)),id.vars = 2), aes(c(1:p), sumNYU1000804_0)) +
  geom_point() +
  xlab('ROIs')+ylab("Individual 1000804") +
  ylim(0,90)

ggplot(data = melt(data.frame(sumNYU0010005_2,c(1:p)),id.vars = 2), aes(c(1:p), sumNYU0010005_2)) +
  geom_point() +
  xlab('ROIs')+ylab("Individual 0010005") +
  ylim(0,90)

## Boxplots for absolute sums of individuals 1000804 (DX=0), 
## 0010005 (DX=2) and 1023964 (DX=3)

ggplot(melt(data.frame(sumNYU1000804_0,sumNYU0010005_2,sumNYU1023964_3,y = 1:p),id.var = 'y'), aes(y, value)) + 
  geom_boxplot(aes(fill=variable)) +
  xlab('Individual')+ylab('Absolute Sum')