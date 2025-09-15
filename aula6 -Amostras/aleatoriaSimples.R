# Aleatória Simples
set.seed(123)

# Tamanho da amostra
N <- 1000
Z <- 1.96
e <- 0.05
p <- 0.5
n <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))

# Realizar amostra
amostra <- sample(1:N, n, replace = FALSE)

# Exibir amostra
print(amostra)
length(amostra)