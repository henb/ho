module HotelsHelper
  def help_check_icon(value)
   value ? "ok" : "remove"
  end

  def hotel_logo_helper(hotel,hash={})
    if hotel.photo.url.nil? 
      image_tag("hotel.png",hash)
    else 
      cl_image_tag(hotel.photo.thumbnail,hash)
    end 
  end
end
