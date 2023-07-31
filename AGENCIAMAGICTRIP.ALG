Algoritmo "AgenciaMagicTrip"
// Disciplina   : [Linguagem e Lógica de Programação]
// Descrição   : Mostrar a lógica por traz do funcionamento
// das funções básicas do site
// Autor(a)    : Ilnara Ackermann
// Data atual  : 22/07/2023
Var
   mDestino: vetor[1..10, 1..3] de caractere // nome, valor, id max 10 itens
   mCliente: vetor[1..10, 1..3] de caractere // nome, nasc, id max 10 itens
   mViagens: vetor[1..10, 1..3] de caractere // nomeCliente, Destino, id max 10 itens
   //serão um total de 3 matrizes simulando um banco de dados
   //matrizDestino terá dados dos destinos como nome e valor
   //matrizCliente terá os dados dos clientes: nome, dataNasc, CPF
   //matrizClienteDestino terá nome do cliente e nome do destino
   //por conta da limitação da linguagem os dados serão em forma de caracter
   // e também serão limitados a 10 itens
   //cadastro simplificado apenas para a demonstração da lógica
   totalCliente, totalDestino, totalViagens, linha, coluna, i, opcao : inteiro
   encontrado : logico
   x : caractere



// Função para cadastro de cliente
procedimento addCliente()
Inicio
 mCliente[totalCliente, 1] <- "c"+Numpcarac(totalCliente)
 escreval ("Nome do cliente:")
 leia (mCliente[totalCliente, 2])
 Escreval("CPF:")
 leia (mCliente[totalCliente, 3])
 totalCliente <- totalCliente +1
Fimprocedimento



// Função para cadastro de Destinos
procedimento addViajens()
Inicio
 mViagens[totalViagens, 1] <- "v"+Numpcarac(totalViagens)
 escreval ("Cliente:")
 leia (mViagens[totalViagens, 2])
 Escreval("Destino:")
 leia (mViagens[totalViagens, 3])
 totalViagens <- totalViagens + 1
Fimprocedimento


// Função para Cadastrar Viajens
procedimento addDestino()
Inicio
 mDestino[totalDestino, 1] <- "v"+Numpcarac(totalDestino)
 escreval ("Destino:")
 leia (mDestino[totalDestino, 2])
 Escreval("Valor:")
 leia (mDestino[totalDestino, 3])
 totalDestino <- totalDestino + 1
Fimprocedimento

// função para mostrar destinos cadastrados
procedimento listarDestino()
Inicio
 escreval("Destinos Cadastrados")
 escreval("----------------------------")
 escreval("ID | Destino| Valor")
 para linha de 1 ate totalDestino-1 faca
      para coluna de 1 ate 3 faca
         escreva(mDestino[linha, coluna]," | ")
      fimpara
      escreval ("")
 fimpara
 escreval("----------------------------")
 escreval ("")
Fimprocedimento

// função para mostrar clientes
procedimento listarClientes()
Inicio
 escreval("Clientes Cadastrados")
 escreval("ID | Nome | CPF ")
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



// função para mostrar destinos e clientes
procedimento listarViajens()
Inicio
 escreval("Viajens Cadastradas")
 escreval("ID | Destino | Cliente")
 escreval("----------------------------")
 para linha de 1 ate totalViagens-1 faca
      para coluna de 1 ate 3 faca
           escreva(mViagens[linha, coluna]," | ")
      fimpara
      escreval ("")
 fimpara
 escreval("----------------------------")
 escreval ("")
Fimprocedimento

procedimento pequisarCliente()
Inicio
 escreval("Insira os dados do cliente")
 leia(x)
 linha<-1
 coluna<-1
 encontrado <- falso
 escreval("ID | Nome | CPF ")
 escreval("----------------------------")
 enquanto (linha<=totalCliente) faca
  se mCliente[linha,coluna]=x então
     para coluna de 1 ate 3 faca
          escreva(mCliente[linha, coluna]," | ")
     fimpara
     escreval ("")
     escreval("----------------------------")
     escreval ("")
     linha<-linha+1
     encontrado <- verdadeiro
  senao
    se coluna < 3 então
    coluna<-coluna+1
    senao
    linha<-linha+1
    fimse
  fimse
 fimenquanto
 se encontrado = falso então
   escreval("cliente não encontrado...")
   escreval ("")
   escreval("----------------------------")
   escreval ("")
 fimse
fimprocedimento




procedimento pequisarDestino()
Inicio
 escreval("Insira os dados do Destino")
 leia(x)
 linha<-1
 coluna<-1
 encontrado <- falso
 escreval("ID | Destino| Valor")
 escreval("----------------------------")
 enquanto (linha<=totalDestino) faca
  se mViagens[linha,coluna]=x então
     para coluna de 1 ate 3 faca
          escreva(mViagens[linha, coluna]," | ")
     fimpara
     escreval ("")
     escreval("----------------------------")
     escreval ("")
     linha<-linha+1
     encontrado <- verdadeiro
  senao
    se coluna < 3 então
    coluna<-coluna+1
    senao
    linha<-linha+1
    fimse
  fimse
 fimenquanto
 se encontrado = falso então
   escreval("Destino não encontrado...")
   escreval ("")
   escreval("----------------------------")
   escreval ("")
 fimse
fimprocedimento



procedimento pequisarViajens()
Inicio
 escreval("Insira os dados da Viajem")
 leia(x)
 linha<-1
 coluna<-1
 encontrado <- falso
 escreval("ID | Destino| Valor")
 escreval("----------------------------")
 enquanto (linha<=totalViagens) faca
  se mDestino[linha,coluna]=x então
     para coluna de 1 ate 3 faca
          escreva(mDestino[linha, coluna]," | ")
     fimpara
     escreval ("")
     escreval("----------------------------")
     escreval ("")
     linha<-linha+1
     encontrado <- verdadeiro
  senao
    se coluna < 3 então
    coluna<-coluna+1
    senao
    linha<-linha+1
    fimse
  fimse
 fimenquanto
 se encontrado = falso então
   escreval("Viajem não encontrada...")
   escreval ("")
   escreval("----------------------------")
   escreval ("")
 fimse
fimprocedimento


//Função para mostrar cliente, dados e destino


// menu com opção cadastrar de cliente, cadastrar  destino,
// escolher destino, mostra clienter, mostra destino, mostrarViajens,
// sair
Inicio
       totalCliente <- 1
       totalDestino <- 1
       totalViagens <- 1

enquanto opcao <> 10 faca
      escreval ("Digite a opção:")
      escreval ("1.Adicionar cliente")
      escreval ("2.Adicionar Destino")
      escreval ("3.Adicionar Viajem")
      escreval ("4.Listar clientes")
      escreval ("5.Listar Destinos")
      escreval ("6.Listar Viajens")
      escreval ("7.Pequisar Clientes")
      escreval ("8.Pequisar Destinos")
      escreval ("9.Pequisar Viajens")
      escreval ("10.Sair do menu")
      leia (opcao)
      limpatela
      escolha opcao
      caso 1
         se totalCliente < 11 entao
            addCliente()
         senao
            escreval ("Não é possível acrescentar mais clientes")
         fimse
      caso 2
         se totalDestino < 11 entao
            addDestino()
         senao
            escreval ("Não é possível acrescentar mais destinos")
         fimse
      caso 3
         se totalViagens < 11 entao
            addViajens()
         senao
            escreval ("Não é possível acrescentar mais viajens")
         fimse
      caso 4
         se totalCliente > 1 entao
            listarClientes()
         senao
            escreval (" Não há clientes cadastrados")
         fimse
      caso 5
         se totalDestino > 1 entao
            listarDestino()
         senao
            escreval (" Não há destinos cadastrados")
         fimse
      caso 6
         se totalViagens > 1 entao
            listarViajens()
         senao
            escreval ("Não há viajens cadastrados")
         fimse
      caso 7
         se totalCliente > 1 entao
            pequisarCliente()
         senao
            escreval (" Não há clientes cadastrados")
         fimse
      caso 8
         se totalViagens < 11 entao
            addViajens()
         senao
            escreval ("Não é possível acrescentar mais viajens")
         fimse
      caso 9
         se totalViagens > 1 entao
            pequisarViajens()
         senao
            escreval ("Não há viajens cadastrados")
         fimse
      caso 9
         escreval ("Saindo do programa...")
      outrocaso
         escreval ("Opção inválida")
      fimescolha
   fimenquanto

Fimalgoritmo






