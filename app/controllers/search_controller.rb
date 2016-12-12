class SearchController < ApplicationController
  def search
    if params[:q]
      client = Swiftype::Client.new
      @results = client.search(ENV['SWIFTYPE_ENGINE_SLUG'], params[:q], {:per_page => '10', :page => params[:page] || 1})
      @post_results = @results['page']

      @post_results.each do |post_result|
        puts post_result.to_yaml
      end
    end
  end
end
