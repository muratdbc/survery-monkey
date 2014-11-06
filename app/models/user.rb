class User < ActiveRecord::Base
  has_many :survey_users
  has_many :surveys, through: :survey_users
  has_many :surveys
end
