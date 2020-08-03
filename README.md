# HTTParty | Cucumber

Repositório para testes da Postagem do Medium sobre HTTParty
Link postagem: [Automação de Testes com HTTParty e Cucumber](https://medium.com/@rafaelberam/automa%C3%A7%C3%A3o-de-testes-api-com-httparty-e-cucumber-bdd-d955749affa8)

## Terminal 
- Baixar Console Emulator (cmder): https://github.com/cmderdev/cmder/releases/download/v1.3.5/cmder.zip
- Descompactar na pasta "C:\tools\cmder"
- Criar um atalho na área de trabalho para o "cmder.exe"

## Ruby 
- Baixar Ruby: https://s3.amazonaws.com/railsinstaller/Windows/railsinstaller-3.4.0.exe
- Na última etapa de conclusão da instalação, desmarcar a opção "Configure git and ssh when..."
- Para confirmar se o ruby realmente foi instalado, abrir o Console Emulator (cmder) e executar o seguinte comando:
```ruby
λ ruby -v
```

## Projeto
- No Console Emulator (cmder), acessar a pasta onde se deseja clonar o projeto e executar o seguinte comando:
```ruby
λ git clone <url_do_projeto>
```
- Executar o comando  para instalar as dependências do projeto
```ruby
λ bundle install
```
- Rodar o projeto executando o seguinte comando:

```ruby
λ cucumber -t @<nome_tag>
Ex.: cucumber -t @startupPost
```
