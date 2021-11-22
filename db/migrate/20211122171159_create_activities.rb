class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.float :price
      t.float :rating
      t.string :location

      t.timestamps
    end
  end
end
