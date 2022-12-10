class CreateBookingMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_menu_items do |t|
      t.string :item_name
      t.string :image_url
      t.string :item_fee
      t.string :item_description
    end
  end
end
