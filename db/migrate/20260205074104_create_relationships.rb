class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :followed_id
      t.index [:follower_id, :followed_id], unique: true # 同じ人を2回フォローできないようにする

      t.timestamps
    end
  end
end
