<<<<<<< HEAD
install.packages("readr") #facilita la lectura y escritura de textos
install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyverse")
library(dplyr)
library(tidyverse)
library(ggplot2)
library(readr)

# Cargar el archivo CSV
df <- read_csv('C:/Users/VALENNNNN/Documents/export-data.csv')

# resumen general de los datos:

summary(df)

library(dplyr)
library(ggplot2)

# Filtrar los valores NA
df_filtered <- df %>% filter(!is.na(`Publication Year`))

# Crear el gráfico
ggplot(df_filtered, aes(x = `Publication Year`)) +
  geom_bar() +
  labs(title = "Número de Publicaciones por Año",
       x = "Año de Publicación",
       y = "Número de Publicaciones")

# Graficar por tipo de publicación y filtramos na
ggplot(df %>% filter(!is.na(`Item Type`)), aes(x = `Item Type`)) +
  geom_bar() +
  labs(title = "Tipo de publicación",
       x = "Tipo de Publicación",
       y = "Cantidad de publicaciones")


library(dplyr)
library(ggplot2)

# Filtrar los valores NA
df_filtered <- df %>% filter(!is.na(`Publication Title`))

# Crear el gráfico
ggplot(df_filtered %>% 
         count(`Publication Title`) %>% 
         arrange(desc(n)), aes(x = reorder(`Publication Title`, -n), y = n)) +
  geom_bar(stat = "identity") +
  labs(title = "Título de publicación",
       x = "Título de la Publicación",
       y = "Cantidad de publicaciones") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Graficar por idioma con barras de colores
ggplot(df %>% filter(!is.na(Language)), aes(x = Language, fill = Language)) +
  geom_bar() +
  labs(title = "Publicaciones por Idioma",
       x = "Idioma",
       y = "Número de Publicaciones") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

library(dplyr)
# Renombrar columnas
df <- df %>% rename(
  `Autoría` = `Author`
)
names(df)


library(dplyr)
ruta_archivo <- "export-data.csv"
# Leer los datos del archivo CSV
datos <- read.csv(ruta_archivo, header = TRUE, stringsAsFactors = FALSE)
# Ordenar por el nombre del autor (ajusta el nombre de la columna si es necesario)
datos_nuevos <- datos %>%
  arrange(Author)
# Escribir los datos ordenados en un nuevo archivo CSV
write.csv(datos_nuevos, "autores_ordenados.csv", row.names = FALSE)
# Verifica los cambios
head(datos_nuevos)

=======
install.packages("readr") #facilita la lectura y escritura de textos
install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyverse")
library(dplyr)
library(tidyverse)
library(ggplot2)
library(readr)

# Cargar el archivo CSV
df <- read_csv('C:/Users/VALENNNNN/Documents/export-data.csv')

# resumen general de los datos:

summary(df)

library(dplyr)
library(ggplot2)

# Filtrar los valores NA
df_filtered <- df %>% filter(!is.na(`Publication Year`))

# Crear el gráfico
ggplot(df_filtered, aes(x = `Publication Year`)) +
  geom_bar() +
  labs(title = "Número de Publicaciones por Año",
       x = "Año de Publicación",
       y = "Número de Publicaciones")

# Graficar por tipo de publicación y filtramos na
ggplot(df %>% filter(!is.na(`Item Type`)), aes(x = `Item Type`)) +
  geom_bar() +
  labs(title = "Tipo de publicación",
       x = "Tipo de Publicación",
       y = "Cantidad de publicaciones")


library(dplyr)
library(ggplot2)

# Filtrar los valores NA
df_filtered <- df %>% filter(!is.na(`Publication Title`))

# Crear el gráfico
ggplot(df_filtered %>% 
         count(`Publication Title`) %>% 
         arrange(desc(n)), aes(x = reorder(`Publication Title`, -n), y = n)) +
  geom_bar(stat = "identity") +
  labs(title = "Título de publicación",
       x = "Título de la Publicación",
       y = "Cantidad de publicaciones") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Graficar por idioma con barras de colores
ggplot(df %>% filter(!is.na(Language)), aes(x = Language, fill = Language)) +
  geom_bar() +
  labs(title = "Publicaciones por Idioma",
       x = "Idioma",
       y = "Número de Publicaciones") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

library(dplyr)
# Renombrar columnas
df <- df %>% rename(
  `Autoría` = `Author`
)
names(df)


library(dplyr)
ruta_archivo <- "export-data.csv"
# Leer los datos del archivo CSV
datos <- read.csv(ruta_archivo, header = TRUE, stringsAsFactors = FALSE)
# Ordenar por el nombre del autor (ajusta el nombre de la columna si es necesario)
datos_nuevos <- datos %>%
  arrange(Author)
# Escribir los datos ordenados en un nuevo archivo CSV
write.csv(datos_nuevos, "autores_ordenados.csv", row.names = FALSE)
# Verifica los cambios
head(datos_nuevos)

>>>>>>> 63396215c36190c1d3f5e1fc92434a0263a11db1
