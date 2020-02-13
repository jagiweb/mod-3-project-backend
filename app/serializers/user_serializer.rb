class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :age, :sex, :bmr, :weight, :height, :email, :password_digest
  has_many :days
  # def foods 
  #   self.days.foods.map do |food|
  #     {id: food.id,
  #       calories: food.calories, 
  #      name: food.name,
  #     }
  #   end 
  # end 
end
