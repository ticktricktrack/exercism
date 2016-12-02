class Bob
  attr_reader :remark

  def hey(remark)
    @remark = remark
    response_for[analyze]
  end

  def response_for
    {
      statement: "Whatever.",
      question:  "Sure.",
      command:   "Whoa, chill out!",
      blank:     "Fine. Be that way!"
    }
  end

  def analyze
    return :blank     if blank?
    return :command   if all_upper_case? && letters?
    return :question  if questionmark?
    return :statement if no_letters?
    :statement
  end

  def blank?
    remark.strip.empty?
  end

  def letters?
    remark.scan(/[a-zA-Z]/).any?
  end

  def no_letters?
    !letters?
  end

  def all_upper_case?
    remark.upcase == remark
  end

  def questionmark?
    remark[-1] == "?"
  end
end
