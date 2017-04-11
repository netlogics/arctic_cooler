require 'rails_helper'

RSpec.describe MotorDetail, type: :model do

  context 'default values' do
    before :all do
      MotorDetail.create
    end

    it { expect(subject.amperage).not_to be_nil }
    it { expect(subject.horsepower).not_to be_nil }
    it { expect(subject.voltage).not_to be_nil }
    it { expect(subject.height).not_to be_nil }
    it { expect(subject.width).not_to be_nil }
  end

  context 'crud' do
    let(:motor_detail) { create :motor_detail }

    it 'is readable' do
      expect(MotorDetail.find(motor_detail.id)).to eq(motor_detail)
    end

    it 'is creatable' do
      expect(motor_detail.persisted?).to be(true)
    end

    it 'is updatable' do
      expect { motor_detail.save! }.not_to raise_error
    end

    it 'is deletable' do
      id = motor_detail.id
      motor_detail.delete
      expect { MotorDetail.find(id) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  context 'associations' do
    let(:motor_detail) { create :motor_detail }

    it 'belongs to motor' do
      expect(motor_detail.motor).to be_a(Motor)
    end
  end
end
