class CreateTipis < ActiveRecord::Migration
  def change
    create_table :tipis do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :persons
      t.string :price
      t.string :image

      t.timestamps null: false
    end
  end
end
