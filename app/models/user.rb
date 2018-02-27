class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessor :email, :password, :password_confirmation, :remember_me, :name

  has_many :keywordgroups
  has_many :keywords
  has_many :greetings
end
