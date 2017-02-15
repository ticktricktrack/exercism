require 'pry-byebug'

class Integer
  def to_roman
    Roman.new(self).to_roman
  end
end

class Roman
  attr_accessor :number

  NUMERALS = {
    1000 => 'M',
    900  => 'CM',
    500  => 'D',
    400  => 'CD',
    100  => 'C',
    90   => 'XC',
    50   => 'L',
    40   => 'XL',
    10   => 'X',
    9    => 'IX',
    5    => 'V',
    4    => 'IV',
    1    => 'I'
  }

  def initialize(number)
    @number = number
  end

  def to_roman
    NUMERALS.reduce('') do |result, (arabic, numeral)|
      quotient, @number = number.divmod(arabic)
      result << numeral * quotient
    end
  end
end
