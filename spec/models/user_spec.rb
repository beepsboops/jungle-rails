require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'is valid when all properties are present' do
    user = User.new(
      name: 'Vegeta',
      email: 'stronger-than-goku@gmail.com',
      password_digest: 'fsd8932ifdslkjfjoids',
      created_at: 2021-05-04,
      updated_at: 2021-05-22
    )
    expect(user).to be_valid
  end

  it 'has the the minimum correct length for password' do
    user = User.new(
      name: 'Vegeta',
      email: 'stronger-than-goku@gmail.com',
      password_digest: 'fsd8932ifdslkjfjoids',
      created_at: 2021-05-04,
      updated_at: 2021-05-22
    )
    
    @valid_password_length = user.password_digest.length > 10
    p "valid_password_length", @valid_password_length
    expect(@valid_password_length).to be_truthy
    p user.errors.full_messages
  end

end
