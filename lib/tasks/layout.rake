namespace :layout do
  task :update => :environment do
    require 'open-uri'
    download = open('https://www.boston.gov/news')
    IO.copy_stream(download, Rails.root.join('app', 'views', 'layouts', 'search.html.erb'))
  end
end
