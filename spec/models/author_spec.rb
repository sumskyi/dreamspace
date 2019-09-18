require 'rails_helper'

RSpec.describe Author, type: :model do
  subject { Fabricate(:author) }

  describe 'associations' do
    # this is green always for some reason
    it { have_and_belong_to_many(:books) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }

    it { should validate_uniqueness_of(:name) }
  end
end
