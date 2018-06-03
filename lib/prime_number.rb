# Responsible for finding out prime numbers
#
# Author:: Niroj Shrstha (mailto:nexus.niroj@gmail.com)
#
class PrimeNumber
  attr_reader :current_prime

  def initialize(number_of_primes = 10)
    @current_prime = 1
    @number_of_primes = number_of_primes.to_i
    @number_of_primes_calculated = 1
  end

  # Return next prime number to @current_prime
  # store new prime in @current_prime
  # increment @number_of_primes_calculated by 1
  def next_prime_number
    loop do
      break if prime?(@current_prime += 1)
    end
    @number_of_primes_calculated += 1
    @current_prime
  end

  # Checks if given number is prime
  def prime?(number)
    (2..(number / 2)).each do |num|
      return false if (number % num).zero?
    end
    true
  end

  # Checks if, for a given limit '@number_of_primes',
  # all primes has been calculated
  def all_primes_calculated?
    @number_of_primes_calculated > @number_of_primes
  end

  # Calculate next prime if required '@number_of_primes'
  # has not been calculated.
  def calculate_next_prime_if_eligible
    next_prime_number unless all_primes_calculated?
  end
end
