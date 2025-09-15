# População finita
# Tamanho da população
N <-1000

# Proporção do evento
p <- 0.5

# Erro máximo desejado
e <- 0.05

# Valor crítico (95%)
Z <- 1.96

# Calcular o tamanho da amostra
n_finito <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))