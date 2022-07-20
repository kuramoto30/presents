class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :present_name, null: false
      t.integer :present_score, null: false, default: 1
      t.string :present_review, null: false

      t.timestamps
    end
  end
end
