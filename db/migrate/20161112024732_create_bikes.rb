class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :title
      t.string :price
      t.text :description
      t.string :status
      t.integer :maintainer_id

      t.timestamps null: false
    end
  end
end
