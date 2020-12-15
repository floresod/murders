library(tidyverse)
library(ggplot2)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>% 
  ggplot(aes(abb, rate)) + 
  geom_bar(width = 0.5, stat = "identity", color = "darkblue") + 
  coord_flip()

ggsave("figs/barplot.png")