class CharactersController < ApplicationController
  def show
    @character = Character.find(params[:id])
    @gurps_character = @character.gurps_character
  end

  def new
    @character = Character.new
  end

  def create
    character = Character.create!(character_params)
    redirect_to character_path(character)
  end

  def update
    character = Character.find(params[:id])
    character.update_attributes! character_params
    redirect_to character_path(character)
  end

  private

  def character_params
    params.require(:character).permit(:name, :st, :dx, :iq, :ht)
  end
end