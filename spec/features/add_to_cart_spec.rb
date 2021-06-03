require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do
  # pending "add some scenarios (or delete) #{__FILE__}"

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "User clicks 'Add to Cart' and cart increases by one" do

    # ACT
    visit root_path
    puts page.html
    click_button class: 'btn btn-primary', match: :first do
    end
    puts page.html

    # DEBUG
    save_screenshot

    # VERIFY
    # expect(page).to have_css 'article.product', count: 10
    expect(page).to have_text 'My Cart (1)'
  end

end
