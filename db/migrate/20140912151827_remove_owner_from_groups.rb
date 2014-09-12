class RemoveOwnerFromGroups < ActiveRecord::Migration
  def change
    remove_column :groups, :Owner, :integer
  end
end
