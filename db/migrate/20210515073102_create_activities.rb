class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :body
      t.string :time
      t.integer :price
      t.integer :price_for_child
      t.integer :price_for_one
      t.string :image_id
      t.boolean :display, default: true

      t.timestamps
    end
  end
end
