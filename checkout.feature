            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a página de cadastro

            Cenário: Campo e-mail com formato inválido
            Quando eu tentar realizar a compra
            E o campo "E-mail" não estiver no formato "xxx@ebac.com.br"
            Então deve exibir a mensagem de erro: "E-mail inválido!"

            Cenário: Validar cadastro com todos os dados obrigatórios marcados com asterisco
            Quando eu preencher todos os campos obrigatórios, marcados com asteriscos
            E todos os campos estiverem corretos
            Então é possível finalizar a compra

            Esquema do Cenário: Campos Obrigatórios
            Quando eu tentar realizar a compra
            E deixar o <campo> em branco
            Então deve exibir a <mensagem> de alerta

            Exemplos:
            | campo                | mensagem             |
            | "Nome"               | "Campo obrigatório!" |
            | "Sobrenome"          | "Campo obrigatório!" |
            | "País"               | "Campo obrigatório!" |
            | "Endereço"           | "Campo obrigatório!" |
            | "Cidade"             | "Campo obrigatório!" |
            | "CEP"                | "Campo obrigatório!" |
            | "Telefone"           | "Campo obrigatório!" |
            | "Endereço de e-mail" | "Campo obrigatório!" |