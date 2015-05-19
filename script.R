
setwd("/home/fabien/Bureau/BE_Stats")
load("/home/fabien/Bureau/BE_Stats/ienac20.RData")
{.Random.seed <- as.data.frame(.Random.seed)
} {ienac20 <- as.data.frame(ienac20)
}
library(relimp, pos=4)
{showData(.Random.seed, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30, 
  suppress.X11.warnings=FALSE)
} {showData(ienac20, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30, suppr
  ess.X11.warnings=FALSE)
}
attach(ienac20)

.Table <- table(ienac20$bac)
.Table  # counts for bac
round(100*.Table/sum(.Table), 2)  # percentages for bac
.Table <- table(ienac20$filiere)
.Table  # counts for filiere
round(100*.Table/sum(.Table), 2)  # percentages for filiere
.Table <- table(ienac20$mention)
.Table  # counts for mention
round(100*.Table/sum(.Table), 2)  # percentages for mention
.Table <- table(ienac20$sexe)
.Table  # counts for sexe
round(100*.Table/sum(.Table), 2)  # percentages for sexe
.Table <- table(ienac20$succes)
.Table  # counts for succes
round(100*.Table/sum(.Table), 2)  # percentages for succes
remove(.Table)

