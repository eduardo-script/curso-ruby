class Endereco
  attr_reader :ceep, :bairro, :cidade

  def initialize(ceep, bairro, cidade)
    @ceep = ceep
    @bairro = bairro
    @cidade = cidade
  end

  def exibir_endereco
    puts "ceep: #{@ceep}"
    puts "bairro: #{@bairro}"
    puts "cidade; #{@cidade}"
  end
end

  