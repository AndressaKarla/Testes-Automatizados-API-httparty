Dado("o endereço da API para manter o cadastro de Startup") do                                  
   # $uri_base = "http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup"
   # Já instanciado pela classe Startup
end                                                                                             
                                                                                                
Quando("realizar uma requisição para cadastrar uma Startup") do                                
    # $response = HTTParty.post($uri_base, :body => {"nome":@nome,"cidade":@cidade})
    $response = @startup.postStartup
end                                                                                             
                                                                                                
Então("a API irá retornar os dados do cadastro da Startup respondendo o código {int}") do |statusCodePost| 
    # expect do status code e message
    expect($response.code).to eq(statusCodePost)
    puts "Response code: #{$response.code}"

    expect($response.message).to eq("Created")
    puts "Response Message: #{$response.message}"

    # imprime os atributos da requisição
    puts "ID    : #{$response["id"]}"  
    puts "Data  : #{$response["data"]}"
    puts "Nome  : #{$response["nome"]}"
    puts "Conta : #{$response["conta"]}"
    puts "Cidade: #{$response["cidade"]}" 
end                                                                                             