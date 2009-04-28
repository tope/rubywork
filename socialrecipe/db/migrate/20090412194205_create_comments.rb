class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :recipe_id
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
