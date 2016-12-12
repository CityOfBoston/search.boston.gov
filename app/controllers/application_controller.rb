class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :prepend_view_paths

   def prepend_view_paths
     prepend_view_path Rails.root.join('tmp', 'views', 'layouts')
   end
end
