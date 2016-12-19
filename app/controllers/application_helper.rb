module ApplicationHelper
  def sanitize(text)
    text.chomp("| City of Boston").chomp("| Boston.gov")
  end

  def type(type)
    return Rails.configuration.content_types[type] || ''
  end

  def pagination_url(params)
    request.base_url + '?' + params.to_query
  end
end
