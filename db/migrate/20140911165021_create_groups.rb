class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.integer :owner
      t.boolean :isPublic
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
