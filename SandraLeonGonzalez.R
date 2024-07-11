library("readr")

url<- "https://raw.githubusercontent.com/rominicky/materiales/main/assets/Provincias.csv"

destino <- "./provincias.csv"

download.file(url, destino)

install.packages("tidyverse")

library(tidyverse)

provincias <- read.csv('./Provincias.csv')

provincias[is.na(provincias)] <- 0
# No se que ocurria, pero en algunos casos la presencia de valores NA 
# generaba errores. Por eso busque en internet y encontre este comando 
# para reemplazar NA por 0's

# names(provincias) Inicialmente use este comando para ver los nombres de 
# las columnas como aparecian en R y asi poder usar
# el nombre correcto al ejecutar la funcion rename  

# Hice el ejemplo mostrado pero usando los datos de las personas
# en viviendas particulares en vez de situacion de calle

provincias <- provincias %>%
  rename(vivienda_particular = Viviendas.particulares..2022.)

media_vivienda_particular <- provincias %>%  group_by(Nombre.de.provincia) %>% summarise(media_vivienda_particular = mean(vivienda_particular, na.rm = TRUE)) 

ggplot(provincias, aes(x = reorder(Nombre.de.provincia, vivienda_particular), y = vivienda_particular)) + geom_bar(stat = "identity", na.rm = TRUE) + coord_flip() +  labs(title = "Personas en viviendas particulares por Provincias argentinas", x = "Provincias", y = "Numero de personas en vivienda particular") + theme_light() 

ggplot(subset(media_vivienda_particular, media_vivienda_particular > 0), aes(x = reorder(Nombre.de.provincia, media_vivienda_particular), y = media_vivienda_particular, fill = media_vivienda_particular)) + geom_bar(stat = "identity") +   labs(title = "Valor medio de personas en viviendas particulares por provincia", x = "Provincia",        y = "Valor medio de personas en viviendas particulares") + theme_minimal() +  theme(axis.text.x = element_text(angle = 45, hjust = 1),legend.position = "none")

ggplot(provincias, aes(x = Nombre.de.provincia, y = Población..2022., fill = vivienda_particular)) +  geom_bar(stat = "identity", position = "dodge", width = 0.7) + scale_fill_viridis_c() +  labs(title = "Comparación de Población 2022 y personas en viviendas particulares por provincia", x = "Provincia", y = "Población 2022", fill = "Personas en viviendas particulares") + theme_minimal() + theme(axis.text.x = element_text(angle = 45, hjust = 1))   

