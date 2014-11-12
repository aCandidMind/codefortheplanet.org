require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  test "should not save without any options" do
    contact = contacts(:only_recipes)
    was_saved = contact.save
    assert_equal [:base], contact.errors.keys, "should have an error on :base, exclusively"
    refute was_saved, "No contact option was provided"
  end

  test "should save with one option set" do
    Contact.valid_options.each do |option|
      contact = Contact.new(recipes: [recipes(:one)]) # not using fixtures as they are cached
      refute contact.save, "expected to not save as no contact option was provided: #{contact.inspect}"
      assert contact.update_attributes(option => "test"), "expected to save, but didn't: #{contact.errors.full_messages}"
    end
  end

  test "should not save without belonging to any recipes" do
    contact = contacts(:only_name)
    # TODO temporarily disabled in the model and thus fails
    refute contact.save, "temp. disabled, thus fails: contact doesn't belong to any recipe and thus should not save"
  end

  test "should save with minimum fields" do
    contact = contacts(:minimum)
    assert contact.save, "expected to save, but didn't: #{contact.errors.full_messages}"
  end

end