class CreateDebts < ActiveRecord::Migration[5.0]
  def change
    create_table :debts do |t|
      t.string :content
      t.decimal :fee
      t.integer :finance_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
