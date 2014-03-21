class StaticPagesController < ApplicationController
  def home
    @banner = "Homepage/Homepage_Header_Image_retina.jpg"
  end

  def contact
  end

  def about

  end

  def gallery
    @images = Image.all
  end
end



