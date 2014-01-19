class AddUserIdToPubicComments < ActiveRecord::Migration
  def change
  	add_column :public_comments, :user_id, :integer
  end
end
