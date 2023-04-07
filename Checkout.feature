      #language: pt

      Funcionalidade: Tela de cadastro - checkout
      Como cliente da EBAC-SHOP
      Quero fazer concluir meu cadastro
      Para finalizar minha compra

      Contexto:
      Dado que eu acesse a pagina de cadastro do do Portal EBAC

      Esquema do Cenário: Dados obrigatórios
      Quando eu clicar em Finalizar Compra
      E o campo <campo> não estiver preenchido
      Então deve ser exibida a mensagem <mensagem>

      | campo              | mensagem                |
      | nome               | "Informe seu nome"      |
      | sobrenome          | "Informe seu sobrenome" |
      | pais               | "Informe o país"        |
      | endereço           | "Informe o endereço"    |
      | cidade             | "Informe a cidade"      |
      | cep                | "Informe o CEP"         |
      | telefone           | "Informe o telefone"    |
      | endereço de e-mail | "Informe o e-mail"      |

      Cenário: E-mail inválido
      Quando eu clicar em Finalizar Compra
      E o e-mail for inválido
      Então deve ser exibida a mensagem "E-mail inválido!"

      Esquema do Cenário: Campos vazios
      Quando eu clicar em Finalizar Compra
      E o campo <campo> não estiver preenchido
      Então deve ser exibida a mensagem <mensagem>

      | campo                            | mensagem                                                       |
      | nome da empresa                  | "Nome da empresa não informado. Deseja continuar mesmo assim?" |
      | Apartamento, suite, unidade, etc | "Complemento não informado. Deseja continuar mesmo assim?"     |
      | pais                             | "País não informado. Deseja continuar mesmo assim?"            |

Cenário: Finalizar compra
Quando clicar no botão Finalizar Compra
E todos os dados obrigatórios estiverem corretamente preenchidos
Então deve exibir uma mensagem "Deseja finalizar sua compra?" com opções "sim" ou "não"