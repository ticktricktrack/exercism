class Robot
  def name
    @name ||= random_name
  end

  def reset
    @name = nil
  end

  private

  def random_name
    random_letters + random_numbers
  end

  def random_letters
    ('A'..'Z').to_a.sample(2, random: Random.new).join
  end

  def random_numbers
    (0..9).to_a.sample(3, random: Random.new).join
  end
end
