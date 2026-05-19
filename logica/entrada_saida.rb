puts "Digite seu nome: "
nome = gets.chomp
puts "Olá, #{nome}"

puts "Em que ano voce nasceu? "
ano_nascimento = gets.chomp.to_i # coverte para inteiro
idade = 2026 - ano_nascimento


puts "Olá, #{nome}! sua idade é de #{idade}."

