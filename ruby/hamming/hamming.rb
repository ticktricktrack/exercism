class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.length != strand_b.length
    strand_a = strand_a.split('')
    strand_b = strand_b.split('')

    difference = 0
    strand_a.each_with_index do |base, index|
      difference += 1 if base != strand_b[index]
    end
    difference
  end
end
