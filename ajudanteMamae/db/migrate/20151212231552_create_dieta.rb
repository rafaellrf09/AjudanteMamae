class CreateDieta < ActiveRecord::Migration
  def change
    create_table :dieta do |t|
      t.string :nome
      t.references :bebe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
