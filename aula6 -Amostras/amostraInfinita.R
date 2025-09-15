# POPULAÇÃO INFINITA
# Proporção estimada do evento de interesse na população
p <- 0.5

# Erro máximo desejado (fração)
e <- 0.05

# Valor crítico para um nível de confiança de 95%
Z <- 1.96

# Calcular o tamanho da amostra
n <- ceiling((Z^2 * p * (1 - p)) / e^2)

# Exibir o tamanho da amostra
print(n)