require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  setup do
    @project = projects(:one)
  end

  test "should have a name" do
    @project.name = nil
    refute @project.save, "projects must not persist without a name"
  end

  test "upvote! increments votes" do
    assert_difference '@project.votes' do
      @project.upvote!
    end
  end

  test "upvote! gets persisted" do
    old_count = @project.votes
    @project.upvote!
    @project.reload
    assert_equal old_count + 1, @project.votes
  end

  test "downvote! decrements votes" do
    assert_difference '@project.votes', -1 do
      @project.downvote!
    end
  end

  test "downvote! gets persisted" do
    old_count = @project.votes
    @project.downvote!
    @project.reload
    assert_equal old_count - 1, @project.votes
  end

end