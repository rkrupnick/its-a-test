require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without any information" do
    article = Article.new
    assert_not article.save
  end

  test "should not save article without a title" do
    article = Article.new
    article.content = "Content"
    assert_not article.save
  end
end
