class AddSkuToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :sku, :string
  end
end
