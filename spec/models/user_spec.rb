require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end

  describe 'password encryption' do
    let(:email) { 'sabaka@gmail.com' }
    let(:password) { 'qwerty' }
    let!(:user) do
      Fabricate(:user,
                email: email,
                password: password)
    end
    let(:encrypted_user) { User.find_by_email(email) }

    it 'authenticates' do
      expect(encrypted_user.authenticate(password).id).to be_equal user.id
    end
  end
end
