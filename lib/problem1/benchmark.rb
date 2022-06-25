require 'benchmark'

three_numbers, five_numbers = [], []
max_number = 1000
three = 3
five = 5

::Benchmark.bmbm do |ins|
  ins.report do
    ((max_number/three) + (max_number%three)).times do |number|
      third = three * number
      fifth = five * number

      three_numbers << third if third < max_number
      five_numbers << fifth if fifth < max_number
    end
    (three_numbers | five_numbers).sum
  end
end