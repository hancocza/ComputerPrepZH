class CreateLabs < ActiveRecord::Migration[6.0]
  def change
    create_table :labs do |t|
      t.string :name
      t.string :number
      t.date :startDate
      t.date :endDate
      t.text :notes

      t.timestamps
    end
  end
end
