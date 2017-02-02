class Phrase
  attr_accessor :words, :counts

  def initialize(sentence)
    @words = sentence
    @counts = Hash.new(0)
  end

  def word_count
    sanitize
    words.each { |word| counts[word] += 1 }
    counts
  end

  def sanitize
    @words = words
             .downcase
             .gsub(/[^\w']/, ' ')    # replace with  space, except quotes
             .gsub(/'(\w+)'/, '\1')  # remove outer quotes
             .squeeze(' ')
             .split(' ')
  end
end
