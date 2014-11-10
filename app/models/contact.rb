class Contact < ActiveRecord::Base

  has_and_belongs_to_many :recipes, join_table: :recipes_contacts

  validate :has_at_least_one_option

  def self.valid_options
    %w{name website email telephone twitter_handle facebook_name }
  end

  protected

    def has_at_least_one_option
      valid_option_present = self.class.valid_options.any? {|option| read_attribute(option).present?}
      unless valid_option_present
        errors.add(:base, "No valid contact option is present")
      end
    end
end