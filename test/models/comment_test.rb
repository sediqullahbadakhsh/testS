require "test_helper"

class CommentTest < ActiveSupport::TestCase

  test 'invalid without comment' do
    comment = Comment.new()
    refute comment.valid?
    assert_not_nil comment.errors[:comment], "validation error"
  end
end
