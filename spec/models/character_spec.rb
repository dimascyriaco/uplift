require 'spec_helper'

describe Character do
  it_should_behave_like 'ActiveModel'

  it 'has a CharacterDatum' do
    expect(Character.new.character_datum).not_to be_nil
  end

  it 'delagates to the CharacterDatum' do
    datum = CharacterDatum.new(name: 'John')
    character = Character.new(character_datum: datum)
    expect(character.name).to eq('John')
  end
end