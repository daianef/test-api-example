require 'airborne'

Airborne.configure do |config|
  config.base_url = 'http://node-api-example-com.umbler.net'
end

describe "quando acessamos a URL base via GET"  do
  it "deveria retornar status 200" do
    get "/"
    expect_status(200)
  end

  it "deveria responder 'Funcionando'" do
    get "/"
    expect(body).to match(/Funcionando!/)
  end
end

describe "quando criamos uma nova palavra via POST em /words"  do
  it "deveria retornar status 200" do
    post "/words", { :word => 'John Doe' }
    expect_status(200)
  end

  it "deveria retornar a palavra armazenada via GET" do
    get "/words"
    expect_json({"1": 'John Doe'})
  end
end
