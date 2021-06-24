class AddTopicUrlToStaff < ActiveRecord::Migration[6.1]
 
	def self.up
	  	add_column :staffs, :topic, :string
    	add_column :staffs, :url, :string
	end

	def self.down
	 	remove_column :staffs, :topic, :string
    	remove_column :staffs, :url, :string
	end

end
