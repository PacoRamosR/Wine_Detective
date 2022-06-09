require "test_helper"

class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = users(:paco)
    @micropost = @user.microposts.build(content: "Lorem ipsum")
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  test "wine id should be present" do
    @micropost.wine_id = nil
    assert_not @micropost.valid?
  end

  test "content should be present" do
    @micropost.content = "   "
    assert_not @micropost.valid?
  end

  test "content should be at most 140 characters" do
    @micropost.content = "a" * 300
    assert_not @micropost.valid?
  end

  test "order should be most recent first" do
    assert_equal microposts(:most_recent), Micropost.first
  end
end

