class GamesController < ApplicationController

  def index

  end

  def create
    @game = Game.create(game_params)
    render json: @game
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update

  end

  private

  def game_params
    params.permit(state: [])
  end

end
