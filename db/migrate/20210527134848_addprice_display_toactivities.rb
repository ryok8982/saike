class AddpriceDisplayToactivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :price_display, :boolean
  end
end
