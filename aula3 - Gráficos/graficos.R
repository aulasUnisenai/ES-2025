# Instalar pacotes
install.packages('plotly')
install.packages('FSA')

# Bibliotecas
library(plotly)
library(FSA)

# Estatísticas descritivas
quantitativas <- c('idade', 'salario')

for (i in quantitativas) {
  cat("===== Resumo da variável", i, "=====\n")
  print(round(Summarize(salarios[[i]]), 4))
  cat("\n")
}

# Barras simples - interativo
plot_ly(x = names(table(salarios$tipoContrato)), 
        y = as.numeric(table(salarios$tipoContrato)), 
        type = 'bar')

# Barras - tradicional
table(salarios$tipoContrato)
windows()
barplot(table(salarios$tipoContrato))

# Pizza  - interativo
plot_ly(labels = salarios$regiao, 
        type = 'pie')

# Pizza - tradicional
table(salarios$regiao)
prop.table(table(salarios$regiao))
windows()
pie(table(salarios$regiao))

# Dispersão - interativo
plot_ly(x = salarios$idade, 
        y = salarios$salario, type = 'scatter', 
        mode = 'markers')

# Dispersão - tradicional
windows()
plot(salarios$idade, salarios$salario)

# Histograma - interativo
plot_ly(x = salarios$salario, type = 'histogram')

# Histograma - tradicional
hist(salarios$salario)

# Boxplot - interativo
plot_ly(x= salarios$satisfacaoEmpresa, 
        y = salarios$salario, type = 'box')

# Boxplot - tradicional
boxplot(salarios$salario)
boxplot(salarios$salario ~salarios$satisfacaoEmpresa)