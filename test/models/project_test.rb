require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  setup do
    @project = projects(:one)
  end

  test "should have a name" do
    @project.name = nil
    refute @project.save, "projects must not persist without a name"
  end

end