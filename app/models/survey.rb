class Survey < ActiveRecord::Base
  has_many :survey_users
  has_many :users, through: :survey_users
  belongs_to :user, foreign_key: "author_id"
end
