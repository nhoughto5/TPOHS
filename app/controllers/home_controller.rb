class HomeController < ApplicationController
  def index
    @shows = Show.all.order(:show_date)
  end
end
