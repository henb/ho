module HotelsHelper
  def help_check_icon(value)
    value ? 'ok' : 'remove'
  end

  def hotel_logo_helper(hotel, hash = {})
    if hotel.photo.url.nil?
      image_tag('hotel.png', hash)
    else
      cl_image_tag(hotel.photo.thumbnail, hash)
    end
  end

  def join_value_for(obj, range = 1...-3, str = ', ')
    address = obj.address
    address
      .attribute_names[range]
      .map { |v| address.send v.to_sym }
      .delete_if { |v| v.empty? }
      .join(str)
  end
end
