class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :price
      t.time :start_date
      t.time :end_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
