class AddProfilesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :text
    add_column :users, :area, :string
    add_column :users, :url, :string
  end
end
