require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the palindrome check path', {:type => :feature}) do
  it('checks if user input is a palindrome and returns a confirmation if it is.') do
    visit('/')
    fill_in('text', :with => 'Murder! For a jar of RED RUM?')
    click_button('Submit')
    expect(page).to have_content('Your entry is a palindrome.')
  end
  it('checks if user input is a palindrome and returns a negation if it is not.') do
    visit('/')
    fill_in('text', :with => 'This is definitely not a palindrome! Ha ha ha.')
    click_button('Submit')
    expect(page).to have_content('Your entry is not a palindrome.')
  end

end
