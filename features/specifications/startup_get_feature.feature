# language: pt

@startup
@startupGet
Funcionalidade: Obter dados de Startup através da API
    Como um usuário do sistema
    Eu quero realizar as requisições na API
    A fim de obter as informações da startup

Cenário: Consultar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição passando o ID da Startup
    Então a API irá retornar os dados da Startup correspondente respondendo o código 200