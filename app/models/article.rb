class Article < ApplicationRecord
  validates :content, presence: true
  has_rich_text :content
end
