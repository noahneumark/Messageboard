class AddAboutmeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :aboutme, :text
  end
end
