class System
  attr_reader :bodies, :mass

  def initialize
    @bodies = []
  end

  def add(body)
    body = System.new
    @bodies << body
  end

  def total_mass
    sum = 0
    @bodies.each do |body|
      sum += body.mass
    end
    sum
  end
end

class Body < System

  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planet < Body
  attr_reader :day, :year, :name, :mass

  def initialize(name, mass, day, year)
    self(name, mass)
    @day = day #number of hours it takes for the planet to rotate all the way around once
    @year = year #which is the number of days it takes for the planet to orbit the sun once
  end
end

class Star < Body
  attr_reader :type, :name, :mass

  def initialize(name, mass, type)
    self(name, mass)
    @type = type
  end

end

class Moon < Body
  attr_reader :month, :planet, :name, :mass

  def initialize(name, mass, month, planet)
    self(name, mass)
    @month = month
    @planet = planet
  end

end

milky_way = System.new
sun = Star.new("Sun", 23961, "G-star")
earth = Planet.new("Earth", 857, 24, 365)
moon = Moon.new("Earth Moon", 32954, 27, "Earth")
puts sun.inspect
puts earth.inspect
puts moon.inspect
milky_way.add(sun)
milky_way.add(earth)
milky_way.add(moon)
puts milky_way.bodies
puts milky_way.total_mass
