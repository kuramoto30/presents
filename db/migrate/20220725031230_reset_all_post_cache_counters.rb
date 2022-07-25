class ResetAllPostCacheCounters < ActiveRecord::Migration[6.1]
  def change
    def up
      Post.find_each { |post| Post.reset_counters(post.id, :keeps_count) }
    end
  
    def down
    end
  end
end
