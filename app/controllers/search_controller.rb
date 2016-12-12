class SearchController < ApplicationController
  layout 'search'
  
  def search
    if params[:q]
      client = Swiftype::Client.new
      @results = client.search(ENV['SWIFTYPE_ENGINE_SLUG'], params[:q], {:per_page => '10', :page => params[:page] || 1})
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
