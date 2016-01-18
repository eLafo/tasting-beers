class BeerComment < ActiveRecord::Base
  belongs_to :beer, inverse_of: :comments
  belongs_to :user, inverse_of: :beer_comments
end
