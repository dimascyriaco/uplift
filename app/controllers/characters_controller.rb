class CharactersController < ApplicationController
  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    character = Character.create!(character_params)
    redirect_to character_path(character)
  end

private

  def character_params
    params.require(:character).permit(:name, :st, :dx, :iq, :ht)
  end
end