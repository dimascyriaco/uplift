class Character
  include ActiveModel::Model
  attr_accessor :character_datum

  def initialize(attributes = {})
    super
    @character_datum ||= CharacterDatum.new
  end

  def method_missing(method)
    if character_datum.respond_to?(method)
      character_datum.public_send(method)
    else
      super
    end
  end
end