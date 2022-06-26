#max number is 4_000_000
# value must be even
# sum all of the even numbers below 4_000_000
sum_fib = 0
new_number = 1
prev_number = 0

while sum_fib < 4_000_000
  prev_number = new_number - prev_number
  new_number  = new_number + prev_number
  sum_fib += new_number if new_number % 2 == 0
end
p sum_fib #=> 4613732