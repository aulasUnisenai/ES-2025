# Pacotes
#install.packages("readxl") 

# Separar turmas
turma_a <- subset(idade, turma =="a")
turma_b <- subset(idade, turma =="b")

## Medidas de tendência central ##

# Média
media_a <- mean(turma_a$idade)
media_a

# Mediana
mediana_a <- median(turma_a$idade)
mediana_a

# Moda
# Tabela de idades
table(turma_a$idade)

moda_a <- as.numeric(names(which.max(table(turma_a$idade))))
moda_a

## Medidas de dispersão ##

# Amplitude
amplitude_a <- max(turma_a$idade) - min(turma_a$idade)
amplitude_a

# Variância
variancia_a <- var(turma_a$idade)
variancia_a

# Desvio padrão
desvio_a <- sd(turma_a$idade) # sqrt(variancia_a) 
desvio_a

coef_variacao_a <- (desvio_a/media_a) * 100 
coef_variacao_a

## Automático
#install.packages("FSA")
library(FSA)
Summarize(idade$idade~idade$turma) 