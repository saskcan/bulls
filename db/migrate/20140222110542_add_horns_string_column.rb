class AddHornsStringColumn < ActiveRecord::Migration
  def change
  	add_column :bulls, :horns, :string
  end
end
