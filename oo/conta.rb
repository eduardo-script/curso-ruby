class Conta
  attr_reader :numero, :titular, :saldo

  # construtores - inicializador
def initialize(numero, titular)
  @numero = numero
  @titular = titular
  @saldo = 0
end

  #ação
def depositar valor
    @saldo += valor
end

def sacar valor
  if valor <= @saldo
      @saldo -= valor
      true
  else 
      puts "saldo insuficiente"
      false
  end
end

def transferir destino, valor
  if self.sacar(valor)
    destino.depositar(valor)

    puts "#{@titular} transferiu R$ #{valor} para #{destino.titular}"
  end
end

def verificar_saldo
  puts "saldo disponível: R$ #{'%.2f' % @saldo}"
end

end