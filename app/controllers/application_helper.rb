module ApplicationHelper
  def sanitize(text)
    text.chomp("| City of Boston").chomp("| Boston.gov")
  end

  def type(type)
    return Rails.configuration.content_types[type] || ''
  end

  def pagination_url(page)
    query = {}

    if params[:q] && params[:q] != ''
      query['q'] = params[:q]
    end

    if params[:facet] && params[:facet] != ''
      query['facet'] = params[:facet]
    end

    if page
      query['page'] = page
    end

    return request.base_url + '?' + query.to_query
  end
end
