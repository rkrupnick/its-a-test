class Article < ApplicationRecord
  validates :content, :title, presence: true
  has_rich_text :content
end
