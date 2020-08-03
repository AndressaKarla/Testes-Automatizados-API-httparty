# language: pt

@startup
@startupPost
Funcionalidade: Cadastrar dados de Startup através da API
    Como um usuário do sistema
    Eu quero realizar as requisições na API
    A fim de manipular as informações do cadastro de startup

Cenário: Cadastrar uma Startup
    Dado o endereço da API para manter o cadastro de Startup
    Quando realizar uma requisição para cadastrar uma Startup
    Então a API irá retornar os dados do cadastro da Startup respondendo o código 201