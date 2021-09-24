class RemoveProfileUrlFromContact < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :profile_url, :string
  end
end
