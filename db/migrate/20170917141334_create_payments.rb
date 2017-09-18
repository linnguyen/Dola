class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :name
      t.decimal :fee

      t.timestamps
    end
  end
end
