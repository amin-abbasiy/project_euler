require 'benchmark'

::Benchmark.bmbm do |ins|
  ins.report do
    1000.times do
      sum_fib = 0
      new_number = 1
      prev_number = 0

      while sum_fib < 4_000_000
        prev_number = new_number - prev_number
        new_number  = new_number + prev_number
        sum_fib += new_number if new_number % 2 == 0
      end
      sum_fib
    end
  end
end