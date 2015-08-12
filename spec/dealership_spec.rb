require('rspec')
require('dealership')

describe('Dealership') do

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


end
