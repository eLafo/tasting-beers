class BeersController < ApplicationController

  before_action :authenticate_user!
  before_action :load_beer, only: [:show]

  def index
  end

  def show
    @comments = @beer.comments
  end

  private

  def load_beer
    @beer = Beer.find(params[:id])
  end

end
