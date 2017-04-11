class Fan < ApplicationRecord
  has_one :blade
  has_one :motor
  has_one :location
  has_many :ventilation_logs

  delegate :state, to: :motor
  Motor.states.each { |state| delegate state.to_sym, to: :motor }

  def start
    on
  end

  def stop
    off
  end

  def method_missing name, *args, &block
    if state_predicate_method? name
      self.class.delegate state.to_sym, to: :motor
      send(name)
    end
    super name, *args, &block
  end
  
  private

  def state_predicate_methods
    Motor.states.join("\\?|") << "\\?"
  end

  def state_predicate_method? name
    /(?<running_state>#{state_predicate_methods})/ =~ name
    !!$1
  end

end
