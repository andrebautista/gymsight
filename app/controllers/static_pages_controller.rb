class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
    @banner = 'Interior_Banner_Images/wwa_banner.jpg'
    @banner_text = 'who we are'
  end

  def offerings
    @banner = 'Interior_Banner_Images/wwo_banner.jpg'
    @banner_text = 'what we offer'
  end

  def gallery
    @images = Image.all
  end
end



