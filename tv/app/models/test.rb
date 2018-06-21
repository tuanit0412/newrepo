class Test < ApplicationRecord
  include PgSearch
  pg_search_scope :search, against: {
                             title: "A",
                             description: "B",
                             price: "C",
                           },
                           using: {
                             tsearch: {
                               prefix: true,
                             },
                           }
end
