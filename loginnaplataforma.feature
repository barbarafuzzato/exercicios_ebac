            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joseernesto@ebac.com.br"
            E a senha "Gherkin12!"
            Então deve exibir uma mensagem de boas vindas "Olá José!"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "errado@ebac.com.br"
            E a senha "Gherkin12!"
            Então deve exibir uma mensagem de alerta: "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joseernesto@ebac.com.br"
            E a senha "errado"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                       | senha        | mensagem        |
            | "joseernesto@ebac.com.br"     | "Gherkin12!" | "Olá José!"     |
            | "albertocardoso@ebac.com.br"  | "Carto%88"   | "Olá Alberto!"  |
            | "giovannasampaio@ebac.com.br" | "Sampa#45"   | "Olá Giovanna!" |
            | "thaisviana@ebac.com.br"      | "76!Vitha"   | "Olá Thais!"    |