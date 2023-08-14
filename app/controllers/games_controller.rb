class GamesController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create, :show]
  def new
    game = current_user.games.create
    redirect_to(game)
  end

  def show
  	@game = Game.find(params[:id])
  	authorize @game
  end
  private
end