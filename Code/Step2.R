## ggplot for 0010002_3 (DX=3)

MyData <- read_csv(file="/Users/HanY/Desktop/ADHD/ADHD200_CC200_TCs_filtfix/NYU/0010002/sfnwmrda0010002_session_1_rest_1_cc200_TCs.csv")
dim(MyData)
MyData[1:5,1:5]
half_data1 = MyData[1:86,3:22]
half_data2 = MyData[87:172,3:22]
corr_data1 = cor(half_data1)
corr_data2 = cor(half_data2)
melt_data1 = melt(corr_data1)
melt_data2 = melt(corr_data2)
ggplot(data = melt_data1, aes(Var2, Var1, fill = value))+
  xlab('1-20 ROIs')+ylab("1-20 ROIs")+
  geom_tile(color = "white")+
  scale_fill_gradientn(colours = terrain.colors(2)) +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()
ggplot(data = melt_data2, aes(Var2, Var1, fill = value))+
  xlab('1-20 ROIs')+ylab("1-20 ROIs")+
  geom_tile(color = "white")+
  scale_fill_gradientn(colours = terrain.colors(2)) +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()

## ggplot for 1000804_0 (DX=0)

MyData <- read_csv(file="/Users/HanY/Desktop/ADHD/ADHD200_CC200_TCs_filtfix/NYU/1000804/sfnwmrda1000804_session_1_rest_1_cc200_TCs.csv")
dim(MyData)
MyData[1:5,1:5]
half_data1 = MyData[1:86,3:22]
half_data2 = MyData[87:172,3:22]
corr_data1 = cor(half_data1)
corr_data2 = cor(half_data2)
melt_data1 = melt(corr_data1)
melt_data2 = melt(corr_data2)
ggplot(data = melt_data1, aes(Var2, Var1, fill = value))+
  xlab('1-20 ROIs')+ylab("1-20 ROIs")+
  geom_tile(color = "white")+
  scale_fill_gradientn(colours = terrain.colors(2)) +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()
ggplot(data = melt_data2, aes(Var2, Var1, fill = value))+
  xlab('1-20 ROIs')+ylab("1-20 ROIs")+
  geom_tile(color = "white")+
  scale_fill_gradientn(colours = terrain.colors(2)) +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()

## plot of some correlations of individual 1023964 (DX=3)

n = 172;
p = 190;
U = seq(-1,1,length.out = n)
h = 0.2
thd = 2.5 * sqrt(log(p)/(n*h))
kern <- function(x, h, type = "normal"){ return(dnorm(x/h)/h)}
dcmEst <- function(Y, u_pred){
  ## double loop, rows and columns of covariance matrix
  dcmVar <- matrix(0, p, p)
  Y_prod_k <- matrix(0, p, p)
  kernel <- kern(U - u_pred, h)
  for(i in 1:n) {
    Y_prod_k = Y_prod_k + kernel[i] * outer( Y[i,],  Y[i,] )
  }
  Yk <- matrix(kernel,1) %*% Y
  dcmVar <- Y_prod_k / sum(kernel) 
  - outer(Yk,Yk) / (sum(kernel)) ^ 2
  return(dcmVar)
}
corEst <- function(Y, i, j){
  corE = rep(0,n)
  for(k in 1:n){
    corE[k] = cov2cor(dcmEst(Y,U[k]))[i,j]
  }
  return(corE)
}
NYU1023964_3 = read_csv(file = "/Users/HanY/Desktop/ADHD/ADHD200_CC200_TCs_filtfix/NYU/1023964/sfnwmrda1023964_session_1_rest_1_cc200_TCs.csv")
NYU1023964_3 = as.matrix(NYU1023964_3[,3:192])
cor_1_2 = corEst(NYU1023964_3,1,2)
cor_3_4 = corEst(NYU1023964_3,3,4)
cor_23_25 = corEst(NYU1023964_3,23,25)
cor_30_33 = corEst(NYU1023964_3,30,33)
cor_60_90 = corEst(NYU1023964_3,60,90)
ggplot(melt(data.frame(cor_1_2,cor_3_4,cor_23_25,cor_30_33,cor_60_90,U),id.vars = "U"), aes(U, value), color = class) + 
  geom_line(aes(color=variable)) +
  xlab('Time')+ylab("Correlation")