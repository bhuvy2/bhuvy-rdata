# Here's a good place to put your top-level package documentation
library('ggplot2')
.onAttach <- function (lib, pkgname="bhuvy-rdata") {
    ## Put stuff here you want to run when your package is loaded
    invisible()
}
bhuvy_background_color <- "#F0F8FF"
theme_bhuvy <- theme_bw(base_size=10, base_family='Merriweather Sans') +
     theme(
      plot.background = element_rect(fill = bhuvy_background_color ),
      plot.title = element_text(size=20),
      plot.subtitle = element_text(size=16, color="#222222"),
      plot.margin=unit(c(1,3,1,1), "cm"),
      axis.ticks = element_line(size = 1),
      axis.ticks.length = unit(.5, "lines"),
      axis.title = element_text(size=16),
      axis.text = element_text(colour="black", size=12),
      axis.line = element_line(size=1),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(size=1, color="white"),
      legend.key=element_rect(colour=NA, fill =NA),
      panel.border = element_blank(),
      panel.background = element_rect(fill = "#B2CEE6"), 
      strip.background = element_rect(fill = NA),
      legend.background = element_rect(fill = bhuvy_background_color , size=1, color="black"),
      legend.margin = margin(t = 10, r = 10, b = 15, l = 10, unit = "pt"),
      legend.text = element_text(size=12),
      legend.title = element_text(size=12),
      )
