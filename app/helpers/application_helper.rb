module ApplicationHelper
  def flash_key(key)
    ['info','warning','danger','success','default'].include?(key.to_s) ? key : 'info'  
  end
end
