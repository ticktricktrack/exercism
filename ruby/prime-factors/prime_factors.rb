class PrimeFactors
  def self.for(number)
    return [] if number == 1
    (2..(number / 2)).each do |i|
      return ([i] + self.for(number / i)).flatten if (number % i).zero?
    end
    [number]
  end
end
