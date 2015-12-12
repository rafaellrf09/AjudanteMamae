class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nome
      t.time :hora
      t.references :dieta, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
