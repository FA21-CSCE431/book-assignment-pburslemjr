# location: spec/feature/integration_spec.rb
require 'rails_helper'
require 'date'
@date = DateTime.new(2001,2,3,4,5,6)

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Someone Important'
    fill_in 'Price', with: '19.99'
    fill_in 'Date', with: DateTime.new(2001,2,3,4,5,6)

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    
    
    
  end

end



RSpec.describe 'Creating a book', type: :feature do
  scenario 'invalid price' do
    visit new_book_path
    fill_in 'Title', with: 'wrong'
    fill_in 'Author', with: 'Someone Important'
    fill_in 'Price', with: 'bob'
    fill_in 'Date', with: DateTime.now

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content("wrong")
  end

end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Someone Important'
    fill_in 'Price', with: 19.99
    fill_in 'Date', with: DateTime.new(2001,2,3,4,5,6)

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid Author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Someone Important'
    fill_in 'Price', with: 19.99
    fill_in 'Date', with: DateTime.new(2001,2,3,4,5,6)

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

end
