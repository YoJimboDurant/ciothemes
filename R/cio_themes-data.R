##' Palette data for cio_themes package
##' Based on jrnold's brilliant ggthemes package
##' List with the data used by the palettes in the ggthemes package.
##'
##' @export
cio_themes_data <- {
    ## x to hold value of list as I create it
    x <- list()
    x$cdcblue <- "#1e5aaf"
    
    x$mmwr <-list()
    x$mmwr$browns3<-c("#dfceb6","#a7824f","#7a4d16")
   
    #http://www.cdc.gov/mmwr/preview/mmwrhtml/mm6310a7.htm
    x$mmwr$blue2 <- c(rgb(red=0, green=98, blue=171, max=255), 
                      rgb(red=197, green=208, blue=233, max=255))
    
    #http://www.cdc.gov/mmwr/preview/mmwrhtml/mm6309a1.htm
    x$mmwr$blue3 <- c(rgb(red=0, green=98, blue=171, max=255),
                      rgb(red=103, green=142, blue=199, max=255),
                      rgb(red=197, green=208, blue=233, max=255))

    #http://www.cdc.gov/mmwr/preview/mmwrhtml/mm6307a2.htm
    x$mmwr$blue4dark <- c(rgb(red=202, green=209, blue=236, max=255),
                      rgb(red=136, green=159, blue=213, max=255),
                      rgb(red=77, green=120, blue=193, max=255),
                      rgb(red=46, green=42, blue=43, max=255))
    
    #http://www.cdc.gov/mmwr/preview/mmwrhtml/mm6307a9.htm
    x$mmwr$blue4light <-c(rgb(red=255, green=255, blue=255, max=255),
                          rgb(red=197, green=208, blue=233, max=255),
                          rgb(red=125, green=156, blue=207, max=255),
                          rgb(red=0, green=98, blue=171, max=255))

    
    ## niosh colors
    x$niosh <- list()
    ## Colors picked from pdf color sheet via inkscape
    x$niosh$main <-
        c(brown = "#5e523c", #main color
          red = "#c4112e", 
          lightblue = "#53c3d9",
          limegreen = "#6ec72d", 
          orange = "#f68b1b") 
    
    x$nchs <-list()
    x$nchs$main <-
        c(darkgreen = "#15604f", #main color
          brown = "#5e523c", 
          mediumblue = "#0085af",
          orange = "#d06012", 
          yellow = "#fcd006") 
    
      x$ncbddd <-list()    
      x$ncbddd$main <-
        c(seagreen = "#76b18f", #main color
          darkcoral = "#b33f36", 
          purple = "#53369b",
          orange = "#ed7c12", 
          gold = "#edad09") 
    
      x$nccdphp <-list()
      x$nccdphp$main <-
        c(olivedrab = "#838906", #main color
          orange = "#f5970f", 
          maroon = "#820431",
          liteblue = "#63a1d9", 
          yellowgreen = "#558618") 
     
    x$nceh <- list()
     x$nceh$main <-
        c(darkseagreen = "#007d61", #main color
          darkblue = "#04517d", 
          forestgreen = "#395b44",
          darkred = "#4a1705", 
          gold = "#edad09")
    
    x$cgh <- list()
    x$cgh$main <-
        c(beige = "#b7a78b", #main color
          gold = "#d29908", 
          green = "#559721",
          magenta = "#b40d34", 
          purple = "#4c2b63")
    
     x$ncird<-list()
     x$ncird$main <-
        c(paleseagreen = "#8a9889", #main color
          purple = "#4c2b63", 
          maroon = "#740232",
          khaki = "#aca86e", 
          lightyellow = "#fde17b")
    
    x$ncezid<-list()
    x$ncezid$main <-
        c(salmon = "#da4219", #main color
          darkred = "#861a10", 
          olivedrab = "#868503",
          darkteal = "#19626a", 
          darkviolet = "#72177a")
    
    x$nchhstp<-list()
    x$nchhstp$main <-
        c(greenblue = "#007087", #main color
          teal = "#009090", 
          violet = "#9737a0",
          reddish = "#bf2519", 
          liteblue = "#8eb5dd")
    
    x$atsdr<-list()
    x$atsdr$main <-
        c(cdcblue = "#1e5aaf", #main color
          seagreen = "#76b18f", #secondary color
          darkblue = "#04517d", 
          forestgreen = "#395b44",
          darkred = "#4a1705", 
          gold = "#edad09")   
    
    x$ncipc<-list()
    x$ncipc$main <-
        c(darkviolet = "#72177a", #main color
          green = "#0a8137", 
          liteblue = "#85b4cd",
          orange = "#ed7c12", 
          lightyellow = "#fddd4e")
    
    x$osels<-list()
    x$osels$main <-
        c(red = "#b4131d", #main color
          green = "#559721",
          purple = "#4c2b63",
          yellow = "#fbbf15", 
          skyblue = "#5ecadd")
    #return             
    x
}
