class AddKeepsCountToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :keeps_count, :integer,default: 0
  end
end
