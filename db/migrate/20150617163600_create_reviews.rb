class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :cleanliness
      t.integer :safety
      t.integer :scent
      t.integer :ecofriendliness
      t.integer :ambiance
      t.text :comment

      t.timestamps null: false
    end
  end
end
