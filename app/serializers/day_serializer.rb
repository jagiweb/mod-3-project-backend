class DaySerializer < ActiveModel::Serializer
  attributes :id, :foods, :calories, :date, :user_id
end