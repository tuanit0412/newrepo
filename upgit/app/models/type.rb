class Type < ApplicationRecord
  has_many :products
  include PgSearch
  pg_search_scope :search, against: [:typename],
                           using: {
                             tsearch: {
                               prefix: true,
                             },
                           }
end
