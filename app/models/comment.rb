class Comment < ActiveRecord::Base
  belongs_to :user, inverse_of: :comments
  belongs_to :commentable, polymorphic: true, inverse_of: :comments

  def author
    user.email
  end
end
