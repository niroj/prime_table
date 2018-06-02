class PrimeNumber

  attr_reader :current_prime

  def initialize(number_of_primes = 10)
    @number_of_primes = number_of_primes.to_i
    @current_prime = 2
    @number_of_primes_calculated = 1
  end

  def next_prime_number
    loop do
      break if is_prime?(@current_prime += 1)
    end
    @number_of_primes_calculated += 1
    @current_prime
  end

  def is_prime?(number)
    (2..(number/2)).each do |num|
      return false if number % num == 0
    end
    return true
  end

  def all_primes_calculated?
    @number_of_primes_calculated >= @number_of_primes
  end

  def calculate_next_prime_if_eligible
    next_prime_number unless all_primes_calculated?
  end
end
