require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  setup do
    @contact = contacts(:one)
  end

  test "should not save without any options" do
    contact = Contact.new
    was_saved = contact.save
    assert_equal [:base], contact.errors.keys, "should only have an error on :base"
    refute was_saved, "No contact option was provided"
  end

  test "should save with one option set" do
    Contact.valid_options.each do |option|
      contact = Contact.new(option => "test")
      assert contact.save, "expected to save, but didn't: #{contact.errors.full_messages}"
    end
  end

end