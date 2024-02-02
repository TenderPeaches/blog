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

  # use `describe` to group specs into logical units
  describe 'validations' do
    # shoulda-matchers
    # name attribute validations
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    # email attribute validations
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    # email sanity checks
    it { is_expected.to_not allow_value('foo@').for(:email) }
    it { is_expected.to_not allow_value('@bar.com').for(:email) }
  end
end
