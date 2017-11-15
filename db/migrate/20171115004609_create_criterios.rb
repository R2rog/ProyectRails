class CreateCriterios < ActiveRecord::Migration[5.1]
  def change
    create_table :criterios do |t|
      t.string :nombre
      t.integer :ponderacion
      t.integer :tipo
      t.integer :calificacion

      t.timestamps
    end
  end
end
