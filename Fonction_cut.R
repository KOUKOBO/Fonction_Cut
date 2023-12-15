#Installation de package----

library(questionr)
library(tidyverse)
library(labelled)

#Import des données----

load(url("http://www.od-datamining.com/livreR/exemples.Rdata"))

houses <- houses|> 
  mutate( 
    tranche = cut(price,
                  include.lowest = TRUE,
                  right = FALSE,
                  dig.lab = 4,
                  breaks = c(-Inf,250, 500, 750,Inf))
  )|>
  set_variable_labels(tranche = "Tranches de prix")
