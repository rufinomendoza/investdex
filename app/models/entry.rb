class Entry < ActiveRecord::Base
  belongs_to :category
  delegate :name, :to => :category, :prefix => true
  validates :category_id, presence: true
  validates :pages, :numericality => { :greater_than_or_equal_to => 1 }

  include PgSearch
  pg_search_scope :search, against: [:title, :author, :comments, :publication_date],
                  using: {tsearch: {dictionary: "english"}},
                  associated_against:{category: :name}
  multisearchable against: [:title, :author, :comments]

  def self.text_search(query)
    if query.present?
      search(query)
    else
      all
    end
  end


end