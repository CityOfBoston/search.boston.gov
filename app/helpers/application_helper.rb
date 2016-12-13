module ApplicationHelper
  def sanitize(text)
    text.chomp("| City of Boston").chomp("| Boston.gov")
  end

  def type(type)
    case type
    when "topic_page"
      return "Topic"
    when "department_profile"
      return "Department"
    when "article"
      return "Article"
    when "event"
      return "Event"
    when "post"
      return "News"
    when "how_to"
      return "How To"
    when "program_initiative_profile"
      return "Program / Initiative"
    else
      return type
    end
  end

  def pagination_url(params)
    request.base_url + '?' + params.to_query
  end
end
