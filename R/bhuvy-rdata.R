# Here's a good place to put your top-level package documentation
library('ggplot2')
library('gridExtra')

.onAttach <- function (lib, pkgname="bhuvy-rdata") {
    ## Put stuff here you want to run when your package is loaded
    invisible()
}
bhuvy_background_color <- "#F0F8FF"
bhuvy_foreground_color <- "#B2CEE6"
bhuvy_text_color <- "#000000"

theme_bhuvy <- theme_bw(base_size=10, base_family='Merriweather Sans') +
     theme(
      plot.background = element_rect(fill = bhuvy_background_color),
      plot.title = element_text(size=20, color=bhuvy_text_color),
      plot.subtitle = element_text(size=16, color="#222222"),
      plot.margin=unit(c(1,3,1,1), "cm"),
      axis.ticks = element_line(size = 1),
      axis.ticks.length = unit(.5, "lines"),
      axis.title = element_text(size=16),
      axis.text = element_text(color=bhuvy_text_color, size=12),
      axis.line = element_line(size=1),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(size=1, color="white"),
      legend.key=element_rect(colour=NA, fill =NA),
      panel.border = element_blank(),
      panel.background = element_rect(fill = bhuvy_foreground_color), 
      strip.background = element_rect(fill = NA),
      legend.background = element_rect(fill = bhuvy_background_color , size=1, color="black"),
      legend.margin = margin(t = 10, r = 10, b = 15, l = 10, unit = "pt"),
      legend.text = element_text(size=12),
      legend.title = element_text(size=12),
      )

bhuvy_table_theme <- ttheme_default(
        core = list(fg_params=list(hjust = 1, x=1),
                        bg_params=list(fill=c("white", bhuvy_background_color))),
        base_family='Merriweather Sans',
        colhead = list(fg_params=list(col=bhuvy_text_color),
                        bg_params=list(fill=bhuvy_foreground_color))
)
