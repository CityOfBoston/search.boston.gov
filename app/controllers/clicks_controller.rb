class ClicksController < ApplicationController
  def show
    # Queue up a click track
    unless params[:url].nil?
      unless params[:id].nil?
        ClickJob.perform_later({:query => params[:query], :id => params[:id]})
      end

      redirect_to params[:url]
    else
      redirect_to root_url
    end
  end
end
