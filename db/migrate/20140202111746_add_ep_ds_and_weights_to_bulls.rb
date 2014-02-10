class AddEpDsAndWeightsToBulls < ActiveRecord::Migration
  def change
  	add_column :bulls, :sale_order, :integer
  	add_column :bulls, :polled, :boolean
  	add_column :bulls, :twin, :boolean
  	add_column :bulls, :bw, :integer
  	add_column :bulls, :ww, :integer
  	add_column :bulls, :yw, :integer
  	add_column :bulls, :bw_epd, :decimal
  	add_column :bulls, :ww_epd, :decimal
  	add_column :bulls, :yw_epd, :decimal
  	add_column :bulls, :milk_epd, :decimal
  end
end
