class Bob
  def self.hey(text)
    type = analyze(text)
    response_for[type]
  end

  def self.response_for
    {
      statement: "Whatever.",
      question:  "Sure.",
      command:   "Whoa, chill out!",
      blank:     "Fine. Be that way!"
    }
  end

  def self.analyze(text)
    return :blank     if blank?(text)
    return :command   if all_upper_case?(text) && letters?(text)
    return :question  if questionmark?(text)
    return :statement if no_letters?(text)
    :statement
  end

  def self.blank?(text)
    text.strip.empty?
  end

  def self.letters?(text)
    text.scan(/[a-zA-Z]/).any?
  end

  def self.no_letters?(text)
    !letters?(text)
  end

  def self.all_upper_case?(text)
    text.upcase == text
  end

  def self.questionmark?(text)
    text[-1] == "?"
  end
end
