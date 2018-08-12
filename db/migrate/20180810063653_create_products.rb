class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :description
    	t.string :category
    	t.string :color
    	t.string :price
    	t.json :image

      t.timestamps
    end
  end
end
