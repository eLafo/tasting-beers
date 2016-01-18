class Beer < ActiveRecord::Base

  belongs_to :user, inverse_of: :beers
  has_many :comments, class_name: 'BeerComment', inverse_of: :beer
  accepts_nested_attributes_for :comments

  validates_presence_of :name
  acts_as_voteable

end
