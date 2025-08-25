# UC06 · Lógica de Programação - Estoque

## 💡 Exercicio Proposto

A empresa **Savinis**, especializada em software de alta performance, solicitou o desenvolvimento de um sistema para controle de estoque de peças. O objetivo é substituir o controle manual por uma solução digital simples, eficiente e de fácil uso para os funcionários.


## 📋 Requisitos

- Controle de estoque para **apenas uma peça**.
- Solicitar o **saldo inicial** da peça ao iniciar o sistema.
- Permitir dois tipos de operação:
  - **Compra (entrada)** de peças.
  - **Venda (saída)** de peças.
- Continuar solicitando operações até o usuário optar por encerrar.
- Validar operações:
  - Compra: soma a quantidade ao estoque.
  - Venda: subtrai a quantidade do estoque, se houver saldo suficiente; caso contrário, exibe mensagem de "Saldo insuficiente".
- Exibir o saldo atualizado após cada operação.
- Ao encerrar, mostrar a mensagem "Sistema encerrado".

## ▶️ Como Executar

1. Abra o arquivo [index.html](index.html) em um navegador.
2. Clique no botão **INICIAR ESTOQUE** para iniciar o sistema.
3. Siga as instruções exibidas nas caixas de diálogo.



## 🔎 Passos Lógicos

1. Aperte o botão **INICIAR ESTOQUE**
2. Solicitar o saldo inicial da peça.
3. Exibir menu de operações: Compra, Venda ou Encerrar.
4. Para cada operação:
   - Se Compra: solicitar quantidade e somar ao saldo.
   - Se Venda: solicitar quantidade e subtrair do saldo, se possível.
   - Validar entradas e exibir mensagens apropriadas.
   - Exibir saldo atualizado.
5. Repetir até o usuário escolher encerrar.
6. Exibir mensagem de encerramento.


## 🛠️ Solução

- 📊 **Fluxograma:**  
  ![Fluxograma](assets/images/Estoque.jpg)

- 📄 **Código em Portugol:**  
  O algoritmo foi desenvolvido utilizando o site [portugol.dev](https://portugol.dev/).  
  Veja o código em: [portugol/estoque.por](portugol/estoque.por)

- 💻 **Código em JavaScript:**  
  Veja a implementação em [js/estoque.js](js/estoque.js).

- 🌐 **Interface HTML:**  
  O sistema pode ser iniciado pelo arquivo [index.html](index.html).


## 🧙‍♂️ Desenvolvedor

**Darlei Mota**  
📍 Aprendiz de Código em Jornada/Senai - Full Stack

🔗 [Github](https://github.com/DarleiMota)  
🔗 [LinkedIn](https://www.linkedin.com/in/darleimota)
