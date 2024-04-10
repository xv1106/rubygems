puts "Veuillez entrer le message à crypter :"
puts ">"
string = gets.chomp

puts "Veuillez entrer la clé de cryptage :"
puts ">"
key = gets.chomp.to_i

def encrypting_method(string, key)
  result = ""
  string.e