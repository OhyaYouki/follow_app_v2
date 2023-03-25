class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.string  :nickname,             null: false
      t.integer :user_id,              null: false
      t.timestamps
    end
  end
end
