class ChangePriceInActivities < ActiveRecord::Migration[6.0]
  def change
    add_monetize :activities, :price, currency: { present: false }
  end
end
