class Dealership
  define_method(:initialize) do |make, model, year|
      @make = make
      @model = model
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end
end
