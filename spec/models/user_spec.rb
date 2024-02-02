require 'rails_helper'

RSpec.describe User, type: :model do
  # use `FactoryBot.build` to create a new user instance
  # `let` is lazily evaluated
  let(:user) { build(:user) }

  # ensure the factory produces a valid model instance
  it 'has a valid factory' do
    # same as `expect(user.valid?).to eq(true)`
    expect(user).to be_valid
  end
end
