algoritmo "vetorContSomaMedia60"
// Ler 60 idades e armazena nos vetores correspondentes
// conta quantas idades foram inseridas em cada vetores
// faz as m�dias das faixas et�rias e a m�dia geral

var
    idade: vetor[1..60] de inteiro
    menor: vetor[1..60] de inteiro
    adulto: vetor[1..60] de inteiro
    idoso: vetor[1..60] de inteiro
    intervalo: inteiro
    contador_idade, contador_menor, contador_adulto, contador_idoso: inteiro
    soma_idade, soma_menor, soma_adulto, soma_idoso: inteiro
    media_idade, media_menor, media_adulto, media_idoso: real

inicio

escreval("Digite 60 idades:")

para intervalo de 1 ate 60 faca
  leia(idade[intervalo])
  contador_idade := contador_idade + 1
  soma_idade := soma_idade + idade[intervalo]
  media_idade <- soma_idade / contador_idade

         se (idade[intervalo] >= 0) e (idade[intervalo] <= 18) entao
            menor[intervalo] <- idade[intervalo]
             contador_menor := contador_menor + 1           // contador
             soma_menor := soma_menor + idade[intervalo]    // soma das idades
             media_menor <- soma_menor / contador_menor     // m�dia das idades
         fimse

         se (idade[intervalo] >= 19) e (idade[intervalo] <=60) entao
            adulto[intervalo] <- idade[intervalo]
             contador_adulto := contador_adulto + 1
             soma_adulto := soma_adulto + idade[intervalo]
             media_adulto <- soma_adulto / contador_adulto
         fimse

         se idade[intervalo] > 61 entao
            idoso[intervalo] <- idade[intervalo]
            contador_idoso := contador_idoso + 1
            soma_idoso := soma_idoso + idade[intervalo]
            media_idoso <- soma_idoso / contador_idoso
         fimse
fimpara

limpatela

// Impress�o das idades por faixas et�rias
escreval("Idades por faixa et�ria")
   escreva ("Menores: ")
   para intervalo de 1 ate contador_idade faca
      escreva (menor[intervalo], ",")
   fimPara
   escreval("")
   escreva ("Adultos: ")
   para intervalo de 1 ate contador_idade faca
      escreva (adulto[intervalo], ",")
   fimPara
   escreval("")
      escreva ("Idosos : ")
   para intervalo de 1 ate contador_idade faca
      escreva (idoso[intervalo], ",")
   fimPara
   escreval("")
   escreval("")

escreval("-------------------------------------------------------------------")

// Impress�o de quantidades de pessoas por faixa et�ria
escreval("Quantidade de pessoas da faixa et�ria dos Menores: ", contador_menor)
escreval("Quantidade de pessoas da faixa et�ria dos Adultos: ", contador_adulto)
escreval("Quantidade de pessoas da faixa et�ria dos Idosos : ", contador_idoso)

escreval("-------------------------------------------------------------------")

// M�dia das idades por faixas et�rias
escreval("M�dia da faixa et�ria dos Menores: ", media_menor)
escreval("M�dia da faixa et�ria dos Adultos: ", media_adulto)
escreval("M�dia da faixa et�ria dos Idosos : ", media_idoso)

escreval("-------------------------------------------------------------------")

// M�dia geral de todas as idades
escreva("M�dia geral de todas idades: ", media_menor + media_adulto + media_idoso / 3)
fimalgoritmo
