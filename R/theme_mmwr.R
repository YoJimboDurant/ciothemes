

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

scale_fill_mmwr_blue4light <-function(palette, ...) {
  discrete_scale("fill", "mmwr_blue4light", manual_pal(cio_themes_data$mmwr$blue4light), ...)
}


scale_fill_nceh <-function(palette, ...) {
  discrete_scale("fill", "nceh_main", manual_pal(unname(cio_themes_data$nceh$main)), ...)
}



cio_pull <- function(cio, division){
  #   cio <- deparse(substitute(cio))
  #   division <- deparse(substitute(division))
  mycolors <- cio_themes_data[[cio]][[division]]
  if(is.null(mycolors[[1]])) stop("Unidentified CIO or Division")
  return(mycolors)
}

scale_fill_cio <-function(palette, cio, division,...) {
  cio <- deparse(substitute(cio))
  division <- deparse(substitute(division))
  discrete_scale("fill", "cio", manual_pal(unname(cio_pull(cio,division))))
}
