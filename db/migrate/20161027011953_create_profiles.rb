class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :image
      t.text :name
      t.text :phone

      t.timestamps null: false
    end
  end
end
