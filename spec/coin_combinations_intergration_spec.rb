require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combination path', {:type => :feature}) do
  it('shows the smallest number of quarters, dimes, nickels, and pennies needed to make that change') do
    visit('/')
    fill_in('cents', :with => 42)
    click_button('Change')
    expect(page).to have_content([2, 1, 1, 1])
  end
end
