class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    planet_collection = []
    for planet in @planets
      planet_collection << planet.name
    end
    return planet_collection
  end

  # def get_planet_by_name(name)
  #   for planet in @planets
  #     if planet.name == name
  #       return planet
  #     end
  #   end
  # end

  def get_planet_by_name(name)
    return @planets.find {|planet| planet.name == name}
  end

  def get_largest_planet
    largest_planet_diameter = 0
    largest_planet = 0
    for planet in @planets
      if planet.diameter > largest_planet_diameter
        largest_planet_diameter = planet.diameter
        largest_planet = planet
      end
    end
    return largest_planet
  end

  # def get_largest_planet
  #    largest_planet = @planets.max {|planet|  planet.diameter}
  #    return largest_planet
  #  end

  def get_smallest_planet
    smallest_planet_diameter = Float::INFINITY
    smallest_planet = 0
    for planet in @planets
      if planet.diameter < smallest_planet_diameter
        smallest_planet_diameter = planet.diameter
        smallest_planet = planet
      end
    end
    return smallest_planet
  end

  def get_planets_with_no_moons
    planet_no_moon = []
    for planet in @planets
      if planet.number_of_moons == 0
        planet_no_moon << planet
      end
    end
    return planet_no_moon
  end

  def get_planets_with_more_moons(moon_count)
    planet_with_moons = []
    for planet in @planets
      if planet.number_of_moons > moon_count
        planet_with_moons << planet.name
      end
    end
    return planet_with_moons
  end

  def get_number_of_planets_closer_than(distance)
    planet_distance = []
    for planet in @planets
      if planet.distance_from_sun < distance
        planet_distance << planet
      end
    end
    return planet_distance.count
  end

  def get_total_number_of_moons
    total_number_of_moons = planets.reduce(0) {|total, planet| total + planet.number_of_moons}
    return total_number_of_moons
  end






end
