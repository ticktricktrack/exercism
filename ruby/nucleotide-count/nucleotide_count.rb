class Nucleotide
  BASES = ["A", "T", "C", "G"]

  def self.from_dna(dna)
    raise ArgumentError unless valid?(dna)
    Nucleotide.new(dna)
  end

  def self.valid?(dna)
    dna.delete(BASES.join).empty?
  end

  attr_accessor :dna

  def initialize(dna)
    @dna = dna
  end

  def count(base)
    dna.count(base)
  end

  def histogram
    BASES.map { |base| [base, count(base)] }.to_h
  end
end
