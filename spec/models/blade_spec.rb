require 'rails_helper'

RSpec.describe Blade, type: :model do
  context 'default values' do
    before :all do
      Blade.create
    end

    it { expect(subject.length).not_to be_nil }
    it { expect(subject.width).not_to be_nil }
    it { expect(subject.type).not_to be_nil }
  end

  context 'crud' do
    let(:blade) { create :blade }

    it 'is readable' do
      expect(Blade.find(blade.id)).to eq(blade)
    end

    it 'creates a blade' do
      expect(blade.persisted?).to be(true)
    end

    it 'updates a blade' do
      blade.length = 333.33
      blade.width = 111.11
      blade.type = 'widgetable'
      expect { blade.save! }.not_to raise_error
    end

    it 'is deletable' do
      id = blade.id
      blade.delete
      expect { Blade.find(id) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  context 'associations' do
    let(:blade) { create :blade }

    it 'belongs to fan' do
      expect(blade.fan).to be_a(Fan)
    end
  end

end
