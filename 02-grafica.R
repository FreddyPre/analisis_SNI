# Graficar la proporcion de DR y DRA
# que pierden el SNI
# leer la data
resumen <- read.csv( file = "results/resumen.csv" )

pay.p <- ggplot(  data = resumen,
                  mapping = aes( x = "",
                                 y = totales,
                                 fill = nobilis ) ) +
  geom_col( color = "black" ) +
  coord_polar( "y" ) +
  theme_void( ) +
  ggtitle( "Miembros que han perdido el SNI" )

# Vis
pay.p

# guardar el grafico
ggsave( filename = "results/pay.png", bg = "white",
        plot = pay.p , width = 7, height = 7 )

# TO-DOs
# iaguilar: Agregar el numero de Drs y Dras en el pay