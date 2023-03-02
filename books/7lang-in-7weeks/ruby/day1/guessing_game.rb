puts 'Welcome to the ruby guessing game!'
puts 'The program would generate an integer in [1,100]'
puts 'Now begin!'
puts ''
secret_number = rand(1..100)
guess = -1
trials = 0
while guess != secret_number
  trials += 1
  puts 'Make a guess!'
  guess = gets.to_i
  puts 'Too big!' if guess>secret_number
  puts 'Too small!' if guess<secret_number
end
puts "Yay! The secret_number is #{secret_number}, You took #{trials} trials to find out!"
