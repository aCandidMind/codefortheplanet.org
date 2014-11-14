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
        length = action_name == 'index' ? 20 : 28
        link_text = truncate(link_text, length: length)
      end
      link = contact_link(option, link_text)
      [option, icon_name, link]
    end
  end

  def contact_link(key, link_text)
    base_url = {
      website: "",
      email: "",
      telephone: "tel:",
      twitter_handle: "https://twitter.com/",
      facebook_name: "https://www.facebook.com/search/results/?init=quick&q=",
    }

    if key == :email
      mail_to(link_text, link_text, encode: "hex")
    else
      if key == :telephone
        url_friendly_value = link_text.gsub(' ', '-')
      elsif key == :twitter_handle
        url_friendly_value = link_text.sub('@', '')
      else
        url_friendly_value = link_text
      end
      link_target = base_url[key] + url_friendly_value
      link_to(link_text, link_target)
    end
  end

  def read_more(recipe)
    "... #{link_to t('read_more'), recipe_path(recipe)}"
  end

end
