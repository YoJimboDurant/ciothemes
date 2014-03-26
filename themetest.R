require(devtools)
require(ggplot2)
require(grid)

install_github(repo="ciothemes", username="mjmaenner")
library(ciothemes)

#manipulate example dataset
data(esoph)
esoph$total<-esoph$ncases + esoph$ncontrols
esoph$tobacco<-paste0(esoph$tobgp, "    ") #spaces for legend formatting

#this is the basic plot:
p<-ggplot(esoph, aes(x=agegp, weight=total, fill=tobacco))+
    geom_bar(position="dodge")

#this is what it looks like:
p

#add mmwr theme and color schemes
p+
theme_mmwr() + scale_fill_mmwr_blue4dark(name="Daily Tobacco Consumption")

# However, many stylistic properties are not part of the theme, so need to add manually:
# ad black outline to bars (but not to legend) which requires the second geom_bar()
# y-scale should be flush agains zero, with some room at the top
# no simple way in ggplot to create vertical space between fill boxes in legend because 
#     fill colors expand to the entire legend.key.size (but shapes do not)
#     as a compromise for now, I added spaces to the category labels and used a horizontal legend.
 
p+
  theme_mmwr()+ scale_fill_mmwr_blue4dark(name="Daily Tobacco Consumption")+
  geom_bar(position="dodge", colour="black", show_guide=FALSE)+
  scale_y_continuous(expand = c(0,0), limits=c(0,150))+
  theme(legend.position="bottom")
  
