class Category < ActiveRecord::Base
  has_many :entries

  include PgSearch
  multisearchable against: [:name]
end
