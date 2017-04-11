class Motor < ApplicationRecord
  belongs_to :fan
  has_one :motor_detail

  STATES = %w(on off high med low)

  class << states
    def states
      STATES
    end

    def running_states
      states.select { |state| state != 'off' }
    end

    def stopped_states
      states.select { |state| state != 'on' }
    end
  end

  states.each do |state|
    define_method(state) { self.update_attributes(state: state.to_s) }
  end
  
  def method_missing name, *args, &block
    if state_predicate_method? name
      return state == name[0..-2]
    end
    super name, *args, &block
  end
  
  private

  def state_predicate_methods
    STATES.join("\\?|") << "\\?"
  end

  def state_predicate_method? name
    /(?<running_state>#{state_predicate_methods})/ =~ name
    !!$1
  end
end
