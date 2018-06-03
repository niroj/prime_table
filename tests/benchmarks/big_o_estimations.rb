require 'big-o'
require './lib/prime_number'
time_complexity = BigO::TimeComplexity.new(
  fn: ->(n) { test_method(n) },
  level: ->(n) { n**2 },
  range: 1000..10_000,
  timeout: 100
)
space_complexity = BigO::SpaceComplexity.new(
  fn: ->(n) { test_method(n) },
  level: ->(n) { n },
  range: 100..1000,
  timeout: 100
)
space_complexity.process # => true if it is growing in time constantly.

def test_method(n)
  prime_number = PrimeNumber.new(n)
  while prime_number.calculate_next_prime_if_eligible
    puts prime_number.current_prime
  end
end
