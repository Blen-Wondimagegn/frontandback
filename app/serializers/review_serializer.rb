class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :comment, :diet_id
end
