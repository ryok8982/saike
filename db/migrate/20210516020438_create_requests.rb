class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.integer :tel
      t.string :address
      t.datetime :request_date
      t.references :activity, null: false, foreign_key: true
      t.timestamps
    end
  end
end
