namespace :layout do
  task :update => :environment do
    require 'open-uri'

    begin
      download = open('https://www.boston.gov/api/v1/layouts/search')
      layout = Template.new(body: File.read(download), path: 'layouts/search', locale: 'en')
      layout.save
    rescue => error
      puts error.inspect
    end
  end
end
