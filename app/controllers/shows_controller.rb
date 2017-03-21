class ShowsController < ApplicationController
  before_action :find_show, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    @shows = Show.all.order(:show_date)
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to shows_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @show.update(show_params)
      redirect_to show_path(@show)
    else
      render 'edit'
    end
  end

  def destroy
    @show.destroy
    redirect_to shows_path
  end

  private

    def show_params
      params.require(:show).permit(:title, :show_date, :ticket_cost, :description, :location, :shows_img)
    end

    def find_show
      @show = Show.find(params[:id])
    end

end
