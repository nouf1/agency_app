class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :price
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
