class AddFirstToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first, :string
  end
end
