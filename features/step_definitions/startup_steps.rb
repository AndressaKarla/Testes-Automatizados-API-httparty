# Dado("o endereço da API para manter o cadastro de Startup") do
#     #já instanciado pela classe Startup
# end
  
# Quando("realizar uma requisição para cadastrar uma startup") do
#     $response = @startup.postStartup
# end
  
# Então("a API irá retornar os dados do cadastro da Startup respondendo o código {int}") do |statusCodePost|
#     #expect do status code e message
#     expect($response.code).to eq(statusCodePost)
#     puts "Response code: #{$response.code}"
#     expect($response.message).to eq("Created")
#     puts "Response Message: #{$response.message}"
    
#     #imprime os atributos da requisição
#     puts "ID    : #{$response["id"]}"
#     puts "Data  : #{$response["data"]}"
#     puts "Nome  : #{$response["nome"]}"
#     puts "Conta : #{$response["conta"]}"
#     puts "Cidade: #{$response["cidade"]}"

#     # $id = $response["id"]
    
# end

# Quando("realizar uma requisição passando o ID da startup") do
#     $responsePost = @startup.postStartup
#     $id = $responsePost["id"]
#     $get = @startup.getStartup($id)
# end

# Então("a API irá retornar os dados da Startup correspondente respondendo o código {int}") do |statusCodeGet|
#     expect($get.code).to eq(statusCodeGet)
#     expect($get.message).to eq("OK")
#     # expect($get["id"]).to eq($responsePost["id"])
#     expect($get["id"]).to eq($id)

#     puts "ID    : #{$get["id"]}"
#     puts "Data  : #{$get["data"]}"
#     puts "Nome  : #{$get["nome"]}"
#     puts "Conta : #{$get["conta"]}"
#     puts "Cidade: #{$get["cidade"]}"
#     puts "Status Code: #{$get.code}"
    
# end

# Quando("realizar uma requisição para alterar uma startup") do
#     $response = @startup.postStartup
#     $id = $response["id"]
#     $put = @startup.putStartup($id)
# end

# Então("a API irá retornar os dados da Startup alterados respondendo o código {int}") do |statusCodePut|
#     expect($put.code).to eq(statusCodePut)
#     expect($put.message).to eq("OK")
#     expect($put["id"]).to eq($response["id"])

#     puts "ID    : #{$put["id"]}"
#     puts "Data  : #{$put["data"]}"
#     puts "Nome  : #{$put["nome"]}"
#     puts "Conta : #{$put["conta"]}"
#     puts "Cidade: #{$put["cidade"]}"
#     puts "Status Code: #{$put.code}"
# end

# Quando("realizar uma requisição para excluir uma startup") do
#   $response = @startup.postStartup
#   $id = $response["id"]
#   # $delete = @startup.deleteStartup($get["id"])
#   $delete = @startup.deleteStartup($id)
# end

# Então("a API deverá retornar os dados da exclusão respondendo o código {int}") do |statusCodeDelete|
#     expect($delete.code).to eq(statusCodeDelete)
#     expect($delete.message).to eq("OK")


#     puts "ID    : #{$delete["id"]}"
#     puts "Data  : #{$delete["data"]}"
#     puts "Nome  : #{$delete["nome"]}"
#     puts "Conta : #{$delete["conta"]}"
#     puts "Cidade: #{$delete["cidade"]}"
#     puts "Status Code: #{$delete.code}"
# end