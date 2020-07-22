class Book < ApplicationRecord
  has_one_attached :photo

  include PgSearch::Model

  pg_search_scope :search_by_full_name, against: [:title, :author]
end
