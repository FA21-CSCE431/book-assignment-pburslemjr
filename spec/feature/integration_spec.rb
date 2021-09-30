# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Someone Important'
    fill_in 'Price', with: 19.99
    fill_in 'Date', with: DateTime.now

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

end

RSpec.describe 'Reading a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Updating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Deleting a book', type: :feature do
  scenario 'valid inputs' do
    visit books_path
    
    
    click_on 'Delete Book'
    visit books_path
    expect(page).not_to have_content('harry potter')
  end
end
