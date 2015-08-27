class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :created_games, :class_name => "Game", :foreign_key => :creator_id

  has_many :user_diagrams
  has_many :games, :through => :user_games

  has_many :zones

  has_many :decks
end
