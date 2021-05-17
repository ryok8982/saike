class AddDetailsToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :people_adult, :integer
    add_column :requests, :people_child, :integer
  end
end
