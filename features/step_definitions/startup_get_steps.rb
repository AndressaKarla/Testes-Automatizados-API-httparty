Quando("realizar uma requisição passando o ID da Startup") do
    $responsePost = @startup.postStartup
    $id = $responsePost["id"]
    
    $get = @startup.getStartup($id)
end

Então("a API irá retornar os dados da Startup correspondente respondendo o código {int}") do |statusCodeGet|
    # expect do status code, message e id
    expect($get.code).to eq(statusCodeGet)
    expect($get.message).to eq("OK")
    expect($get["id"]).to eq($id)

    # imprime os atributos da requisição
    puts "ID    : #{$get["id"]}"
    puts "Data  : #{$get["data"]}"
    puts "Nome  : #{$get["nome"]}"
    puts "Conta : #{$get["conta"]}"
    puts "Cidade: #{$get["cidade"]}"
    puts "Status Code: #{$get.code}"
end