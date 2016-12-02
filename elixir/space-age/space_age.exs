defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :uranus | :neptune

  @earth_year 31557600

  @planets %{
    mercury: 0.2408467,
    venus:   0.61519726,
    mars:    1.8808158,
    jupiter: 11.862615,
    saturn:  29.447498,
    uranus:  84.016846,
    neptune: 164.79132,
  }

  def age_on(:earth, seconds) do
    seconds / @earth_year
  end

  def age_on(planet, seconds) do
    age_on(:earth, seconds) / @planets[planet]
  end
end
