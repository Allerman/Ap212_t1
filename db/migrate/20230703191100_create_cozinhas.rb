class CreateCozinhas < ActiveRecord::Migration[7.0]
  def change
    create_table :cozinhas do |t|
      t.string :item
      t.boolean :comprado

      t.timestamps
    end
  end
end
