# 1-a
urna <- 40
multiplos_cinco <- urna %/%5
prob_cinco <- multiplos_cinco/urna
prob_cinco

# 1-b
urna <- 40
quadrado <- c(1,2,3,4,5,6)
prob_quadrado <- length(quadrado)/urna
prob_quadrado

# 2
bugs <- 10
novas_funcionalidades <- 12
melhorias <-8

total <- bugs + novas_funcionalidades + melhorias
probabilidade_funcionalidades <- novas_funcionalidades/total
probabilidade_funcionalidades

# 3
registrar_falha <- 0.836
nao_registra_falha <- 1 - registrar_falha
nao_registra_falha

# 4
sucesso <- 0.5
falha <- 1 - sucesso

probabilidade_total <- (sucesso^3) * falha
probabilidade_total

# 5
teste_1_passar <- 1 - 0.5
teste_2_passar <- 1 - 0.25
teste_3_passar <- 1 - 0.4

testes_passar <- teste_1_passar * teste_2_passar * teste_3_passar
testes_passar
