# Ex. 1
### 1
# Tamanho da população
N <- 10000

# Proporção estimada (40%)
p <- 0.40

# Erro máximo permitido (5%)
e <- 0.05

# Nível de confiança (95%)
Z <- 1.96

# Cálculo do tamanho da amostra
n <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))

# Exibir o tamanho da amostra
cat("Tamanho da amostra necessário:", n, "\n")

# Selecionar a amostra aleatória simples
set.seed(123)  # Para garantir reprodutibilidade
amostra_aleatoria <- sample(1:N, n)

# Exibir os IDs selecionados
print(amostra_aleatoria)


# Ex.2
# Tamanho da população de clientes
N <- 1253

# Proporção estimada de clientes satisfeitos (50%)
p <- 0.5

# Erro máximo permitido (5%)
e <- 0.05

# Nível de confiança de 95% - valor crítico da distribuição normal
Z <- 1.96

# Calcular o tamanho da amostra ajustado para a população finita
n <- ceiling((N * Z^2 * p * (1 - p)) / (N * e^2 + Z^2 * p * (1 - p)))

# Exibir o tamanho da amostra calculado
cat("Tamanho da amostra necessário:", n, "\n")

# Calcular o intervalo de amostragem (a cada quantos clientes será feita a seleção)
k <- ceiling(N / n)

# Selecionar a amostra sistemática (selecionar clientes a cada intervalo k)
amostra_sistematica <- seq(from = 1, to = N, by = k)

# Exibir os clientes selecionados para a amostra
cat("Clientes selecionados para a amostra:", amostra_sistematica, "\n")

# Exibir o número de elementos na amostra
cat("Número de elementos na amostra:", length(amostra_sistematica), "\n")

# Ex. 3
N <- 1000
n <- 100

# calcular intervalo k
k <- N / n

# sorteio inicial
inicio <- 7

# amostra sistemática
amostra_sist <- seq(from = inicio, to = N, by = k)

# 10 primeiros alunos
amostra_sist[1:10]

# tamanho da amostra final
length(amostra_sist)