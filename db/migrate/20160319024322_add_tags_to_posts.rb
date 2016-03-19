class AddTagsToPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.text :tags
    end
  end
end
