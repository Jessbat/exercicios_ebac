      #language: pt

      Funcionalidade: Login na plataforma
      Como cliente da EBAC-SHOP
      Quero fazer o login (autenticação) na plataforma
      Para visualizar meus pedidos

      Contexto:
      Dado que eu acesse a pagina de login do Portal EBAC

      Cenário: Usuário com dados válidos
      Quando eu digitar o usuário "jessica@ebac.com.br"
      E a senha "jessica@123"
      Então deve ser direcionado para a tela de checkout

      Esquema do Cenário: Usuário com dados inválidos
      Quando eu digitar o usuário <usuario>
      E a senha <senha>
      Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

      Exemplos:
      | usuario              | senha       |
      | jessica@ebac.com.br  | shushu      |
      | hauhaaha@ebac.com.br | jessica@123 |

Cenário: Campos não preenchidos
Quando eu clicar em Login
E os campos E-mail e Senha não estiverem preenchidos
Então deve ser exibida a mensagem "Erro. Tente novamente"


