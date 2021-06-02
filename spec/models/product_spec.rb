require 'rails_helper'
# require "product"

RSpec.describe Product, type: :model  do

  it 'is valid when all properties are present' do
    product = Product.new(
      id: 123,
      name: 'tshirt',
      description: 'Something to wear',
      image: 'image',
      price_cents: 100000,
      quantity: 4,
      created_at: 2021-05-20,
      updated_at: 2021-05-21,
      category: Category.new(
        name: 'Clothing'
      )
    )
    expect(product).to be_valid
  end

  it 'is invalid if name is not present' do
    product = Product.new(
      id: 123,
      name: nil,
      description: 'Something to wear',
      image: 'image',
      price_cents: 100000,
      quantity: 4,
      created_at: 2021-05-20,
      updated_at: 2021-05-21,
      category: Category.new(
        name: 'Clothing'
      )
    )
    expect(product).to be_invalid
    p product.errors.full_messages
  end

  it 'is invalid if price is not present' do
    product = Product.new(
      id: 123,
      name: 'tshirt',
      description: 'Something to wear',
      image: 'image',
      price_cents: nil,
      quantity: 4,
      created_at: 2021-05-20,
      updated_at: 2021-05-21,
      category: Category.new(
        name: 'Clothing'
      )
    )
    expect(product).to be_invalid
    p product.errors.full_messages
  end

  it 'is invalid if quantity is not present' do
    product = Product.new(
      id: 123,
      name: 'tshirt',
      description: 'Something to wear',
      image: 'image',
      price_cents: 100000,
      quantity: nil,
      created_at: 2021-05-20,
      updated_at: 2021-05-21,
      category: Category.new(
        name: 'Clothing'
      )
    )
    expect(product).to be_invalid
    p product.errors.full_messages
  end

  it 'is invalid if category is not present' do
    product = Product.new(
      id: 123,
      name: 'tshirt',
      description: 'Something to wear',
      image: 'image',
      price_cents: 100000,
      quantity: 4,
      created_at: 2021-05-20,
      updated_at: 2021-05-21,
      category: nil
    )
    expect(product).to be_invalid
    p product.errors.full_messages
  end

  # describe ".add" do
  #   context "given an empty string" do
  #     it "returns zero" do
  #       expect(Product.add("")).to eq(0)
  #     end
  #   end
  # end
end
