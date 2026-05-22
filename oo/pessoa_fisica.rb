require_relative "pessoa"

class PessoaFisica < Pessoa
  attr_accessor :cpf

  def initialize(nome, cpf)
    super(nome, endereco)
    @cpf = cpf
  end

  def exibir_dados
    puts "=========DADOS PESSOA FÍSICA========="
    puts "Nome: #{@nome}"
    puts "CPF: #{@cpf}"
    puts "Cidade: #{@endereco.cidade}"
    puts "Bairro: #{@endereco.bairro}"
    puts "=================================="
  end
end