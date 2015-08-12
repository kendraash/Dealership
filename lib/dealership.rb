class Dealership
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
end
