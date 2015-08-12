require('rspec')
require('dealership')

describe('Dealership') do

  describe("#make") do
    it("restuns the make of the vehicle") do
      test_vehicle = Dealership.new("Honda", "Accord", 2010)
      expect(test_vehicle.make()).to(eq("Honda"))
    end
  end

end
