class Person < ApplicationRecord 
  include PgSearch::Model

  pg_search_scope :search_name,
                  against: :name, 
                  using: {
                    tsearch: {
                      prefix: true
                    },
                    trigram: {
                      threshold: 0.5
                    }
                  }
end
