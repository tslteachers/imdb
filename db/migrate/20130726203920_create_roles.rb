class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :movie_id
      t.integer :actor_id
      t.string :character_name
      t.string :category
    end
  end
end
