class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nickname, null: false
      t.integer :gender, null: false, default: 0
      t.integer :age, null: false, default: 0

      t.timestamps
    end
  end
end
