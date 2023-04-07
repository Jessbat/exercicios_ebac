      #language: pt

      Funcionalidade: Configurar produto
      Como cliente da EBAC-SHOP
      Quero configurar meu produto de acordo com meu tamanho e gosto
      E escolher a quantidade
      Para depois inserir no carrinho

      Contexto:
      Dado que eu acesse a pagina de produto do portal EBAC

      Esquema do Cenário: Cor, tamanho e quantidade obrigatorios
      Quando clicar em Comprar
      E não selecionar o campo <campo>
      Então deve exibir a mensagem <msg>

      | campo      | mensagem                                  |
      | cor        | "Você não selecionou a cor desejada"      |
      | tamanho    | "Você não selecionou o tamanho desejado!" |
      | quantidade | "Você não indicou a quantidade desejada!" |

Cenário: Deve permitir apenas 10 produtos por venda
Quando clicar em comprar
E a quantidade selecionada for acima de 10
Então deve exibir a mensagem "Você ultrapassou o limite de 10 itens"

Cenário: Ao clicar no botão “limpar” deve voltar ao estado original
Quando clicar no botão Limpar
Então deve removar todas as seleções feitas anteriormente



