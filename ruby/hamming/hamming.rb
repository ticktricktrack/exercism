class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.length != strand_b.length
    strand_a = strand_a.split('')
    strand_b = strand_b.split('')
    strand_a.zip(strand_b).count { |a, b| a != b }
  end
end
