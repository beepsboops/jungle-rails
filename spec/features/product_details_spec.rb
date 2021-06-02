require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
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

  scenario "They navigate to product detail page" do
    
#     <a class="btn btn-default pull-right" href="/products/12">
#       Details »
# </a>
    # ACT
    visit root_path
    puts page.html
    within '.product', match: :first do
      click_link :first
    end
    puts page.html
    

    # DEBUG
    save_screenshot

    # VERIFY
    # expect(page).to have_css 'article.product', count: 10
  end


end
