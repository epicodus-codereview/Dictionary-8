require 'capybara/rspec'
require './app'
require 'launchy'
Capybara.app = Sinatra::Application

describe('when using the dictionary site', { :type => :feature }) do
  it('shows the index page with a list of words') do
    visit '/'
    expect(page).to have_content('My Dictionary')
  end
end

before do
  visit '/add_word'
  fill_in 'word_name', with: 'Taco'
  fill_in 'definition', with: 'my lunch'
  click_button 'Add'
end

describe('when adding a word', { :type => :feature }) do
  it('shows list of words with the added word') do
    visit '/'
    expect(page).to have_content('Taco')
  end
end

describe('when viewing a word entry', { :type => :feature }) do
  it('shows a page containing the word and it\'s definitions') do
    visit '/word/1'
    expect(page).to have_content('Taco')
    expect(page).to have_content('my lunch')
  end
end

describe('when adding a definition', { :type => :feature }) do
  it('shows a form to add a new definition') do
    visit '/add_definition/1'
    expect(page).to have_content("Add New Definition")
  end

end
