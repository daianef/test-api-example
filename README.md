# Testes em Ruby para APIs - WoMakersCode Summit Porto Alegre 2018

Como uma API REST prevê que os lados cliente e servidor são independentes, então os testes podem ser
realizados em uma tecnologia diferente da usada no servidor.

Neste tutorial, vamos ver um exemplo básico de teste em Ruby para uma API REST desenvolvida em Node.js.


## O que você precisa saber antes

* Conhecer os requisitos que precisam ser atendidos pela API (conhecer o sistema).
* Ter permissão para acessar a API através da web.
* Saber fazer as requests HTTP e analisar as suas respostas.

### API que será testada

Você encontrará o código e a especificação da API em https://github.com/daianef/node-api-example.

Para realização do laboratório no dia 24/03/2018, a API estará hospedada em http://node-api-example-com.umbler.net/.


## Ruby para testes

Aprenda mais sobre Ruby em:

* [Codecademy](https://www.codecademy.com/learn/learn-ruby)
* [Try Ruby](http://tryruby.org/levels/1/challenges/0)

Frameworks úteis para teste:

* [RSpec (BDD)](http://rspec.info/)
* [Airborne](https://github.com/brooklynDev/airborne)

Para testar APIs REST você pode usar a gem [airborne](https://github.com/brooklynDev/airborne). Ele irá abstrair as requisições HTTP e deixará o teste mais legível.

Exemplo:
```ruby
Airborne.configure do |config|
  config.base_url = 'http://node-api-example-com.umbler.net'
end

describe "quando acessamos a URL base via GET" do
  it "deveria retornar status 200" do
    get "/"
    expect_status(200)
  end
  
  it "deveria responder 'Funcionando'" do
    get "/"
    expect(body).to match(/Funcionando!/)
  end
end
```

### Primeiros passos

* Gerencie suas gems usando [bundler](bundler.io)
* Organize seus testes em arquivos/pastas.
* Escolha um framework.
* Escreva um teste de cada vez, execute e refatore.
* Mantenha a organização AAA (Arrange-Act-Assert).
