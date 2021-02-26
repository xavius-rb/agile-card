class Card < ApplicationRecord
  has_rich_text :description
  validates_presence_of :title
end
