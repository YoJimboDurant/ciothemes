data(esoph)
esoph$total<-esoph$ncases + esoph$ncontrols
esoph$tobacco<-paste0(esoph$tobgp, "    ")

p<-ggplot(esoph, aes(x=agegp, weight=total, fill=tobacco, guides=FALSE))+
  geom_bar(position="dodge")+
  geom_bar(position="dodge", colour="black", show_guide=FALSE)

p

p+theme_mmwr()+
  scale_y_continuous(expand = c(0,0), limits=c(0,150))+
  theme(legend.position="bottom")+scale_colour_mmwr_blue4dark(name="Daily Tobacco Consumption")
  
