class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
  end

  def offerings
    @link_class = "hidden"
  end

  def gap
    @banner_text_l1 = "General"
    @banner_text_l2 = "Athletic Program"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @active = "active"
  end

  def gallery
    @images = Image.all
  end
end



