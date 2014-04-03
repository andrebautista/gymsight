class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
    @banner = 'Interior_Banner_Images/wwa_banner_embedded_type.jpg'
    @banner_text = 'who we are'
  end

  def offerings

  end

  def gallery
    @images = Image.all
  end
end



