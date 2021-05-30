class ChangeDataPhoneNumberOrders < ActiveRecord::Migration[6.1]
  def change
    change_column :requests, :tel, :string
  end
end
