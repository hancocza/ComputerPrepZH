class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :lab, null: false, foreign_key: true
      t.references :computer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
