def verifica_palindromo(palavra)
  if palavra.downcase == palavra.downcase.reverse
    puts "#{palavra} é palindromo"
  else
    puts "#{palavra} não é palindromo"
  end
end

puts "Insira uma palavra e verifique se é palindromo"

palavra = gets.chomp

puts verifica_palindromo(palavra)