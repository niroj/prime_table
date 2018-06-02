require "minitest/autorun"
require "./lib/prime_number"

class PrimeNumberTest < Minitest::Test
  def setup
    @prime_number = PrimeNumber.new(3)
  end

  def test_that_first_prime_number_is_2
    assert_equal @prime_number.current_prime, 2
  end

  def test_next_prime_number_returns_next_prime_number
    assert_equal @prime_number.next_prime_number, 3
    assert_equal @prime_number.current_prime, 3

    assert_equal @prime_number.next_prime_number, 5
    assert_equal @prime_number.current_prime, 5
  end

  def test_is_prime_returns_true_for_prime_number
    assert_equal @prime_number.is_prime?(101), true
    assert_equal @prime_number.is_prime?(11), true
  end

  def test_is_prime_returns_false_for_non_prime_number
    assert_equal @prime_number.is_prime?(100), false
    assert_equal @prime_number.is_prime?(16), false
  end

  def test_all_prime_calculated_returns_false_when_given_number_of_prime_is_not_calculated
    assert_equal @prime_number.all_primes_calculated?, false
  end

  def test_all_prime_calculated_returns_true_when_given_number_of_prime_is_calculated
    # generate 3 prime numbers to max out number of prime numbers to be generated
    @prime_number.next_prime_number
    @prime_number.next_prime_number
    @prime_number.next_prime_number

    assert_equal @prime_number.all_primes_calculated?, true
  end

  def test_calculate_next_prime_if_eligible_returns_next_prime_when_given_number_of_prime_is_not_calculated
    assert_equal @prime_number.calculate_next_prime_if_eligible, 3
    assert_equal @prime_number.calculate_next_prime_if_eligible, 5
  end

  def test_calculate_next_prime_if_eligible_returns_nil_when_given_number_of_prime_is_calculated
    assert_equal @prime_number.calculate_next_prime_if_eligible, 3
    assert_equal @prime_number.calculate_next_prime_if_eligible, 5
    assert_nil @prime_number.calculate_next_prime_if_eligible
  end
end
