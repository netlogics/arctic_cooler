require 'rails_helper'

RSpec.describe VentilationLog, type: :model do
  context 'crud' do
    let(:ventilation_log) { create :ventilation_log }

    it 'is readable' do
      expect(VentilationLog.find(ventilation_log.id)).to eq(ventilation_log)
    end

    it 'is creatable' do
      expect(ventilation_log.persisted?).to be(true)
    end

    it 'is updatable' do
      ventilation_log.start_time = Time.new
      ventilation_log.end_time = Time.new + 2.hours
      expect { ventilation_log.save! }.not_to raise_error
    end

    it 'is deletable' do
      id = ventilation_log.id
      ventilation_log.delete
      expect { VentilationLog.find(id) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  context 'associations' do
    let(:ventilation_log) { create :ventilation_log }

    it 'belongs_to fan' do
      expect(ventilation_log.fan).to be_a(Fan)
    end

    it 'belongs_to grid' do
      expect(ventilation_log.grid).to be_a(Grid)
    end
  end
end
