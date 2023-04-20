                  #language: pt

                  Funcionalidade: Configurar produto
                  Como cliente da EBAC-SHOP
                  Quero configurar meu produto de acordo com meu tamanho e gosto
                  E escolher a quantidade
                  Para depois inserir no carrinho

                  Contexto:
                  Dado que eu acesse a pagina de produto do portal EBAC

                  Cenário: Cor, tamanho e quantidade obrigatorios
                  Quando clicar em Comprar
                  E não selecionar o campo cor, tamanho ou quantidade
                  Então deve exibir a mensagem "Campos obrigatórios não preenchidos"

                  Esquema do Cenário: Deve permitir apenas 10 produtos por venda
                  Quando clicar em comprar
                  E a quantidade selecionada for <quantidade>
                  Então deve exibir a mensagem <mensagem>

                  Exemplos:
                  | quantidade | mensagem                                    |
                  | 11         | Você excedeu a quantidade máxima permitida! |
                  | 8          | Adicionado ao carrinho com sucesso!         |

Cenário: Ao clicar no botão “limpar” deve voltar ao estado original
Quando clicar no botão Limpar
Então deve removar todas as seleções feitas anteriormente



