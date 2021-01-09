# frozen_string_literal: true

class Todo < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search, against: :title, using: { tsearch: { prefix: true } }
  validates :title, presence: true

  after_create_commit { broadcast_prepend_to :todos }
  after_destroy_commit { broadcast_remove_to :todos }
  after_update_commit { broadcast_replace_to :todos }
end
