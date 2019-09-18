class Book < ApplicationRecord
  has_and_belongs_to_many :authors

  validates_presence_of :title
  validates_uniqueness_of :title, case_sensitive: false
  validates_presence_of :year

end
