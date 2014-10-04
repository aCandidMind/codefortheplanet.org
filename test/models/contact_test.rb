require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  setup do
    @contact = contacts(:one)
  end

  test "should not save without any options" do
    contact = Contact.new
    refute contact.save, "No contact option was provided"
  end

  test "should save with one option set" do
    Contact.valid_options.each do |option|
      contact = Contact.new(option => "test")
      assert contact.save
    end
  end

end