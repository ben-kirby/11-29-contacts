require ('rspec')
require ('capybara/rspec')
require ('pry')
require ('./app')
require ('capybara')
require ('./lib/Contact')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new contact', {:type => :feature}) do
  it('checks whether user added a contact to the list') do
    visit('/')
    fill_in('first_name', :with => 'Mr. Fluffles')
    fill_in('last_name', :with => 'Mr. Fluffles')
    fill_in('address', :with => 'Mr. Fluffles')
    fill_in('job_title', :with => 'Mr. Fluffles')
    fill_in('contact_company', :with => 'Mr. Fluffles')
    fill_in('contact_type', :with => 'Mr. Fluffles')
    click_button('Add to Contacts')
    expect(page).to have_content('Mr. Fluffles')
  end
end
