frutas = ["abacaxi", "pera", "Uva", "Maçã"]

puts "Qual a fruta da posição 2: #{frutas[2]}"
puts "Tamanho do arrays de frutas: #{frutas.length}"

frutas[2] = "Melão"

puts "Imprimindo o novo valor da posição 2: #{frutas[2]}"

frutas.push("Goiaba")

puts "Add goiaba no final: #{frutas}"

frutas.unshift("Morango")

puts "Add Morando no inicio da lista: #{frutas}"

frutas.pop()
puts "Remove o ultimo elemento: #{frutas}"

frutas.shift()
puts "Adicionar o primeiro elemento: #{frutas}"

