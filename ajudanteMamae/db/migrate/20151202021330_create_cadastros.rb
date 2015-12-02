class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.string :senha
      t.string :telefone

      t.timestamps null: false
    end
  end
end
