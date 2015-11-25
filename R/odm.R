##############################OBJETIVOS DEL MILENIO#########################################
library(funcionesINE)
library(xlsx)
library(xlsxjars)
odm <- leerLibroNormal('/mnt/datos/GitHub/ResultadosEncovi/Libros/odmCocinado.xlsx')
escribirCSV(odm, ruta = '/mnt/datos/GitHub/CSVENCOVI/')
odmCSV <- leerLibro(ruta = '/mnt/datos/GitHub/ResultadosEncovi/Libros/odmCSV.xlsx')
escribirCSV(lista = odmCSV, ruta = '/mnt/datos/GitHub/ResultadosEncovi/CSV/3/')
anual()
ENC3<- cargaMasiva("/mnt/datos/GitHub/ResultadosEncovi/CSV/3")
g1<- graficaColCategorias(ENC3$"3.1",etiquetasCategorias = "A",
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/3_01.tex",etiquetas = "h")
g2<- graficaColCategorias(ENC3$"3.2",etiquetasCategorias = "A",
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/3_02.tex",etiquetas = "h")


g5<- graficaCol(ENC3$"3.5", ordenar = F)
g5 <- etiquetasHorizontales(g5)
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/3_05.tex",g5)




g8<- graficaColCategorias(ENC3$"3.8",etiquetasCategorias = "A", ancho = 0.6,
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/3_08.tex",etiquetas = "h")

g9<- graficaColCategorias(ENC3$"3.9",etiquetasCategorias = "A", ancho = 0.6,
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/3_09.tex",etiquetas = "h")

g10<- graficaCol(ENC3$"3.10", ordenar = F)
g10 <- etiquetasHorizontales(g10)
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/3_10.tex",g10)


g11<- graficaCol(ENC3$"3.11", ordenar = F, ancho = 0.5)
g11 <- etiquetasHorizontales(g11)
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/3_11.tex",g11)


g12<- graficaCol(ENC3$"3.12", ordenar = F)
g12 <- etiquetasHorizontales(g12)
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/3_12.tex",g12)


g13<- graficaColCategorias(ENC3$"3.13",etiquetasCategorias = "A", ancho = 0.6,
                           ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/3_13.tex",etiquetas = "h")



g14<- graficaCol(ENC3$"3.14", ordenar = F)
g14 <- etiquetasHorizontales(g14)
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/3_14.tex",g14)



g15<- graficaCol(ENC3$"3.15", ordenar = F)
g15 <- etiquetasHorizontales(g15)
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/3_15.tex",g15)

g16<- graficaCol(ENC3$"3.16", ordenar = F)
g16 <- etiquetasHorizontales(g16)
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/3_16.tex",g16)


g17<- graficaBar(ENC3$"3.17")
g17 <- etiquetasBarras(g17)
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/3_17.tex",g17)

g18<- graficaLinea(ENC3$"3.18",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/3_18.tex",g18)
