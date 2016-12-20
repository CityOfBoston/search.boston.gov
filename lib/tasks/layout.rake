#
# The update task will grab a fresh layout from the Boston Layout API.
# This keeps the layout up to date with Boston.gov
#
namespace :layout do
  task :update => :environment do
    require 'open-uri'

    begin
      # Get the layout file
      download = open(ENV['LAYOUT_PATH'])

      # Overwrite the layout
      layout = Template.find_or_create_by(path: 'layouts/search')

      # Set layout props
      layout.body = File.read(download)
      layout.locale = 'en'

      # Save the layout
      layout.save

      # Clear the rails cache
      Rails.cache.clear
    rescue => error
      puts error.inspect
    end
  end
end
