class Integer
  # Sieve of Eratosthenes
  def primes_less_than
    numbers_to_test = (3..self).step(2).map {|x| x}
    primes = []
    i = 1
    # only need to test to the sqrt of the number since nothing larger than the sqrt could possibly divide
    while i < Math.sqrt(self)
      i = numbers_to_test.shift
      primes << i
      numbers_to_test = numbers_to_test.select {|n| n % i != 0}
    end
    # the rest of the numbers_to_test are the primes larger than sqrt but smaller than self
    primes = [2] + primes + numbers_to_test
    primes
  end

  def is_fibonacci?
    # not 100% accurate, but fast to test if one or two is a perfect square
    # worked in this case
    one = 5 * self**2 + 4
    two = 5 * self**2 - 4
    sqrt_one = Math.sqrt(one)
    sqrt_two = Math.sqrt(two)

    sqrt_two.to_i == sqrt_two || sqrt_one == sqrt_one.to_i
  end
end

1_000_000.primes_less_than.select {|i| i > 227_000}.each do |i|
  if i.is_fibonacci?
    puts i
    exit
  end
end

# result is 514229
# found prime divisors of 514230 using internet calculator
# 2 3 5 61 281
# sum those for answer
