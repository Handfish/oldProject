class RemoveColumns < ActiveRecord::Migration
  	def self.up
  		remove_column :user_images, :next
  		remove_column :user_images, :previous
	end
end

