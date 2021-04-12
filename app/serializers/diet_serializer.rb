class DietSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :gender, :height, :age, :diet_type, :start_weight, :lost_weight, :duration
  has_many :reviews
end
