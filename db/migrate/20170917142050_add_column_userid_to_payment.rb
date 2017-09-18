class AddColumnUseridToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :user_id, :integer
    add_index :payments, :user_id
  end
end
