class ChangeWeightName < ActiveRecord::Migration
  def change
  	rename_column :bulls, :weight, :real_yw
  end
end
