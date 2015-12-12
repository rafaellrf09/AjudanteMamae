class CreateFarmacia < ActiveRecord::Migration
  def change
    create_table :farmacia do |t|
      t.string :nome
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :elevacao

      t.timestamps null: false
    end
  end
end
