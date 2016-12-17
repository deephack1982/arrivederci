class CreateTariffs < ActiveRecord::Migration
  def change
    create_table :tariffs do |t|
      t.string :name
      t.float :price
      t.references :service, index: true, foreign_key: true
      t.references :supplier, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
