class VentilationLog < ApplicationRecord
  belongs_to :fan
  belongs_to :grid

  scope :past_month -> { where("start_time >= ? and start_time <= ?", 1.month.ago, Time.now) }
  scope :past_week  -> { where("start_time >= ? and start_time <= ?", 1.week.ago, Time.now) }
  scope :running    -> { where(state: Motor.running_states) }
  scope :stopped    -> { where(state: Motor.stopped_states) }

  def running_times(logs)
    logs.each_with_object([]) do |log, obj|
      obj << log if fan.running?
    end
  end 

  def fans_running_last_week
    past_week.running
  end

  def fans_running_last_month
    past_month.running
  end

end
