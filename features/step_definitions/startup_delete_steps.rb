Quando("realizar uma requisição para excluir uma Startup") do
  $responsePost = @startup.postStartup
  $id = $responsePost["id"]

  $delete = @startup.deleteStartup($id)
end

Então("a API irá retornar os dados da exclusão das Startup respondendo o código {int}") do |statusCodeDelete|
    # expect do status code, message e id
    expect($delete.code).to eq(statusCodeDelete)
    expect($delete.message).to eq("OK")

    # imprime os atributos da requisição
    puts "ID    : #{$delete["id"]}"
    puts "Data  : #{$delete["data"]}"
    puts "Nome  : #{$delete["nome"]}"
    puts "Conta : #{$delete["conta"]}"
    puts "Cidade: #{$delete["cidade"]}"
    puts "Status Code: #{$delete.code}"
end
