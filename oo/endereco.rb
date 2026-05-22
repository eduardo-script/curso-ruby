class Endereco
  attr_reader :ceep, :bairro, :cidade

  def initialize(cep, bairro, cidade, pessoa, cliente)
    @ceep = cep
    @bairro = bairro
    @cidade = cidade
    @pessoa = pessoa
    @cliente = cliente
  end

  def exibir_endereco
    puts "cep: #{@ceep}"
    puts "bairro: #{@bairro}"
    puts "cidade; #{@cidade}"
  end
end

  