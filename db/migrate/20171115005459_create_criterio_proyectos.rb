class CreateCriterioProyectos < ActiveRecord::Migration[5.1]
  def change
    create_table :criterio_proyectos do |t|
      t.integer :criteria_id
      t.integer :project_id
      t.integer :value

      t.timestamps
    end
  end
end
