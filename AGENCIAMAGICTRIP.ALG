Algoritmo "AgenciaMagicTrip"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Descri��o   : Mostrar a l�gica por traz do funcionamento
// das fun��es b�sicas do site
// Autor(a)    : Ilnara Ackermann
// Data atual  : 22/07/2023
Var
   mDestino: vetor[1..10, 1..2] de caractere // nome, valor max 10 itens
   mCliente: vetor[1..10, 1..3] de caractere // nome, nasc, CPF max 10 itens
   mViagens: vetor[1..10, 1..2] de caractere // nomeCliente, Destino max 10 itens
   //ser�o um total de 3 matrizes simulando um banco de dados
   //matrizDestino ter� dados dos destinos como nome e valor
   //matrizCliente ter� os dados dos clientes: nome, dataNasc, CPF
   //matrizClienteDestino ter� nome do cliente e nome do destino
   //por conta da limita��o da linguagem os dados ser�o em forma de caracter
   // e tamb�m ser�o limitados a 10 itens
   //cadastro simplificado apenas para a demonstra��o da l�gica
   totalCliente, totalDestino, totalViagens, linha, coluna, i, opcao : inteiro



// Fun��o para cadastro de cliente
procedimento addCliente()
Inicio
 escreval ("Nome do cliente:")
 leia (mCliente[totalCliente, 1])
 Escreval("Data de nascimento:")
 leia (mCliente[totalCliente, 2])
 Escreval("CPF:")
 leia (mCliente[totalCliente, 3])
 totalCliente <- totalCliente +1
Fimprocedimento



// Fun��o para cadastro de Destinos
procedimento addViajens()
Inicio
 escreval ("Cliente:")
 leia (mViagens[totalViagens, 1])
 Escreval("Destino:")
 leia (mViagens[totalViagens, 2])
 totalViagens <- totalViagens + 1
Fimprocedimento


// Fun��o para Cadastrar Viajens
procedimento addDestino()
Inicio
 escreval ("Destino:")
 leia (mDestino[totalDestino, 1])
 Escreval("Valor:")
 leia (mDestino[totalDestino, 2])
 totalDestino <- totalDestino + 1
Fimprocedimento

// fun��o para mostrar destinos cadastrados
procedimento listarDestino()
Inicio
 escreval("Destinos Cadastrados")
 escreval("----------------------------")
 escreval("Destino| Valor")
 para linha de 1 ate totalDestino-1 faca
      para coluna de 1 ate 2 faca
         escreva(mDestino[linha, coluna]," | ")
      fimpara
      escreval ("")
 fimpara
 escreval("----------------------------")
 escreval ("")
Fimprocedimento

// fun��o para mostrar clientes
procedimento listarClientes()
Inicio
 escreval("Clientes Cadastrados")
 escreval("Nome | Nascimento | CPF")
 escreval("----------------------------")
 para linha de 1 ate totalCliente-1 faca
      para coluna de 1 ate 3 faca
         escreva(mCliente[linha, coluna]," | ")
      fimpara
      escreval ("")
 fimpara
 escreval("----------------------------")
 escreval ("")
Fimprocedimento



// fun��o para mostrar destinos e clientes
procedimento listarViajens()
Inicio
 escreval("Viajens Cadastradas")
 escreval("Destino| Cliente")
 escreval("----------------------------")
 para linha de 1 ate totalViagens-1 faca
      para coluna de 1 ate 2 faca
           escreva(mViagens[linha, coluna]," | ")
      fimpara
      escreval ("")
 fimpara
 escreval("----------------------------")
 escreval ("")
Fimprocedimento




//Fun��o para mostrar cliente, dados e destino


// menu com op��o cadastrar de cliente, cadastrar  destino,
// escolher destino, mostra clienter, mostra destino, mostrarViajens,
// sair
Inicio
       totalCliente <- 1
       totalDestino <- 1
       totalViagens <- 1

enquanto opcao <> 7 faca
      escreval ("Digite a op��o:")
      escreval ("1.Adicionar cliente")
      escreval ("2.Adicionar Destino")
      escreval ("3.Adicionar Viajem")
      escreval ("4.Listar clientes")
      escreval ("5.Listar Destinos")
      escreval ("6.Listar Viajens")
      escreval ("7.Sair do menu")
      leia (opcao)
      limpatela
      escolha opcao
      caso 1
         se totalCliente < 11 entao
            addCliente()
         senao
            escreval ("N�o � poss�vel acrescentar mais clientes")
         fimse
      caso 2
         se totalDestino < 11 entao
            addDestino()
         senao
            escreval ("N�o � poss�vel acrescentar mais destinos")
         fimse
      caso 3
         se totalViagens < 11 entao
            addViajens()
         senao
            escreval ("N�o � poss�vel acrescentar mais viajens")
         fimse
      caso 4
         se totalCliente > 1 entao
            listarClientes()
         senao
            escreval (" N�o h� clientes cadastrados")
         fimse
      caso 5
         se totalDestino > 1 entao
            listarDestino()
         senao
            escreval (" N�o h� destinos cadastrados")
         fimse
      caso 6
         se totalViagens > 1 entao
            listarViajens()
         senao
            escreval ("N�o h� viajens cadastrados")
         fimse
      caso 7
         escreval ("Saindo do programa...")
      outrocaso
         escreval ("Op��o inv�lida")
      fimescolha
   fimenquanto

Fimalgoritmo





