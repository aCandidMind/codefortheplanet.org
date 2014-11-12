module RecipesHelper

  def tags_value_string(form, context)
    # rocket_tag defines an association for the tags with the suffix _tags
    tag_association = form.object.send("#{context}_tags").select(:name)
    tag_association.map(&:name).join(',')
  end

  def contact_options(contact)
    set = (Contact.valid_options - ["name"]).
          select {|option| contact.send(option).present?}.map(&:to_sym)
    icon_names = {
      website: "fi-general-website",
      email: "fi-general-mail",
      telephone: "fi-general-phone",
      twitter_handle: "fi-social-twitter",
      facebook_name: "fi-social-facebook",
    }
    set.map do |option|
      icon_name = icon_names[option]
      link_text = contact.send(option)
      if option == :website
        # TODO remove scheme
        link_text = truncate(link_text, length: 20)
      end
      link_target = contact_link(option, link_text)
      [option, icon_name, link_text, link_target]
    end
  end

  def contact_link(key, value)
    base_url = {
      website: "",
      email: "mailto:",
      telephone: "tel:",
      twitter_handle: "https://twitter.com/",
      facebook_name: "https://www.facebook.com/search/results/?init=quick&q=",
    }
    value = value.sub('@', '') if key == :twitter_handle
    base_url[key] + value
  end

  def read_more(recipe)
    "... #{link_to t('read_more'), recipe_path(recipe)}"
  end

end
