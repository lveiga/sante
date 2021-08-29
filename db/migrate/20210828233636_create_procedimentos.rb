class CreateProcedimentos < ActiveRecord::Migration[6.1]
  def change
    create_table :procedimentos do |t|
      t.string :descricao
      t.float :valor

      t.timestamps
    end
  end
end
