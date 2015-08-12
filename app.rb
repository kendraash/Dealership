require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/vehicles.rb')

get('/') do
  erb(:index)
end

get('/vehicles') do
  @vehicle = Vehicles.all()
  erb(:vehicles)
end

get('/vehicles/new') do
  erb(:new_form)
end

get('/vehicles/:id') do
    @vehicle = Vehicles.find(params.fetch('id').to_i())
    erb(:vehicles)
end

post('/vehicles') do
  @make = params.fetch('make')
  @model = params.fetch('model')
  @year = params.fetch('year').to_i()

  @result = Vehicles.new(@make, @model, @year)
  @result.save()

  erb(:success)
end
