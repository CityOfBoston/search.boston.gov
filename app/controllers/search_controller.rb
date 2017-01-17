class SearchController < ApplicationController
  prepend_view_path Template.resolver
  layout 'search'

  def search
    if params[:query] && params[:query] != ''
      client = Swiftype::Client.new

      @facets_selected = params[:facet] || []

      @results = client.search(ENV['SWIFTYPE_ENGINE_SLUG'], params[:query], {
        :per_page => '10',
        :filters => {'page' => {:type => @facets_selected}},
        :page => params[:page] || 1,
        :facets => {'page' => ['type']},
        :fetch_fields => {'page' => ['url', 'title', 'type']}
      })

      @facets = @results.info['page']['facets']['type']

      @post_results = @results['page']
      @page_range = get_page_range(@results)
    end
  end

  private

  def get_page_range(results)
    # We'll start at 0
    start_num = 1

    # If the number is more than 5
    if results.current_page > 5
      start_num = results.current_page - 2
    end

    # End num starts at 5
    end_num = 6

    # If the number is more than 5
    if results.current_page > 5
      end_num = results.current_page + 3
    end

    return start_num...end_num
  end
end
