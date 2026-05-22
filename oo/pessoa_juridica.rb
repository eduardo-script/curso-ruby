require_relative "pessoa"

class PessoaJuridica < Pessoa
  attr_accessor :cnpj

  def initialize(nome, cnpj)
    super(nome)
    @cnpj = cnpj
  end

  def exibir_dados
    puts "=========DADOS PESSOA JURÍDICA========="
    puts "Nome: #{@nome}\nCNPJ: #{@cnpj}"
    puts "=================================="
  end
end