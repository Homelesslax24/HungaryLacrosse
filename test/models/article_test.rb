require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@article = Article.new(title: "New Coach", subtitle: "We got a new coach!", text: "Check out all the new coaches we just got!  These guys are the best!  Look at all of their credentials!!")
  end

  test "article should be valid" do
  	assert @article.valid?
  end
end
