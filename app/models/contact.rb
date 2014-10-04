class Contact < ActiveRecord::Base

  validate :has_at_least_one_option

  def self.valid_options
    %w{name website email telephone twitter_handle facebook_name }
  end

  protected

    def has_at_least_one_option
      self.class.valid_options.any? {|option| read_attribute(option).present?}
    end
end