                  #language: pt

                  Funcionalidade: Tela de cadastro - checkout
                  Como cliente da EBAC-SHOP
                  Quero fazer concluir meu cadastro
                  Para finalizar minha compra

                  Contexto:
                  Dado que eu acesse a pagina de cadastro do do Portal EBAC

                  Cenário: Dados obrigatórios
                  Quando eu clicar em Finalizar Compra
                  E campos obrigatórios não estiverem preenchidos
                  Então deve ser exibida a mensagem "Campo obrigatório não preenchido!"

                  Esquema do Cenário: E-mail inválido
                  Quando eu clicar em Finalizar Compra
                  E o e-mail for <email>
                  Então deve ser exibida a mensagem <mensagem>

                  Exemplos:
                  | email               | mensagem                  |
                  | jessica.ebac.com.br | ERRO! E-mail inválido!    |
                  | ebac@ebac@com.br    | ERRO! E-mail inexistente! |

Cenário: Campos vazios
Quando eu clicar em Finalizar Compra
E campos não obrigatórios estiverem em branco
Então deve ser exibida a mensagem "Existem campos que não foram preenchidos, deseja continuar mesmo assim?"

Cenário: Finalizar compra
Quando clicar no botão Finalizar Compra
E todos os dados obrigatórios estiverem corretamente preenchidos
Então deve exibir uma mensagem "Deseja finalizar sua compra?" com opções "sim" ou "não"