namespace :layout do
  task :update => :environment do
    require 'open-uri'
    download = open('https://www.boston.gov/api/v1/layouts/search')
    IO.copy_stream(download, Rails.root.join('tmp', 'views', 'layouts', 'search.html.erb'))
  end
end
