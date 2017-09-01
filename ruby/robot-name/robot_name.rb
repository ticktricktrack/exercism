require 'pry-byebug'

class Robot
  @@i=100
  def initialize
    reset
  end

  def reset
    @@i += 1
    @robot_name="AB" + @@i.to_s
  end

  def name
    @robot_name
  end
end
