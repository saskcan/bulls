class AddRegNum < ActiveRecord::Migration
  def change
  	add_column :bulls, :reg_num, :string
  end
end
