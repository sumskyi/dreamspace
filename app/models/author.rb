class Author < ApplicationRecord
  has_and_belongs_to_many :books

  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: true
end
