class AddTitleAndPublishDateToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :title, :string
    add_column :articles, :published_date, :datetime
  end
end
