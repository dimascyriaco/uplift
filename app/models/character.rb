class Character < ActiveRecord::Base
  validates :st, :dx, :iq, :ht, presence: true

  attr_accessor :character_datum

  def gurps_character
    @gurps_character ||= build_gurps_character
  end

private

  def build_gurps_character
    char = Gurps::Character.new
    char.strength = st
    char.dexterity = dx
    char.intelligence = iq
    char.health = ht
    char
  end
end