class AddCoverToPictures < ActiveRecord::Migration
  def change
  	  	add_column :pictures, :cover, :integer
  end
end
