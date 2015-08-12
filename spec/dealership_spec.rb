require('rspec')
require('dealership')

describe(Dealership) do

  before() do
    Dealership.clear()
  end

  describe("#make") do
    it("restuns the make of the vehicle") do
      test_vehicle = Dealership.new("Honda", "Accord", 2010)
      expect(test_vehicle.make()).to(eq("Honda"))
    end
  end

  describe('#model') do
    it("returns the model of the vehicle") do
      test_vehicle = Dealership.new("Ford", "Focus", 2000)
      expect(test_vehicle.model()).to(eq("Focus"))
    end
  end

  describe('#year') do
      it("returns the year of the vehicle") do
        test_vehicle = Dealership.new("Toyota", "Yaris", 2002)
        expect(test_vehicle.year()).to(eq(2002))
      end
  end

  describe('#age') do
    it("returns the age of the vehicle") do
      test_vehicle = Dealership.new("Ford", "Escape", 2004)
      expect(test_vehicle.age()).to(eq(11))
    end
  end

  describe('.all') do
    it("creates an empty array to store vehicles") do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves the vehicle in the all_vehicles array") do
      test_vehicle = Dealership.new("Chevy", "Blazer", 1991)
      test_vehicle.save()
      expect(Dealership.all()).to(eq([test_vehicle]))
    end
  end

  describe('.clear') do
    it("clears the class array of all vehicles") do
      Dealership.new("Honda", "CRV", 2007)
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end
end
