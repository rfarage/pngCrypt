class AddImageStatToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ImageUploads, :integer
  end
end
