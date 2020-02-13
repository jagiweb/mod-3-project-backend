class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :age, :sex, :bmr, :weight, :height, :email, :password_digest, :days

  # def days 
  #   self.days.map do |day|
  #     {id: day.id
  #       calories: day.calories, 
  #      date: day.date,
  #     }
  #   end 
  # end 
end
