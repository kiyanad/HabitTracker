class CreateUserActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :user_activities do |t|
      t.integer :user_id
        t.integer :activity_id
        t.string :description
      t.boolean :status, default: false
      t.datetime :start_time, default: -> {'CURRENT_TIMESTAMP'}


      t.timestamps
    end
  end
end
