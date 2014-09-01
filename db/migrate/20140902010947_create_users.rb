class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :yo_username
      t.string :yo_user_id

      t.timestamps
    end
  end
end
