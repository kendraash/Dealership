require('rspec')
require('vehicles')

describe(Vehicles) do

  before() do
    Vehicles.clear()
  end

  describe("#make") do
    it("restuns the make of the vehicle") do
      test_vehicle = Vehicles.new("Honda", "Accord", 2010)
      expect(test_vehicle.make()).to(eq("Honda"))
    end
  end

  describe('#model') do
    it("returns the model of the vehicle") do
      test_vehicle = Vehicles.new("Ford", "Focus", 2000)
      expect(test_vehicle.model()).to(eq("Focus"))
    end
  end

  describe('#year') do
      it("returns the year of the vehicle") do
        test_vehicle = Vehicles.new("Toyota", "Yaris", 2002)
        expect(test_vehicle.year()).to(eq(2002))
      end
  end

  describe('#age') do
    it("returns the age of the vehicle") do
      test_vehicle = Vehicles.new("Ford", "Escape", 2004)
      expect(test_vehicle.age()).to(eq(11))
    end
  end

  describe('.all') do
    it("creates an empty array to store vehicles") do
      expect(Vehicles.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves the vehicle in the all_vehicles array") do
      test_vehicle = Vehicles.new("Chevy", "Blazer", 1991)
      test_vehicle.save()
      expect(Vehicles.all()).to(eq([test_vehicle]))
    end
  end

  describe('.clear') do
    it("clears the class array of all vehicles") do
      Vehicles.new("Honda", "CRV", 2007)
      Vehicles.clear()
      expect(Vehicles.all()).to(eq([]))
    end
  end

  describe('#new_enough?') do
    it("return false if the car is older than 10 years from today") do
      test_vehicle = Vehicles.new("Ford", "Focus", 1990)
      expect(test_vehicle.new_enough?()).to(eq(false))
    end
  end

  describe('#id') do
    it("returns a unique ID for the vehicle") do
      test_vehicle = Vehicles.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe('.find') do
    it("returns a vehicle by its id number") do
      test_vehicle = Vehicles.new('Toyota', 'Prius', 2000)
      test_vehicle.save()
      test_vehicle2 = Vehicles.new('Toyota', 'Corolla', 1999)
      test_vehicle2.save()
      expect(Vehicles.find(test_vehicle.id())).to(eq(test_vehicle))
    end
  end
end
