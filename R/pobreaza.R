library(funcionesINE)
library(xlsx)
library(xlsxjars)
pobreza <- leerLibroNormal('/mnt/datos/GitHub/ResultadosEncovi/Libros/pobrezaCocinado.xlsx')
escribirCSV(pobreza, ruta = '/mnt/datos/GitHub/ResultadosEncovi/CSVENCOVI/')
pobrezaCSV <- leerLibro(ruta = '/mnt/datos/GitHub/ResultadosEncovi/Libros/pobrezaCSV.xlsx')
escribirCSV(lista = pobrezaCSV, ruta = '/mnt/datos/GitHub/ResultadosEncovi/CSV/1/')
anual()
ENC1<- cargaMasiva("/mnt/datos/GitHub/ResultadosEncovi/CSV/1")







g1<- graficaLinea(ENC1$"1_01",rotar = "h")##cAMBIAR
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_01.tex",g1)

g2<- graficaLinea(ENC1$"1_02",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_02.tex",g2)

g4<- graficaColCategorias(ENC1$"1_03",etiquetasCategorias = "A",
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/1_03.tex",etiquetas = "h")

g5<- graficaColCategorias(ENC1$"1_04",etiquetasCategorias = "A",
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/1_04.tex",etiquetas = "h")




g11<- graficaLinea(ENC1$"1_08",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_08.tex",g11)


g3<- graficaLinea(ENC1$"1_09",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_09.tex",g3)


g6<- graficaColCategorias(ENC1$"1_10",etiquetasCategorias = "A",
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/1_10.tex",etiquetas = "h")

g7<- graficaColCategorias(ENC1$"1_11",etiquetasCategorias = "A",
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/1_11.tex",etiquetas = "h")




g8<- graficaLinea(ENC1$"1_13",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_13.tex",g8)

g9<- graficaLinea(ENC1$"1_15",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_15.tex",g9)



g10<- graficaLinea(ENC1$"1_16",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_16.tex",g10)

g10<- graficaLinea(ENC1$"1_18",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_18.tex",g10)
