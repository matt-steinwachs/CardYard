class UserGamesController < ApplicationController
  before_action :set_user_game, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_games = UserGame.all
    respond_with(@user_games)
  end

  def show
    respond_with(@user_game)
  end

  def new
    @user_game = UserGame.new
    respond_with(@user_game)
  end

  def edit
  end

  def create
    @user_game = UserGame.new(user_game_params)
    @user_game.save
    respond_with(@user_game)
  end

  def update
    @user_game.update(user_game_params)
    respond_with(@user_game)
  end

  def destroy
    @user_game.destroy
    respond_with(@user_game)
  end

  private
    def set_user_game
      @user_game = UserGame.find(params[:id])
    end

    def user_game_params
      params.require(:user_game).permit(:user_id, :game_id)
    end
end
