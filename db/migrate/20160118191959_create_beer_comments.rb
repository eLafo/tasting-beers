class CreateBeerComments < ActiveRecord::Migration
  def change
    create_table :beer_comments do |t|
      t.references :beer, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :body

      t.timestamps null: false
    end
  end
end
