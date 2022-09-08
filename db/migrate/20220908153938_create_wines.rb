class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :name, null:false
      t.string :producer, null:false
      t.integer :vintage, null:false
      t.string :label
      t.string :image
      t.integer :type, null:false, default: 0
      t.integer :color, null:false, default: 0
      t.integer :price
      t.text :description
      t.integer :sweetness, null:false
      t.integer :body, null:false
      t.integer :acidity, null:false
      t.integer :tannin, null:false

      t.timestamps
    end
  end
end
