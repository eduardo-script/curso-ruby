require_relative "pessoa"

class PessoaJuridica < Pessoa
  attr_accessor :cnpj

  def initialize(nome, cnpj)
    super(nome, endereco)
    @cnpj = cnpj
  end

  def exibir_dados
    puts "=========DADOS PESSOA JURÍDICA========="
    puts "Nome: #{@Nome}"
    puts "CNPJ: #{@cnpj}"
    puts "Cidade: #{@endereco.cidade}"
    puts "=================================="
  end
end