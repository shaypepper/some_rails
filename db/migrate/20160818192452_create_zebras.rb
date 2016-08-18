class CreateZebras < ActiveRecord::Migration
  def change
    create_table :zebras do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
