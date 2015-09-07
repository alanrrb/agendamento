class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.string :horario
      t.integer :dia
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
