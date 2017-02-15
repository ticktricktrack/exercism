class Sieve
  attr_accessor :sieve, :max

  def initialize(max)
    @max = max
    @sieve = (2..max).to_a
  end

  def primes
    sieve.each do |prime|
      sieve.delete_if do |number|
        (number % prime).zero? && number != prime
      end
    end
    sieve
  end
end
