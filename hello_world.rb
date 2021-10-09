puts "hello world"

# ------------- strings --------------------

nome = "joão"

msg = "Bem vindo #{ nome }"
#msg = "Soma #{ 1+2 }"
#msg = "Bem vindo" + nome

puts msg

mensagens = <<~MSG
  Olá #{ nome }
  Bem vindo ao meu código!
  Enjoy
MSG

mensagem = %q(Bem vindo ao meu código)
#mensagem = %Q(Bem vindo ao meu código #{ nome })

# puts msg.public_methods

puts msg.length

puts "O tamanho da minha string é #{ mensagens.length }"

p nome
#p nome[0]
#p nome[-1]
#p nome.chars
#p nome.chars.length
#p nome[2,3]

puts "Cabeçalho"
puts "-" * 10
puts "Texto"

numero = 42

puts "o numero é %05d" %numero

#puts mensagem.strip // remove espaços em branco

puts nome.upcase # imutável
puts nome.downcase
#puts nome.upcase! // mutável

puts nome.capitalize

msgs = "Ola nome"

puts msgs.gsub("nome", "joão") # substitui

nomes = "joao melissa".split # separa por espaço

# -------------- numeros ---------------

puts 42 # inteiro

puts 42.42 # float

puts 123_500 # _ é ignorado

soma = 5 + 3.2

p soma

p 5 + 2
#p 5.send("+", 3) // tudo é objeto

p 10.even? # é par?
p 10.odd? # é ímpar?

# --------------- simbolos ---------------

:"Joao"
:Joao

1.send("+", 2)
1.send(:+, 2)

# ------------ arrays -----------

lista = [1, 2, "3"]

lista[0]

lista << "novo item"
#ou
lista.append("novo item")

lista.length
lista.empty?
lista.first
lista.last

# ------------ hashes ---------------

hash = {}
# ou
hash = Hash.new

h = { nome: "Joao", idade: 21 }
h[:nome] = "novo nome"

hash.keys
hash.values
hasg.empty?

# ---------- input de dados ---------

gets()
#ou
gets

puts "Digite seu nome: "

nome = gets

#nome = gets.chomp // remove o /n

#nome = gets.chomp.to_i // transforma em inteiro

puts "Seu nome é #{nome}"

# ------------- condicionais ----------------

valor = 20

if valor > 50
  puts "Eu sou maior que 50"
else 
  puts "Eu sou menor que 50"
end

if valor >= 10 && <= 30
  puts "Estou entre 10 e 30"
end

if valor > 50
  puts "Eu sou maior que 50"
elsif valor = 50
  puts "Eu sou igual a 50"
else 
  puts "Eu sou menor que 50"
end

puts "Eu sou maior que 50" if valor > 50

unless valor >= 50
  puts "Eu sou menor que 50"
end

valor > 50 ? puts "Eu sou maior que 50" : "Eu sou menor que 50"

linguagem = "ruby"

case linguagem
when "ruby"
  puts "bem vindo ao curso de ruby"
when "python"
  puts "bem vindo ao curso de python"
end

# ----------- laços ------------

valor = 5

while valor > 0
  puts valor
  valor -= 1
end

range = 0..5

for i in 0..5
  puts "O numero é #{i}"
end

lista = [0, 1, 2, 3, 4, 5]

lista.each do |meu_valor|
  puts "Meu valor é #{meu_valor}"
end

hash = (nome: joao, idade: 21)

hash.each do |chave, valor|
  puts "Minha chave é #{chave} com valor #{valor}"
end

until valor == 10
  puts valor
  valor += 1
end

break # sair do laço
return # sair do laço e do metodo onde o laço esta contido
next # vai para a proxima
redo # repete o laço do inicio (sem reavaliar a condição)

# --------------- métodos (funções) ----------------

def soma(v1, v2)
  v1 + v2
end

def soma_opcional(v1, v2 = 0) # valor padrão
  v1 + v2
end

def soma_com_parametros_nomeados(v1:, v2:)
  soma(v1,v2)
end

soma_com_parametros_nomeados(v2: 10, v1: 5) # pode inverter a ordem

# ------------ Atribuição condicional de variavel --------------

variavel = "Algum valor" if variavel.nil?

variavel ||= "Valor"