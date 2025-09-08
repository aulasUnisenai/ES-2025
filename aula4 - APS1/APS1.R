# Bibliotecas
library(FSA)
library(plotly)

# 1.
cat("Base que contempla o desempenho de alunos em três testes")

# 2.
quantitativas <- c("nota_matematica", "nota_redacao", "nota_leitura")
qualitativas <- c("sexo", "etnia", "preparacao_teste")

# 3. Estatísticas descritivas
for (i in quantitativas) {
  cat("===== Resumo da variável", i, "=====\n")
  print(round(Summarize(alunos[[i]]), 4))
  cat("\n")
}

# 4. Proporções
for (i in qualitativas) {
  cat("===== Proporção da variável", i, "=====\n")
  print(prop.table(table(alunos[[i]])) * 100)
  cat("\n")
}

# 5.Resumo

# 6. Histogramas
plot_ly(x= alunos$nota_matematica, type ='histogram')
plot_ly(x= alunos$nota_leitura, type ='histogram')
plot_ly(x= alunos$nota_redacao, type ='histogram')

hist(alunos$nota_matematica)
hist(alunos$nota_leitura)
hist(alunos$nota_redacao)

# 7. Proporção
prop.table(table(alunos$sexo, alunos$preparacao_teste), 2)

# 8. Boxplot e resumo (matemática)
plot_ly(x= alunos$preparacao_teste, 
        y = alunos$nota_matematica, type='box')

boxplot(alunos$nota_matematica ~alunos$preparacao_teste)

Summarize(alunos$nota_matematica ~ alunos$preparacao_teste)

# 9. Boxplot e resumo (redação)
plot_ly(x= alunos$sexo, 
        y = alunos$nota_redacao, type='box')

boxplot(alunos$nota_redacao ~ alunos$sexo)

Summarize(alunos$nota_redacao ~ alunos$sexo)

# 10. Preparo por grupo
prop.table(table(alunos$preparacao_teste, alunos$etnia), 2)

# 11. Boxplot e resumo (matemática x grupos)
plot_ly(x= alunos$etnia, 
        y = alunos$nota_matematica, type='box')

boxplot(alunos$nota_matematica ~ alunos$etnia)

Summarize(alunos$nota_matematica ~ alunos$etnia)

# 12. Grupos x sexo
prop.table(table(alunos$sexo, alunos$etnia), 2)