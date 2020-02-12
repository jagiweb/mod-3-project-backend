class UserSerializer < ActiveModel::Serializer
  attributes :id, :days, :username, :age, :sex, :bmr, :weight, :height, :email, :password_digest

  # def days 
  #   self.days.map do |day|
  #     {id: day.id
  #       calories: day.calories, 
  #      date: day.date,
  #     }
  #   end 
  # end 
end
