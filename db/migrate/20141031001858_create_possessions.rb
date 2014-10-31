class CreatePossessions < ActiveRecord::Migration
  def change
    create_table :possessions do |t|
      t.string :name
      t.string :model_num
      t.string :receipt_url
      t.float :est_value

      t.timestamps
    end
  end
end
