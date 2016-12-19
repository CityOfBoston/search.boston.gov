module SearchHelper
  def is_checked(facets_selected, type)
    return facets_selected.include?(type)
  end
end
