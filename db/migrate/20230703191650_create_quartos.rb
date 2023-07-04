class CreateQuartos < ActiveRecord::Migration[7.0]
  def change
    create_table :quartos do |t|
      t.string :item
      t.boolean :comprado

      t.timestamps
    end
  end
end
