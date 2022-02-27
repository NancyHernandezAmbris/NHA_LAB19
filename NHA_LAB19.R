# Hecho con gusto POR NANCY HERNANDEZ AMBRIS
#LABORATORIO - GRÁFICOS EN R CON GGPLOT2
#FACETING (ROMPER UNA GRÁFICA EN VARIAS DENTRO DE UNA CUADRÍCULA)

#instalando paquete 
install.packages("ggplot2")


# cargar libreria ggplot2 
library(ggplot2)


#buscar df

file.choose()

# leer base
densidad_verde <-read.csv("C:\\Users\\Nancy\\Desktop\\Doctorado\\Asignaturas\\Complejidad económica\\Labs\\LAB19\\PARA FACETING.csv")

#ver nombres
names(densidad_verde)

# colocando grafica base
p <- ggplot(data = densidad_verde,
            mapping = aes(x = DENSITY,
                          y = PCI.2018,
                          color = Region)) + 
  geom_point()


# crear objeto p
p

# facet_wrap (recomendado con una variable)
p + facet_wrap (~Region)

# manipulando número de filas
p + facet_wrap(~Region, nrow = 3)

# manipulando número de columnas
p + facet_wrap(~ Region, ncol = 5)


