class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.string :name
      t.decimal :value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
