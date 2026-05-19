texto = "senai"

puts "palavra = #{texto}"

# colocar em caixa alta (maiúsculo)
puts texto.upcase

# colocar em caixa baixa (minúsculo)
puts texto.downcase 

# colocar a primeira letra em maiúscula
puts texto.capitalize

#procurar uma palavra 
puts "Tem 'ai' no texto?"
puts texto.include?("ai")

# saber se a variavel é vazia
puts "A variavel texto é vazio? #{texto.empty?}"

# saber o tamanho do texto
puts "Qual o tamanho do texto? #{texto.length}"

 
