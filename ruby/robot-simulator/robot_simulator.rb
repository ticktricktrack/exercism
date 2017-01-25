class Robot
  attr_accessor :direction, :coordinates

  def initialize
    @coordinates = Coordinates.new
    @direction   = :north
  end

  def orient(direction)
    raise ArgumentError unless [:east, :west, :north, :south].include?(direction)
    @direction = direction
  end

  def bearing
    @direction
  end

  def at(easting, northing)
    @coordinates = Coordinates.new(easting, northing)
  end

  def coordinates
    @coordinates.to_a
  end

  def advance
    @coordinates.advance(direction)
  end

  def turn_right
    orient(
      {
        north: :east,
        east:  :south,
        south: :west,
        west:  :north
      }[bearing]
    )
  end

  def turn_left
    orient(
      {
        north: :west,
        east:  :north,
        south: :east,
        west:  :south
      }[bearing]
    )
  end
end

class Coordinates
  attr_accessor :easting, :northing

  def initialize(easting = 0, northing = 0)
    @easting = easting
    @northing = northing
  end

  def to_a
    [easting, northing]
  end

  def advance(direction)
    @easting  += directions[direction].first
    @northing += directions[direction].last
  end

  def directions
    {
      north: [0,  1],
      east:  [1,  0],
      south: [0, -1],
      west:  [-1, 0],
    }
  end
end
