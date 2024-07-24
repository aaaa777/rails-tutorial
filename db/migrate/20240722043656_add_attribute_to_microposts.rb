class AddAttributeToMicroposts < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :microposts, :users
    change_column_null :microposts, :user_id, false
    add_index :microposts, [:user_id, :created_at]
  end
end
