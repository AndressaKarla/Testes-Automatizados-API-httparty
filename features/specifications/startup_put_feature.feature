# language: pt

@startup
@startupPut
Funcionalidade: Alterar dados de Startup através da API
    Como um usuário do sistema
    Eu quero realizar as requisições na API
    A fim de alterar as informações da startup

Cenário: Alterar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição para alterar uma Startup
    Então a API irá retornar os dados da Startup alterados respondendo o código 200