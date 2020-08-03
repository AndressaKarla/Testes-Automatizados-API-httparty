# language: pt

@startup
@startupDelete
Funcionalidade: Deletar dados de Startup através da API
    Como um usuário do sistema
    Eu quero realizar as requisições na API
    A fim de deletar as informações da startup

Cenário: Deletar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição para excluir uma Startup
    Então a API irá retornar os dados da exclusão das Startup respondendo o código 200