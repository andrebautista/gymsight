class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
    @banner_id = "about"
  end

  def offerings
    @banner_id = "offerings";
    @link_class = "hidden"
  end

  def gap
    @banner_text_l1 = "General"
    @banner_text_l2 = "Athletic Program"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @banner_id = "offerings";
    @offerings_active = "active"
  end

  def bmp
    @banner_text_l1 = "Big Mountain"
    @banner_text_l2 = "Program"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @offerings_active = "active"
  end

  def rip
    @banner_text_l1 = "Rock & Ice"
    @banner_text_l2 = "Program"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @offerings_active = "active"
  end

  def personalt
    @banner_text_l1 = "Personal"
    @banner_text_l2 = "Training"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @offerings_active = "active"
  end

  def semipersonalt
    @banner_text_l1 = "Semi-Private"
    @banner_text_l2 = "Training"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @offerings_active = "active"
  end

  def essentials
    @banner_text_l1 = "Essentials"
    @banner_text_l2 = "Pipeline"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @offerings_active = "active"
  end

  def faq
    @banner_text_l1 = "Frequently"
    @banner_text_l2 = "Asked Questions"
    @banner_image = "what-we-offer-banner"
  end

end



