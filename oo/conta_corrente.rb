require_relative "./conta"

class ContaCorrente < Conta 

    attr_reader :limite

    def initialize(numero, titular)
      super(numero, titular)
      @limite = 1000
    end

    def verificar_saldo
      puts "=======#{"SALDO ATUAL".center(20)}========"
      puts "Saldo: R$ #{'%.2f' % @saldo}"
      puts "Limite: R$ #{'%.2f' % @limite}"
      puts "=================================="
    end

    def exibir_dados_conta
      puts "=========DADOS DA CONTA CORRENTE========="
      puts "Número da Conta: #{@numero}"
      puts "Titular: #{@titular.nome}"
      puts "Saldo: R$ #{'%.2f' % @saldo}"
      puts "Limite: R$ #{'%.2f' % @limite}"
      puts "=================================="
    end

end
