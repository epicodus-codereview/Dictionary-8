require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application

describe('when using the dictionary site', { :type => :feature }) do
  it('shows the index page with a list of words') do
    visit '/'
    expect(page).to have_content('My Dictionary')
  end
end

describe('when adding a word', { :type => :feature }) do
  it('shows the index page with a list of words') do
    visit '/add_word'
    fill_in 'word_name', with: 'Taco'
    fill_in 'definition1', with: 'my lunch'
    click_button 'Add'
    expect(page).to have_content('Taco')
  end
end
