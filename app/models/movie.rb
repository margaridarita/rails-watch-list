class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title, against: :title,
  using: {
    :tsearch => { :prefix => true }
  }
end
