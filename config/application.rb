require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CobSearch
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.content_types = {
      'article' => 'Articles',
      'department_profile' => 'Departments',
      'documents' => 'Documents',
      'event' => 'Events',
      'how_to' => 'How To',
      'post' => 'News',
      'person_profile' => 'Person',
      'program_initiative_profile' => 'Program/Initiative',
      'public_notice' => 'Public Notice',
      'topic_page' => 'Topic',
    }
  end
end
