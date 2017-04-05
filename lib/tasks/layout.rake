#
# The update task will grab a fresh layout from the Boston Layout API.
# This keeps the layout up to date with Boston.gov
#
namespace :layout do
  task :update => :environment do
    require 'open-uri'

    begin
      # Clear the rails cache
      Rails.cache.clear

      # Get the layout file
      download = open(ENV['LAYOUT_PATH'])

      template = File.read(download)
      template.gsub! '{{yield}}', '<%= yield %>'
      template.gsub! '{{ title }}', 'Boston.gov'

      # Overwrite the layout
      layout = Template.find_or_create_by(path: 'layouts/search')

      # Set layout props
      layout.body = template
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
