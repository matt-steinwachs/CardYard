class Game < ActiveRecord::Base
  belongs_to :creator, :class_name => "User"

  has_many :user_games, :dependent => :delete_all
  has_many :users, :through => :user_games

  has_many :zones
end
