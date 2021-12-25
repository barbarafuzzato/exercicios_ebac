            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho

            Contexto: Dado que eu acesse a página de produtos do portal EBAC

            Cenário: Seleção do produto
            Quando eu escolher um produto
            E escolher a cor "Blue" e o tamanho "XS"
            Então é possível adicionar no carrinho

            Cenário: Limpar produto selecionado
            Quando eu escolher um produto
            E escolher a cor e/ou o tamanho errado
            Então é possível selecionar limpar para corrigir o erro

            Cenário: Validar até 10 produtos por venda
            Quando eu escolher um produto
            E escolher até no máximo 10 unidades desse produto
            Então é possível adicionar no carrinho

            Cenário: Invalidar mais de 10 produtos por venda
            Quando eu escolher um produto
            E escolher 11 unidades ou mais desse produto
            Então não é possível adicionar no carrinho

            Esquema do Cenário: Selecionar cor e tamanho do produto
            Quando eu digitar a <cor>
            E o <tamanho>
            Então é possível selecionar Comprar ou Limpar

            Exemplos:
            | cor      | tamanho |
            | "Blue"   | "XS"    |
            | "Blue"   | "S"     |
            | "Blue"   | "M"     |
            | "Blue"   | "L"     |
            | "Blue"   | "XL"    |
            | "Orange" | "XS"    |
            | "Orange" | "S"     |
            | "Orange" | "M"     |
            | "Orange" | "L"     |
            | "Orange" | "XL"    |
            | "Red"    | "XS"    |
            | "Red"    | "S"     |
            | "Red"    | "M"     |
            | "Red"    | "L"     |
            | "Red"    | "XL"    |