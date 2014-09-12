class RemoveOwnerFromGroups < ActiveRecord::Migration
  def change
    remove_column :groups, :owner, :integer
  end
end
