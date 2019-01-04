class AddDescriton1AndDescription2AndDescription3AndGoal < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :description1, :string
    add_column :users, :description2, :string
    add_column :users, :description3, :string
    add_column :users, :goal, :string

  end
end
