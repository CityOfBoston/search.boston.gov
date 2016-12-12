namespace :layout do
  task :update => :environment do
    require 'open-uri'
    download = open('http://spyglass.dd:8083/api/v1/layouts/search')
    IO.copy_stream(download, Rails.root.join('tmp', 'views', 'layouts', 'search.html.erb'))
  end
end
