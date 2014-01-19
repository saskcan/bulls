class CreatePublicComments < ActiveRecord::Migration
  def change
    create_table :public_comments do |t|
      t.integer :bull_id
      t.string :content

      t.timestamps
    end
  end
end
