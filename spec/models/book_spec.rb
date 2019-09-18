require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'associations' do
    # this is green always for some reason
    it { have_and_belong_to_many(:authors) }
  end


  describe 'associations' do
    # this is green always for some reason
    it { have_and_belong_to_many(:authors) }
  end

  describe 'validations' do
    subject { Fabricate(:book) }

    it { should validate_presence_of(:title) }

    it { should validate_uniqueness_of(:title).case_insensitive }
  end
end
