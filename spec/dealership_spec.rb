require('rspec')
require('dealership')

describe(Dealership) do
end

describe('#name') do
  it("returns the name of the dealership") do
    test_dealership = Dealership.new("Kendra's Awesome Cars")
    expect(test_dealership.name()). to(eq("Kendra's Awesome Cars"))
  end
end
