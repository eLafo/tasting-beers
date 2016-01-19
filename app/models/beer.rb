class Beer < ActiveRecord::Base

  belongs_to :user, inverse_of: :beers
  # has_many :comments, class_name: 'BeerComment', inverse_of: :beer

  validates_presence_of :name
  acts_as_voteable
  acts_as_commentable

  accepts_nested_attributes_for :comments

end
