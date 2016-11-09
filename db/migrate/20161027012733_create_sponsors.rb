class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.text :name
      t.text :brand

      t.timestamps null: false
    end
  end
end
