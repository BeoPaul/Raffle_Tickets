require_relative 'raffle'

puts "Welcome to the Raffle Draw CLI!"
puts "Enter the number of participants:"
num_participants = gets.chomp.to_i
prizes = ['First Prize', 'Second Prize', 'Third Prize']

raffle = Raffle.new(num_participants, prizes)
result = raffle.draw_prizes

if result.is_a?(String)
  puts result
else
  prizes.each_with_index do |prize, index|
    puts "#{prize} goes to ticket number #{result.at(index)}"
  end
end
