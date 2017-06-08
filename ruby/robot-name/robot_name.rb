class Robot
  attr_accessor :name
  @@names = []

  def name
    @name ||= random_name
  end

  def reset
    Registry.unregister(@name)
    @name = nil
  end

  private

  def random_name
    naming_attempt = random_letters + random_numbers
    return random_name if Registry.includes?(naming_attempt)
    Registry.register naming_attempt
    naming_attempt
  end

  def random_letters
    ('A'..'Z').to_a.sample(2).join
  end

  def random_numbers
    (0..9).to_a.sample(3).join
  end
end

class Registry
  @@names = []

  def self.includes?(name)
    @@names.include?(name)
  end

  def self.register(name)
    @@names << name
  end

  def self.unregister(name)
    @@names.delete(name)
  end
end
