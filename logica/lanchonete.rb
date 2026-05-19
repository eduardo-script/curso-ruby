# 1. Coleção de Combos (Ajustado com as vírgulas que faltavam)
combos = {
  1 => { :descricao => 'Pet Coca + Salgado', :preco => 10.0 },
  2 => { :descricao => 'Suco + Salgado', :preco => 12.0 },
  3 => { :descricao => 'Refri Lata + Hambúrguer', :preco => 15.0 },
  4 => { :descricao => 'Suco + Hambúrguer', :preco => 17.0 }
}

pedidos = []
loop_controle = true

# 2. Loop de Atendimento
while loop_controle
  puts "\n==================================="
  puts "       LANCHONETE BITCODE          "
  puts "==================================="
  puts "Escolha uma opção:"
  puts "1 - Ver Menu / Fazer Pedido"
  puts "2 - Ver Carrinho de Compras"
  puts "3 - Encerrar Atendimento"
  puts "==================================="
  print "Opção: "
  
  opcao = gets.chomp.to_i

  case opcao
  when 1
    puts "\n--- MENU DE COMBOS ---"
    combos.each do |id, info|
      # Formatado com sprintf para exibir duas casas decimais (ex: 10.00)
      puts "#{id} - #{info[:descricao]} | R$ #{sprintf('%.2f', info[:preco])}"
    end
    print "\nDigite o número do combo que deseja: "
    combo_escolhido = gets.chomp.to_i

    if combos.has_key?(combo_escolhido)
      pedidos << combos[combo_escolhido]
      puts "\n🟢 Combo adicionado ao carrinho!"
    else
      puts "\n🔴 Opção de combo inválida!"
    end

  when 2
    puts "\n--- CARRINHO DE COMPRAS ---"
    if pedidos.empty?
      puts "Seu carrinho está vazio."
    else
      total = 0
      pedidos.each_with_index do |item, index|
        puts "#{index + 1}. #{item[:descricao]} - R$ #{sprintf('%.2f', item[:preco])}"
        total += item[:preco]
      end
      puts "---------------------------"
      puts "Total Atual: R$ #{sprintf('%.2f', total)}"
    end

  when 3
    if pedidos.empty?
      puts "\nAtendimento encerrado. Obrigado!"
    else
      total = 0
      puts "\n--- RESUMO DO PEDIDO ---"
      pedidos.each do |item|
        puts "- #{item[:descricao]} | R$ #{sprintf('%.2f', item[:preco])}"
        total += item[:preco]
      end
      puts "---------------------------"
      puts "Total a pagar: R$ #{sprintf('%.2f', total)}"
      puts "Obrigado pela preferência!"
    end
    loop_controle = false

  else
    puts "\n🔴 Opção inválida! Tente novamente."
  end
end
