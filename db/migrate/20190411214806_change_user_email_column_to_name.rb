class ChangeUserEmailColumnToName < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :email, :name
  end
end
