require 'spec_helper'

describe Character do
  it 'validates presence of st' do
    character = Character.create
    expect(character.errors[:st]).to eq(["can't be blank"])
  end

  it 'validates presence of dx' do
    character = Character.create
    expect(character.errors[:dx]).to eq(["can't be blank"])
  end

  it 'validates presence of iq' do
    character = Character.create
    expect(character.errors[:iq]).to eq(["can't be blank"])
  end

  it 'validates presence of ht' do
    character = Character.create
    expect(character.errors[:ht]).to eq(["can't be blank"])
  end

  it 'is valid with a name' do
    character = Character.new(
        name: 'John',
        st: 10,
        dx: 10,
        iq: 10,
        ht: 10)

    expect(character).to be_valid
  end
end