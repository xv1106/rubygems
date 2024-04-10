puts "Veuillez entrer un nombre entier:"
puts ">" 
final_number = gets.chomp.to_i # only takes integer

def is_multiple_of_3_or_5?(current_number)
  current_number % 3 == 0 || current_number % 5 == 0 # We check that there is no remainder when diving the number given by 3 & 5. If there is, it means the number ain't a multiple or 3 or 5
end

def sum_of_3_or_5_multiples(final_number)

  if final_number <= 0
    return "Yo ! Je ne prends que les entiers naturels. TG."
  end

  sum = 0
  (0...final_number).each do |number| 
  sum += number if is_multiple_of_3_or_5?(number) #Only adds to the sum, the numbers that respects our previous method
  end
  sum
end

def perform(final_number)
  puts "Voici la somme des nombres entiers multiples de 3 et 5 entre 1 et votre nombre: #{sum_of_3_or_5_multiples(final_number)}"
end

perform(final_number)