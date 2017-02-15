require 'pry-byebug'

class Pangram
  def self.pangram?(phrase)
    return true if all_letters_present?(phrase.downcase)
    false
  end

  def self.all_letters_present?(phrase)
    ('a'..'z').map { |char| phrase.scan(char).any? }.all?
  end
end
