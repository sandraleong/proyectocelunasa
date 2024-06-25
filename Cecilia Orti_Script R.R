
> install.packages("readr")
Aviso en install.packages("readr") :
  'lib = "C:/Program Files/R/R-4.4.1/library"' is not writable
--- Please select a CRAN mirror for use in this session ---
probando la URL 'http://mirror.fcaglp.unlp.edu.ar/CRAN/bin/windows/contrib/4.4/readr_2.1.5.zip'
Content type 'application/zip' length 1191577 bytes (1.1 MB)
downloaded 1.1 MB

package ‘readr’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\Silvi\AppData\Local\Temp\Rtmpc1A2rj\downloaded_packages
> library("readr")
> #cargaremos un *.csv a modo de ejemplo
> 
> url<- "https://raw.githubusercontent.com/rominicky/materiales/main/assets/Provincias.csv"
> 
> # Este paso se puede obviar, pero si queremos guardarlo en un destino:
> 
> destino <- "./provincias.csv"
> 
> download.file(url, destino)
probando la URL 'https://raw.githubusercontent.com/rominicky/materiales/main/assets/Provincias.csv'
Content type 'text/plain; charset=utf-8' length 4960 bytes
downloaded 4960 bytes

> 
> provincias <- read_csv(destino)

[1mindexing[0m [34mprovincias.csv[0m [==========================================] [32m?[0m, eta: [36m 0s[0m
                                                                                                                   
Rows: 24 Columns: 24
-- Column specification --------------------------------------------------------
Delimiter: ","
chr  (3): Provincia, Código de provincia, Nombre de provincia
dbl (21): Viviendas particulares (2022), Viviendas colectivas (2022), Poblac...

i Use `spec()` to retrieve the full column specification for this data.
i Specify the column types or set `show_col_types = FALSE` to quiet this message.
> 
> #Si no deseáramos guardarlo, solo realizaremos este último comando
> install.packages("tidyverse")
Installing package into ‘C:/Users/Silvi/AppData/Local/R/win-library/4.4’
(as ‘lib’ is unspecified)
probando la URL 'http://mirror.fcaglp.unlp.edu.ar/CRAN/bin/windows/contrib/4.4/tidyverse_2.0.0.zip'
Content type 'application/zip' length 431285 bytes (421 KB)
downloaded 421 KB

package ‘tidyverse’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\Silvi\AppData\Local\Temp\Rtmpc1A2rj\downloaded_packages
> library(tidyverse)
-- Attaching core tidyverse packages ------------------------ tidyverse 2.0.0 --
v dplyr     1.1.4     v purrr     1.0.2
v forcats   1.0.0     v stringr   1.5.1
v ggplot2   3.5.1     v tibble    3.2.1
v lubridate 1.9.3     v tidyr     1.3.1
-- Conflicts ------------------------------------------ tidyverse_conflicts() --
x dplyr::filter() masks stats::filter()
x dplyr::lag()    masks stats::lag()
i Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
> install.packages("ggplot")
Installing package into ‘C:/Users/Silvi/AppData/Local/R/win-library/4.4’
(as ‘lib’ is unspecified)
Aviso:
package ‘ggplot’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages 
> provincias <- read.csv('C:/git/materiales/assets/Provincias.csv')
Error en file(file, "rt"): no se puede abrir la conexión
Además: Aviso:
In file(file, "rt") :
  no fue posible abrir el archivo 'C:/git/materiales/assets/Provincias.csv': No such file or directory
> library(tidyverse)
> provincias <- read.csv('C:/git/materiales/assets/Provincias.csv')
Error en file(file, "rt"): no se puede abrir la conexión
Además: Aviso:
In file(file, "rt") :
  no fue posible abrir el archivo 'C:/git/materiales/assets/Provincias.csv': No such file or directory
> ruta_archivo <- file.path("assets", "Provincias.csv")
> # Verificar y cambiar el directorio de trabajo si es necesario
> # setwd("C:/ruta/a/tu/directorio")
> 
> # Intentar cargar el archivo con una ruta relativa
> ruta_archivo <- file.path("assets", "Provincias.csv")
> 
> # Leer el archivo CSV
> datos <- read.csv(ruta_archivo)
Error en file(file, "rt"): no se puede abrir la conexión
Además: Aviso:
In file(file, "rt") :
  no fue posible abrir el archivo 'assets/Provincias.csv': No such file or directory
> 
> # Verificar que los datos se han cargado correctamente
> head(datos)
Error: objeto 'datos' no encontrado
> 
> provincias <- read.csv('C:\Users\Silvi\Documents\provincias.csv')
Error: '\U' used without hex digits in character string (<input>:1:28)
> provincias <- read.csv('C:\Users\Silvi\Documents\provincias')
Error: '\U' used without hex digits in character string (<input>:1:28)
> > provincias <- read.csv('C:\Users\Silvi\Documents\provincias.csv')
Error: inesperado '>' en ">"
> Error: '\U' used without hex digits in character string (<input>:1:28)provincias <- read.csv('C:\Users\Silvi\Documents\provincias.csv')
Error: '\U' used without hex digits in character string (<input>:1:10)
> provincias <- read.csv('C:/Users/Silvi/Documents/provincias.csv')
> View(provincias)
> library(tidyverse)
> provincias <- provincias %>%
+   rename(situacion_calle = Personas.en.situación.de.calle..vía.pública.)
Error in `rename()`:
! Can't rename columns that don't exist.
x Column `Personas.en.situación.de.calle..vía.pública.` doesn't exist.
Run `rlang::last_trace()` to see where the error occurred.
> View(provincias)
> provincias <- read.csv('C:/Users/Silvi/Documents/provincias.csv')
> View(provincias)
> provincias <- provincias %>%
+ +   rename(situacion_calle = Personas.en.situación.de.calle..vía.pública.)
Error: objeto 'Personas.en.situación.de.calle..vía.pública.' no encontrado
> provincias <- provincias %>%
+ +   rename(situacion_calle = Personas.en.situacion.de.calle..via.publica.)
Error: objeto 'Personas.en.situacion.de.calle..via.publica.' no encontrado
> # Verifica los nombres de las columnas
> colnames(provincias)
 [1] "ï..Provincia"                                                    
 [2] "Viviendas.particulares..2022."                                   
 [3] "Viviendas.colectivas..2022."                                     
 [4] "PoblaciÃ³n..2022."                                               
 [5] "Personas.en.viviendas.particulares..2022."                       
 [6] "Personas.en.viviendas.colectivas..2022."                         
 [7] "Personas.en.situacion.de.calle..via.publica."                    
 [8] "Viviendas.particulares..2010."                                   
 [9] "Viviendas.colectivas..2010."                                     
[10] "PoblaciÃ³n..2010."                                               
[11] "Personas.en.viviendas.particulares..2010."                       
[12] "Personas.en.viviendas.colectivas..2010."                         
[13] "VariaciÃ³n.de.viviendas.particulares..2010.a.2022."              
[14] "VariaciÃ³n.de.viviendas.colectivas..2010.a.2022."                
[15] "VariaciÃ³n.de.poblaciÃ³n..2010.a.2022."                          
[16] "VariaciÃ³n.de.poblaciÃ³n.en.viviendas.particulares..2010.a.2022."
[17] "VariaciÃ³n.de.poblaciÃ³n.en.viviendas.colectivas..2010.a.2022."  
[18] "CÃ³digo.de.provincia"                                            
[19] "Nombre.de.provincia"                                             
[20] "PoblaciÃ³n.total"                                                
[21] "Total.de.hogares"                                                
[22] "Latitud.del.centroide"                                           
[23] "Longitud.del.centroide"                                          
[24] "Superficie.en.km2"                                               
> 
> # Intenta renombrar la columna usando backticks si contiene caracteres especiales
> provincias <- provincias %>%
+   rename(`situacion_calle` = `Personas.en.situacion.de.calle..via.publica.`)
> 
> # Calculamos la media de personas en situación de calle por provincia
> media_situacion_calle <- provincias %>%
+   group_by(Nombre.de.provincia) %>% #Agrupamos los datos por la columna Nombre.de.provincia.
+   summarise(media_situacion_calle = mean(situacion_calle, na.rm = TRUE)) #Calculamos la media de la columna situacion_calle por cada provincia agrupada, generamos una nueva columna 'media_situacion_calle'
> # Creamos el gráfico de personas en situación de calle por provincias
> ggplot(provincias, aes(x = reorder(Nombre.de.provincia, situacion_calle), y = situacion_calle)) + #indicamos que datos asignamos a cada eje
+   geom_bar(stat = "identity", na.rm = TRUE) + #el tipo de gráfico que realizaremos, podría 
+   coord_flip() +  # Giramos el gráfico para mayor legibilidad
+   labs(title = "Personas en situaciones de calle por Provincias argentinas", #indicamos las etiquetas
+        x = "Provincias",
+        y = "Cantidad de personas en situación de calle") +
+   theme_light() #indicamos el tema, ggplot tiene 8 temas, el genérico es minimal
> # Graficamos con barras apiladas la media
> ggplot(subset(media_situacion_calle, media_situacion_calle > 0), 
+        aes(x = reorder(Nombre.de.provincia, media_situacion_calle), y = media_situacion_calle, fill = media_situacion_calle)) +
+   geom_bar(stat = "identity") +
+   labs(title = "Valor medio de personas en situación de calle por provincia",
+        x = "Provincia",
+        y = "Valor medio de personas en situación de calle") +
+   theme_minimal() +
+   theme(axis.text.x = element_text(angle = 45, hjust = 1),
+         legend.position = "none")  # Eliminamos la leyenda
> # Gráfico comparativo
> ggplot(provincias, aes(x = Nombre.de.provincia, y = Población..2022., fill = situacion_calle)) +
+   geom_bar(stat = "identity", position = "dodge", width = 0.7) +
+   scale_fill_viridis_c() +  # Usaremos una paleta con colores contrastantes
+   labs(title = "Comparación de Población 2022 y personas en situación de calle por provincia",
+        x = "Provincia",
+        y = "Población 2022",
+        fill = "Personas en situación de calle") +
+   theme_minimal() +
+   theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotamos a 45º las etiquetas del eje x
Error in `geom_bar()`:
! Problem while computing aesthetics.
i Error occurred in the 1st layer.
Caused by error:
! objeto 'Población..2022.' no encontrado
Run `rlang::last_trace()` to see where the error occurred.
> 