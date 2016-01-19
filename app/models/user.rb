class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :beers, inverse_of: :user
  has_many :comments, inverse_of: :user

  acts_as_voter     # relationship :votes will be obscured by the same named relationship from acts_as_voteable :(
end
