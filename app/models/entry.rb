class Entry < ActiveRecord::Base
  belongs_to :category
  validates :category_id, presence: true
  validates :pages, :numericality => { :greater_than_or_equal_to => 1 }
end