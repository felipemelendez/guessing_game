#!usr/bin/enc ruby

puts "--------------------------"
puts "|   Ruby Guessing Game    |"
puts "--------------------------"

puts "Hi, what is your name?"
print ">"
name = gets.chomp

puts "Hello, #{name}."
puts "We are going to play a guessing game.\n"
puts "I will chose a random number between 1 and 10 and you will have three chances to guess it."
puts "..."

number = rand(10) + 1
puts "Okay, I have my number, now you guess it."

MAX_GUESSES = 3

1.upto(MAX_GUESSES) do |guess_num|
	print "Guess #{guess_num}: "
	guess = gets.chomp
	if guess.to_i == number
		puts "Great guessing, #{name}!"
		puts "My number was #{number} and you guessed it!"
		break
	else
		puts "Sorry, that wasn't it."

		if guess_num == MAX_GUESSES
			puts 
			puts "Sorry, that was your last guess."
			puts "My number was #{number}."
		end
	end
end

puts "\n\nGoodbye!"
