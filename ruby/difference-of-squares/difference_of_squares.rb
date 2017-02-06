class Squares
  attr_reader :root

  def initialize(root)
    @root = root
  end

  def square_of_sum
    (0..root).to_a.inject(:+)**2
  end

  def sum_of_squares
    (0..root).map { |n| n**2 }.inject(:+)
  end

  def difference
    (sum_of_squares - square_of_sum).abs
  end
end
