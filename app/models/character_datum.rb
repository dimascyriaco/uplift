class CharacterDatum < ActiveRecord::Base
	validates :st, :dx, :iq, :ht, presence: true
end
