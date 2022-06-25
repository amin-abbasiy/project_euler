#multiply result of 3 and 5 must be less than 1000
# multiply by range of number 1000 / 5  = 200 and (1000 / 3 = 333 + 1000 % 3 = 1)

three_numbers, five_numbers = [], []
max_number = 1000
three = 3
five = 5

((max_number/three) + (max_number%three)).times do |number|
  third = three * number
  fifth = five * number

  three_numbers << third if third < max_number
  five_numbers << fifth if fifth < max_number
end
p (three_numbers | five_numbers).sum