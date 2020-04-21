class CreateComputers < ActiveRecord::Migration[6.0]
  def change
    create_table :computers do |t|
      t.string :name
      t.integer :barcode
      t.text :description
      t.string :make
      t.string :model
      t.string :department

      t.timestamps
    end
  end
end
