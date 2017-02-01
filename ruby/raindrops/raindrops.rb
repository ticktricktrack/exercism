class Raindrops
  def self.convert(quantity)
    result = ''
    result << 'Pling' if (quantity % 3).zero?
    result << 'Plang' if (quantity % 5).zero?
    result << 'Plong' if (quantity % 7).zero?
    return quantity.to_s if result.empty?
    result
  end
end
