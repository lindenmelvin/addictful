class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.integer  :user_id
    	t.string   :title
    	t.string   :body
    	t.string   :url

    	t.timestamps
    end
  end
end
