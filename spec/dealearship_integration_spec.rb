require('capybara/rspec')
require('./app')
Capybara.app =Sinatra::Application
set(:show_exceptions, false)

describe('the path of the list', {:type => :feature}) do
  it('processes the user entry for a vehicles make, model, and year') do
    visit('/')
    fill_in('make', :with => 'Honda')
    fill_in('model', :with => 'Accord')
    fill_in('year', :with => 2010)
    click_button('Check vehicle')
    expect(page).to have_content("Honda Accord 2010")
  end
end
