class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.string :title
      t.string :body
      t.string :image_id

      t.timestamps
    end
  end
end
