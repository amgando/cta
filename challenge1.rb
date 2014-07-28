# craigslist searcher, we do the searching part for you!

def ask_for_category
  puts
  puts "what category are you interested in?"
  puts "choose from the list below:"
  puts "1. motorcycles"
  puts "2. motorbikes"
  puts "3. two wheeled vehicles"
  puts "4. walking shoes"
  print "pick a category: "
  gets.chomp
end

def ask_for_description
  puts
  puts "what keywords should we be looking for?"
  print "type in a few keywords: "
  gets.chomp
end

def saerch_again?
  puts
  puts "would you like to search for something else?"
  print "would you like us to search again? (y/n) "
  gets.chomp =~ /y/i
end


# ----


puts
puts "welcome to craigslist searcher!"

puts "-"*31


puts "we do all the work of finding stuff you want"
puts "first, we'll ask you a series of questions"
puts "then, the magic happens..."
puts
puts "(press any key to continue)"
gets

searches = []

while true
  category = ask_for_category
  description = ask_for_description

  searches << [category, description]

  break unless search_again?
end

puts
puts "search confirmation. here's what we captured: "
puts "-"*45

p searches