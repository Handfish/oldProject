class CreateUserImages < ActiveRecord::Migration
  def change
    create_table :user_images do |t|
      t.string :description
      t.integer :previous
      t.integer :next

      t.timestamps
    end
  end
end
