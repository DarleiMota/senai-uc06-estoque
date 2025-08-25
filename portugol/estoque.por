programa {
  funcao inicio() {
    //variáveis 
    inteiro saldo_inicial, saldo_atual, opcao, quantidade
    logico validar = verdadeiro
    caracter continuar

    // Inicialização da opção para entrar no loop
    opcao = 0

    // Entrada do saldo inicial
    escreva("\nPrograma de estoque de peças")
    escreva("\nDigite o saldo inicial para um tipo de peça: ")
    leia(saldo_inicial)
    saldo_atual = saldo_inicial

    enquanto(validar){

      escreva("\n\n==== Menu ====") 
      escreva("\n1 - Compra (entrada)")
      escreva("\n2 - Venda (saída)")
      escreva("\n3 - Encerrar")
      escreva("\nEscolha uma opção: ")
      
      leia(opcao)

      escolha(opcao){
        caso 1:
          escreva("\nQuantidade da compra: ")
          leia(quantidade)
          se(quantidade > 0){
            saldo_atual = saldo_atual + quantidade
            escreva("\nCompra adicionada. Saldo atual: ", saldo_atual)
          } senao {
            escreva("\nQuantidade inválida!")
            escreva("\nDigite um valor maior que 0")
          }
          pare
        
        caso 2:
          escreva("\nQuantidade da venda: ")
          leia(quantidade)
          se(quantidade > 0){
            se(quantidade <= saldo_atual){
              saldo_atual = saldo_atual - quantidade
              escreva("\nVenda realizada. Saldo atual: ", saldo_atual)
            } senao {
              escreva("\nSaldo insuficiente!")
              escreva("\nQuantidade ", quantidade, " é maior que saldo atual ", saldo_atual)
            }
          } senao {
            escreva("\nQuantidade inválida!")
            escreva("\nDigite um valor maior que 0")
          }
          pare
        
        caso 3:
          escreva("\nPrograma encerrado. Saldo final: ", saldo_atual)
          validar = falso
          pare
        
        caso contrario:
          escreva("\nOpção inválida! Digite 1, 2 ou 3")
          pare
      }

      // Pergunta ao usuário se deseja continuar
      escreva("\nDeseja continuar? (s/n): ")
      leia(continuar)
      se(continuar == "n" ou continuar == "N"){
        escreva("\nPrograma encerrado. Saldo final: ", saldo_atual)
        validar = falso
        pare
      }

    }
  }
}