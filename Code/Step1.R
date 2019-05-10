library(readr)
phenotype <- read_csv(file = "/Users/HanY/Desktop/ADHD/adhd200_preprocessed_phenotypics.csv")
head(phenotype)
phenotypeNYU0 = phenotype[phenotype$Site==5 & phenotype$DX==0 & phenotype$Gender==1,]
phenotypeNYU1 = phenotype[phenotype$Site==5 & phenotype$DX==1 & phenotype$Gender==1,]
phenotypeNYU2 = phenotype[phenotype$Site==5 & phenotype$DX==2 & phenotype$Gender==1,]
phenotypeNYU3 = phenotype[phenotype$Site==5 & phenotype$DX==3 & phenotype$Gender==1,]

NYU1000804_0 = read_csv(file = "/Users/HanY/Desktop/ADHD/ADHD200_CC200_TCs_filtfix/NYU/1000804/sfnwmrda1000804_session_1_rest_1_cc200_TCs.csv")
NYU1000804_0 = as.matrix(NYU1000804_0[,3:192])

NYU0010002_3 = read_csv(file = "/Users/HanY/Desktop/ADHD/ADHD200_CC200_TCs_filtfix/NYU/0010002/sfnwmrda0010002_3_session_1_rest_1_cc200_TCs.csv")
NYU0010002_3 = as.matrix(NYU0010002_3[,3:192])

NYU0010005_2 = read_csv(file = "/Users/HanY/Desktop/ADHD/ADHD200_CC200_TCs_filtfix/NYU/0010005/sfnwmrda0010005_session_1_rest_1_cc200_TCs.csv")
NYU0010005_2 = as.matrix(NYU0010005_2[,3:192])

NYU1023964_3 = read_csv(file = "/Users/HanY/Desktop/ADHD/ADHD200_CC200_TCs_filtfix/NYU/1023964/sfnwmrda1023964_session_1_rest_1_cc200_TCs.csv")
NYU1023964_3 = as.matrix(NYU1023964_3[,3:192])

