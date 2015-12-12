class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.string :usuario
      t.string :senha

      t.timestamps null: false
    end
  end
end
