require 'rails_helper'

RSpec.describe Grid, type: :model do
  context 'crud' do
    let(:grid) { create :grid }

    it 'is readable' do
      expect(Grid.find(grid.id)).to eq(grid)
    end

    it 'is creatable' do
      expect(grid.persisted?).to be(true)
    end

    it 'is updatable' do
      grid.name = 'abyss'
      expect { grid.save! }.not_to raise_error
    end

    it 'is deletable' do
      id = grid.id
      grid.delete
      expect { Grid.find(id) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  context 'associations' do
    let(:grid) { create :grid }

    it 'has_many location' do
      expect(grid).to respond_to(:locations)
    end
  end
end
