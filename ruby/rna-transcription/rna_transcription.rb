class Complement
  BASES = ['C', 'G', 'T', 'A', 'U']
  COMPLEMENTS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(rna)
    return '' unless (rna.split('') - BASES).empty?
    rna.split('').map { |base| COMPLEMENTS[base] }.join
  end
end
