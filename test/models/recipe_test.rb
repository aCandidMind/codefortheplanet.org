require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  setup do
    @recipe = recipes(:one)
  end

  test "should have a name" do
    @recipe.name = nil
    refute @recipe.save, "recipes must not persist without a name"
  end

  test "should have a description" do
    @recipe.description = nil
    refute @recipe.save, "recipes must not persist without a description"
  end

  test "upvote! increments votes" do
    assert_difference '@recipe.votes' do
      @recipe.upvote!
    end
  end

  test "upvote! gets persisted" do
    old_count = @recipe.votes
    @recipe.upvote!
    @recipe.reload
    assert_equal old_count + 1, @recipe.votes
  end

  test "downvote! decrements votes" do
    assert_difference '@recipe.votes', -1 do
      @recipe.downvote!
    end
  end

  test "downvote! gets persisted" do
    old_count = @recipe.votes
    @recipe.downvote!
    @recipe.reload
    assert_equal old_count - 1, @recipe.votes
  end

end