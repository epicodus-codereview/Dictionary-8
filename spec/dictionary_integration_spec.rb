require 'capybara/rspec'
require './app'
require 'sinatra'
Capybara.app = Sinatra::Application

describe('when using the dictionary site', { :type => :feature }) do
  it('shows the index page with a list of words') do
    visit '/'
    expect(page).to have_content('My Dictionary')
  end
end
