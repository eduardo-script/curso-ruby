require_relative "pessoa"

class PessoaFisica < Pessoa
  attr_accessor :cpf

  def initialize(nome, cpf)
    super(nome)
    @cpf = cpf
  end

  def exibir_dados
    puts "=========DADOS PESSOA FÍSICA========="
    puts "Nome: #{@nome}\nCPF: #{@cpf}"
    puts "=================================="
  end
end