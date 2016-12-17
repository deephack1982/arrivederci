class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :reservations_email
      t.string :phone_number
      t.text :address
      t.references :supplier, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
