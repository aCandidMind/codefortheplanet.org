module ApplicationHelper

  def localized_model_string(key, model, options = {})
    options = options.dup
    model_count = options.delete(:count) || 1
    options.merge!(class_name: model.model_name.human(count: model_count))
    I18n.t(key, options)
  end

end
