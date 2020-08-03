Quando("realizar uma requisição para alterar uma Startup") do
    $responsePost = @startup.postStartup
    $id = $responsePost["id"]

    $put = @startup.putStartup($id)
end

Então("a API irá retornar os dados da Startup alterados respondendo o código {int}") do |statusCodePut|
    # expect do status code, message e id
	expect($put.code).to eq(statusCodePut)
    expect($put.message).to eq("OK")
    expect($put["id"]).to eq($id)

    # imprime os atributos da requisição
    puts "ID    : #{$put["id"]}"
    puts "Data  : #{$put["data"]}"
    puts "Nome  : #{$put["nome"]}"
    puts "Conta : #{$put["conta"]}"
    puts "Cidade: #{$put["cidade"]}"
    puts "Status Code: #{$put.code}"
end