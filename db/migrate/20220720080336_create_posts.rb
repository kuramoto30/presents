class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :present_name
      t.integer :present_score
      t.string :present_review

      t.timestamps
    end
  end
end
