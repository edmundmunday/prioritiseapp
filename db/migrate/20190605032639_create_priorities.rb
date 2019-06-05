class CreatePriorities < ActiveRecord::Migration[5.2]
  def change
    create_table :priorities do |t|
      t.integer :feature_id
      t.string :name
      t.integer :new_sales
      t.integer :existing_customers
      t.integer :strategic

      t.timestamps
    end
  end
end
