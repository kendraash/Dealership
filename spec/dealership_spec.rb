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
      test_vehicle=Dealership.new("Ford", "Focus", 2000)
      expect(test_vehicle.model()).to(eq("Focus"))
    end
  end
  
end
