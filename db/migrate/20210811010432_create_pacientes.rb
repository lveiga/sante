class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :endereco
      t.string :contato
      t.integer :idade

      t.timestamps
    end
  end
end
