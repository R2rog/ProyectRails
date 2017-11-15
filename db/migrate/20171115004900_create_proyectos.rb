class CreateProyectos < ActiveRecord::Migration[5.1]
  def change
    create_table :proyectos do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.integer :priority

      t.timestamps
    end
  end
end
