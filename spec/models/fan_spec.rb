require 'rails_helper'

RSpec.describe Fan, type: :model do
  context 'crud' do
    let(:fan) { create :fan }

    it 'is readable' do
      expect(Fan.find(fan.id)).to eq(fan)
    end

    it 'is creatable' do
      expect(fan.persisted?).to be(true)
    end

    it 'is updatable' do
      fan.state = 'on'
      expect { fan.save! }.not_to raise_error
    end

    it 'is deletable' do
      id = fan.id
      fan.delete
      expect { Fan.find(id) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  context 'associations' do
    let(:fan) { create :fan }

    it 'has_one blade' do
      expect(fan.blade).to be_a(Blade)
    end

    it 'has_one motor' do
      expect(fan.motor).to be_a(Motor)
    end

    it 'has_one location' do
      expect(fan.location).to be_a(Location)
    end
  end
end
