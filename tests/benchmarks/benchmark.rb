require 'benchmark'

puts 'no of primes = 100'
puts Benchmark.measure {
  `./prime_table -n 100`
}

puts 'no of primes = 1000'
puts Benchmark.measure {
  `./prime_table -n 1000`
}

puts 'no of primes = 10000'
puts Benchmark.measure {
  `./prime_table -n 10000`
}
puts 'no of primes = 100000'
puts Benchmark.measure {
  `./prime_table -n 100000`
}
