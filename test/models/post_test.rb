require "test_helper"

class PostTest < ActiveSupport::TestCase
  test 'invalid without content' do
    post = Post.new(title: "something")
    refute post.valid?
    assert_not_nil post.errors[:content]  
  end

  test 'invalid without title' do
    post = Post.new(content: "something")
    refute post.valid?
    assert_not_nil post.errors[:title]  
  end
end
