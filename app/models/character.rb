class Character < ActiveRecord::Base
  validates :st, :dx, :iq, :ht, presence: true

  attr_accessor :character_datum
end