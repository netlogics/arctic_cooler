class Blade < ApplicationRecord
  self.inheritance_column = :_type_disabled

  belongs_to :fan
end
