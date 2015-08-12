require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/dealership.rb')

get('/') do
  @vehicle = Dealership.all()
  erb(:index)
end

post('/results') do
  @make = params.fetch('make')
  @model = params.fetch('model')
  @year = params.fetch('year').to_i()

  @result = Dealership.new(@make, @model, @year)

  erb(:results)
end
