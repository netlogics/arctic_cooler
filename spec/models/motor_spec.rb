require 'rails_helper'

RSpec.describe Motor, type: :model do
  context 'crud' do
    let(:motor) { create :motor }

    it 'is readable' do
      expect(Motor.find(motor.id)).to eq(motor)
    end

    it 'is creatable' do
      expect(motor.persisted?).to be(true)
    end

    it 'is updatable' do
      motor.state = 'on'
      expect { motor.save! }.not_to raise_error
    end

    it 'is deletable' do
      id = motor.id
      motor.delete
      expect { Motor.find(id) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  context 'associations' do
    let(:motor) { create :motor }

    it 'belongs to fan' do
      expect(motor.fan).to be_a(Fan)
    end
  end
end
