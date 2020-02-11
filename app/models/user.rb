class User < ApplicationRecord
    has_many :days

    validates :username, presence: true
    validates :email, :uniqueness => true, on: :create
    validates :email, :presence => true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    # validates :password, presence: true
    has_secure_password

end
