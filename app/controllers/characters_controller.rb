class CharactersController < ApplicationController
  def index
    render json: Character.all
  end

  def show
    render json: character
  end

  def update
    character.update(character_params)
    render json: character
  end

  def create
    character = Character.create(character_params)
    render json: character
  end

  def destroy
    character.destroy!
    render :success
  end

  def character
    @character ||= Character.find(character_find_params[:id])
  end

  def character_find_params
    params.permit(:id)
  end

  def character_params
    params.require(:character).permit(:movie_id, :actor_id)
  end
end
