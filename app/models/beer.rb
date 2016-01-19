class Beer < ActiveRecord::Base

  belongs_to :user, inverse_of: :beers
  has_many :comments, as: :commentable, inverse_of: :commentable
  accepts_nested_attributes_for :comments

  validates_presence_of :name
  acts_as_voteable

  # Because rails_admin does not work well with polymorphic associations  https://github.com/sferik/rails_admin/issues/1338
  # Possible monkeypatch https://github.com/playtestcloud/rails_admin/commit/abf611152e6af6b7394d3c561f24c63d958e194e#comments
  rails_admin do
    configure :comments do
      hide
    end
  end

end
