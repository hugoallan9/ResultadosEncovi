library(funcionesINE)
library(xlsx)
library(xlsxjars)
pobreza <- leerLibroNormal('/mnt/datos/GitHub/ResultadosEncovi/Libros/pobrezaCocinado.xlsx')
escribirCSV(pobreza, ruta = '/mnt/datos/GitHub/ResultadosEncovi/CSVENCOVI/')
pobrezaCSV <- leerLibro(ruta = '/mnt/datos/GitHub/ResultadosEncovi/Libros/pobrezaCSV.xlsx')
escribirCSV(lista = pobrezaCSV, ruta = '/mnt/datos/GitHub/ResultadosEncovi/CSV/3/')
anual()
ENC1<- cargaMasiva("/mnt/datos/GitHub/ResultadosEncovi/CSV/1")







g1<- graficaLinea(ENC1$"1.1",rotar = "h")##cAMBIAR
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_01.tex",g1)

g2<- graficaLinea(ENC1$"1.2",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_02.tex",g2)

g4<- graficaColCategorias(ENC1$"1.3",etiquetasCategorias = "A",
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/1_03.tex",etiquetas = "h")

g5<- graficaColCategorias(ENC1$"1.4",etiquetasCategorias = "A",
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/1_04.tex",etiquetas = "h")




g11<- graficaLinea(ENC1$"1.6",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_06.tex",g11)


g3<- graficaLinea(ENC1$"1.7",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_07.tex",g3)


g6<- graficaColCategorias(ENC1$"1.8",etiquetasCategorias = "A",
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/1_08.tex",etiquetas = "h")

g7<- graficaColCategorias(ENC1$"1.9",etiquetasCategorias = "A",
                          ruta = "/mnt/datos/GitHub/ResultadosEncovi/graficas/1_09.tex",etiquetas = "h")




g8<- graficaLinea(ENC1$"1.11",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_11.tex",g8)

g9<- graficaLinea(ENC1$"1.12",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_12.tex",g9)



g10<- graficaLinea(ENC1$"1.14",rotar = "h")
exportarLatex("/mnt/datos/GitHub/ResultadosEncovi/graficas/1_14.tex",g10)
