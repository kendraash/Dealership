class Dealership
  @@all_vehicles = []

  define_method(:initialize) do |make, model, year|
      @make = make
      @model = model
      @year = year
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_method(:age) do
    current_year = Time.new().year()
    age = current_year.-(@year)
  end

  define_singleton_method(:all) do
    @@all_vehicles
  end

  define_method(:save) do
    @@all_vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@all_vehicles = []
  end

  define_method(:new_enough?) do
    self.age()<10
  end
end
