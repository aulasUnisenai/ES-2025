# parâmetros
N <- 1000
Z <- 1.96
p <- 0.5
e <- 0.05

# tamanho da amostra (população finita)
n <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))

# intervalo k
k <- ceiling(N / n)

# sorteio do ponto inicial
inicio <- sample(1:k, 1)

# amostra sistemática
amostra_sistematica <- seq(from = inicio, to = N, by = k)

print(amostra_sistematica)
length(amostra_sistematica)
