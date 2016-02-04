require 'colorize'
require './superclass'
require './subclass'
require './inventory'



fruits = {}

banana = Fruit.new
banana.name = "Banana"
banana.price = 5
fruits[:A] = banana

apple = Fruit.new
apple.name = "Apple"
apple.price = 3
fruits[:B] = apple


lemon = Fruit.new
lemon.name = "Lemon"
lemon.price = 3
fruits[:C] = lemon


ordered = []

puts "\nWelcome To My Shop".colorize(:blue)

# methode starts HERE
def chooseFruits(fruits, ordered)

  fruits.each do |choice, fruit|
    puts "#{choice}: #{fruit.name}, Price: $#{fruit.price}".colorize(:green)
  end

  puts "choose one:[#{fruits.keys.join(', ')}]"

  # get user input, convert it to uppercase, convert it to symbol
  choice = gets.chomp.upcase.to_sym

  # is the choice of the user included in "keys" of the "array" in this case fruits
  if fruits.keys.include? choice
  puts "You chose: #{fruits[choice].name}"
else
  puts "Wrong Choice Please Make A Choice:"
  chooseFruits(fruits, ordered)
end

  # add each choice to the array "ordered"
  ordered << fruits[choice]



  total = 0 #constante waarde in de metode die de grond vast stelt van wat je wil verhogen.
  ordered.each do |fruit|
    puts "• #{fruit.name} Price:#{fruit.price} SubTotal: #{total += fruits[choice].price}".colorize(:yellow)
  end

  puts "Total: #{total += fruits[choice].price} you have #{ordered.size} in your cart"



  # methode is called HERE
  chooseFruits(fruits, ordered)
end
# methode ends HERE
# methode is "Activated here" a.k.a. called HERE
chooseFruits(fruits, ordered)








=begin
require 'colorize'
def fruit_question(price)


 fruits = {
    A: {name: "Apple", price: 4},
    B: {name: "Banana", price: 3},
    C: {name: "Lemon", price: 5}
  }



fruits = {
  "A" => {"apple" => 4},
  "B" => {"banana" => 3},
  "C" => {"lemon" => 5}
}


#  apple_price = 4
#  banana_price = 8
#  lemon_price = 3

  puts "\nWelcome To My Shop".colorize(:blue)
  if price >= 10
    puts "\nThe Total is: #{price}".colorize(:magenta)
  elsif price < 10 && price > 0
    puts "\nThe Total is: #{price}".colorize(:green)

  end

  puts "\nSelect a fruit:\n
  A) Apple\n
  B) Banana\n
  C) Lemon\n
  [A-C]:"

  fruit = gets.chomp.upcase
  if fruit == 'A'
  #  puts "You chose: Apple\nPrice per kg: #{fruits["A"]["apple"]}\n"
    puts "You chose: Apple\nPrice per kg: #{fruits["A"]["apple"]}\n"
    puts 'Do you need more vitamines?'
    fruit_question price + fruits["A"]["apple"]

  elsif fruit == 'B'
    #puts "You chose: Banana\nPrice per kg: #{fruits["B"]["banana"]} \n"
    puts "You chose: Banana\nPrice per kg: #{fruits["B"]["banana"]} \n"
    puts 'Do you need more vitamines?'
    fruit_question price + fruits["B"]["banana"]

  elsif fruit == 'C'
  #  puts "You chose: Lemon\nPrice per kg: #{fruits["C"]["lemon"]} \n"
    puts "You chose: Lemon\nPrice per kg: #{fruits["C"]["lemon"]} \n"
    puts 'Do you need more vitamines?'
    fruit_question price + fruits["C"]["lemon"]
  else puts 'Correct you input please?'
       puts 'Do you need more vitamines?'
       fruit_question price + 0
  end
end
fruit = fruit_question 0
=end
