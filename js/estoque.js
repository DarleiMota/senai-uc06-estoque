function iniciarEstoque() {
  
  let validar = true;
  let saldo_inicial = parseInt(prompt("Digite o saldo inicial para um tipo de peça:"));
  let saldo_atual = saldo_inicial;

  while (validar) {

    let opcao = parseInt(prompt(
      "==== Menu ====\n" +
      "1 - Compra (entrada)\n" +
      "2 - Venda (saída)\n" +
      "3 - Encerrar\n" +
      "Escolha uma opção:"
    ));

    switch (opcao) {
      case 1:
        let compra = parseInt(prompt("Quantidade da compra:"));
        if (compra > 0) {
          saldo_atual += compra;
          alert("Compra adicionada. Saldo atual: " + saldo_atual);
        } else {
          alert("Quantidade inválida! Digite um valor maior que 0.");
        }
        break;

      case 2:
        let venda = parseInt(prompt("Quantidade da venda:"));
        if (venda > 0) {
          if (venda <= saldo_atual) {
            saldo_atual -= venda;
            alert("Venda realizada. Saldo atual: " + saldo_atual);
          } else {
            alert("Saldo insuficiente! A quantidade " + venda + " é maior que o saldo atual " + saldo_atual);
          }
        } else {
          alert("Quantidade inválida! Digite um valor maior que 0.");
        }
        break;

      case 3:
        alert("Programa encerrado. Saldo final: " + saldo_atual);
        validar = false;
        break;

      default:
        alert("Opção inválida! Digite 1, 2 ou 3.");
        break;
    }
    
    // Valida se o usurio deseja continuar (True/False)
    validar = confirm("Deseja continuar no programa?");

    // Sai do loop se o usuário clicar em Cancelar
    if (!validar) {
      alert(`Programa encerrado. Saldo final: ${saldo_atual}`);
      break; 
    }
  }
}