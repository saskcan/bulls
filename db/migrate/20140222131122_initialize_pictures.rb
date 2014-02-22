class InitializePictures < ActiveRecord::Migration
  def change
  	add_column :pictures, :bull_id, :integer
  	add_column :pictures, :filename, :string
  end
end
