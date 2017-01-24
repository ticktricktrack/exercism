class Bob
  attr_reader :remark

  def hey(remark)
    @remark = remark.gsub(/\s/, '')
    return 'Fine. Be that way!' if silent?
    return 'Whoa, chill out!'   if shouting? & letters?
    return 'Sure.'              if asking?
    'Whatever.'
  end

  private

  def silent?
    remark == ''
  end

  def shouting?
    remark.upcase == remark
  end

  def letters?
    (remark =~ /[a-zA-Z]/)
  end

  def asking?
    remark =~ /\?$/
  end
end
