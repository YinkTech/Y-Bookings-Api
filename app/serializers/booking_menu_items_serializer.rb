class BookingMenuItemsSerializer
  include JSONAPI::Serializer
  attributes :id, :item_name, :image_url, :item_fee, :item_description, :image
end
