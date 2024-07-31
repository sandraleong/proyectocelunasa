# Instalar y cargar paquetes necesarios
install.packages("readr") #facilita la lectura y escritura de textos
install.packages("ggplot2")
install.packages("dplyr")
library(dplyr)
library(ggplot2)
library(readr)

# Cargar el archivo CSV
# Romina, por favor descargar el archivo BaseDatos.csv disponible en 
# https://github.com/sandraleong/proyectocelunasa/blob/main/BaseDatos.csv

df <- read_csv("./BaseDatos.csv")

# resumen general de los datos:
  
summary(df)

#Graficar el número de publicaciones por año

ggplot(df, aes(x =`Year`)) + geom_bar() +   labs(title = "Número de Publicaciones por Año", x = "Año de Publicación", y = "Número de Publicaciones")


#graficar por tipo de publicaciones
ggplot(df, aes(x = `Document Type`)) +
  geom_bar() +
  labs(title = "Distribución de Tipos de Publicaciones",
       x = "Tipo de Publicación",
       y = "Número de Publicaciones") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#Publicaciones por autor  (para identificar a las personas más activas)
autor_publicaciones <- df %>% 
  group_by(Authors) %>% #agrupamos por autor
  summarise(Count = n()) %>% #cuenta las publicaciones que tiene cada autor.
  arrange(desc(Count)) #ordenamos en forma descendente

# Ver primeras filas para identificar personas que más han publicado
head(autor_publicaciones)

#Cambiamos el nombre a la columna Source title por Fuente (conveniencia) 
df <- df %>% rename(Fuente = `Source title`)

#contamos las publicaciones para cada fuente 
Fuentes <- df %>%
  group_by(Fuente) %>% #agrupamos por fuente
  summarise(Count = n()) %>% #cuenta las publicaciones realizadas en cada fuente.
  arrange(desc(Count)) #ordenamos en forma descendente

# Ver primeras filas para reconocer las fuentes más utilizadas para publicar
head(Fuentes)

#Cambiamos el nombre a la Language of Original Documento por Language (conveniencia)
df <- df %>% rename(Language = `Language of Original Document`)

# Graficamos las publicaciones por idioma, filtramos los valores vacíos, NA, en la columna Language
ggplot(df %>% filter(!is.na(Language)), aes(x = Language)) +
  geom_bar() +
  labs(title = "Publicaciones por Idioma",
       x = "Idioma",
       y = "Número de Publicaciones") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

