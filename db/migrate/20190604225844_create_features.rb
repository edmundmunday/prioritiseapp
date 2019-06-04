class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :title
      t.string :description
      t.string :benefit

      t.timestamps
    end
  end
end
