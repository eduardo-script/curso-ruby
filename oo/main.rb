require_relative "./conta.rb"
require_relative "./conta_corrente"

maria = ContaCorrente.new 1, "Maria Cardorso"
lucas = Conta.new 2, "Lucas Henrique"
#fabio = Conta.new 3, "Fabio Felipe"

lucas.verificar_saldo

maria.verificar_saldo


#lucas.depositar(200)
#maria.depositar(200)

#lucas.sacar(50)

#maria.transferir lucas, 50
#lucas.transferir fabio, 150

#puts "#{maria.numero} - #{maria.titular} - saldo: R$ #{maria.saldo}"
#puts "#{lucas.numero} - #{lucas.titular} - saldo: R$ #{lucas.saldo}"
#puts "#{fabio.numero} - #{fabio.titular} - saldo: R$ #{fabio.saldo}"




