class Category < ActiveRecord::Base
  has_many :entries
  accepts_nested_attributes_for :entries

  include PgSearch
  multisearchable against: [:name]
end
