class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
    "/plans"
  end
  def after_sign_out_path_for(resource_or_scope)
    "http://www.google.com/imgres?imgurl=http://fast-images.picyou.com/images/InwJbP/InwJbP.jpg&imgrefurl=http://picyou.com/InwJbP&h=1024&w=1024&sz=172&tbnid=fObSJWxVs5ZwAM:&tbnh=90&tbnw=90&zoom=1&usg=__aZf_ZIkBSanSOTRuBzuEwDMdyNM=&docid=2365huVztPQyfM&sa=X&ei=EyxPUrz1H5et4AO5lIHQCA&ved=0CDsQ9QEwAg"
  end


end
