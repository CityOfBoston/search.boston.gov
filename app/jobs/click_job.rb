class ClickJob < ApplicationJob
  queue_as :default

  def perform(result)
    search_client = Swiftype::Client.new
    
    search_client.log_clickthrough(ENV['SWIFTYPE_ENGINE_SLUG'], 'page', result[:query], result[:id])
  end
end
