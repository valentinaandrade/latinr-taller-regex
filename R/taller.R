#Cargar base de datos
pacman::p_load("tidyverse", "janitor", "devtools", "datos")

remotes::install_github("cienciadedatos/datos")

# \ [] () ? {} . * | ^ + - !

# Funciones filter
datos::paises

paises %>% filter(pais == "Argentina")

## Con stringr
paises %>%  
  filter(str_detect(pais, "Corea")) %>% 
  count(pais)

paises %>%  
  filter(str_detect(pais, "Per"))

# tolower y toupper()

paises %>%  
  filter(str_detect(pais, "M[e|é]xico"))

## Cargar datos reales
animales <- read.csv("datos/animales.csv")
camarones <- read.csv("datos/casen_camarones.csv")
telefonos <- read.csv("datos/telefonos.csv", fileEncoding = "UTF-8")

## Explorar
telefonos %>% 
  count(ciudad)

telefonos %>% 
  filter(str_detect(ciudad,"quilpu[e|é]"))

telefonos %>% 
  filter(str_detect(ciudad,"[V|v]alpara[i|í]so"))

# Casewhen
telefonos <- telefonos %>% 
  mutate(ciudad = case_when(
    str_detect(ciudad,"[V|v]alpara[i|í]so") ~  "Valparaíso",
    str_detect(ciudad,"quilpu[e|é]") ~ "Quipué",
    str_detect(ciudad,"Serena") ~ "La Serena",
               TRUE ~ as.character(ciudad))) 

telefonos %>% 
  count(ciudad)


## Segunda parte --------------
peliculas <- read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2020/2020-02-19/ranking_imdb.csv")


# separate () -------------------------------------------------------------

peliculas %>% 
  separate(genero, into= c("genero_principal", "genero"),
           sep = ", ", remove = FALSE, extra = "merge")


# separate_rows() ----------------------------------------------------
peliculas %>% 
  separat_rowse(genero, sep = ", ")

# pivot_longer() ----------------------------------------------------

pinguinos <- datos::pinguinos

pinguinos <- pinguinos %>% 
  pivot_longer(largo_pico_mm:masa_corporal_g, names_pattern= "(.*_.*)_(.*)",
               names_to = c("variable", "unidad"))
