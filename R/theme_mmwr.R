

theme_mmwr <- function(base_size=14, base_family="sans"){
  (theme_foundation(base_size=base_size, base_family=base_family) 
   + theme(panel.grid.minor = element_blank(),
           panel.grid.major = element_blank(),
           rect = element_rect(colour = "black", fill=NA),
           line = element_line(colour = "black"),
           axis.ticks.margin = unit(0, "cm"),
           axis.title.x = element_text(vjust = -0.2),
           legend.key.size = unit(0.5, "cm"),
           axis.title.y = element_text(angle=90)                
  ))}

scale_fill_mmwr_blue4dark <-function(palette, ...) {
  discrete_scale("fill", "mmwr_blue4dark", manual_pal(cio_themes_data$mmwr$blue4dark), ...)
}
