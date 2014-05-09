class StaticPagesController < ApplicationController
  def home
  end

  def about
    @banner_id = "about"
    @about_active = "header-active"
  end

  def offerings
    @banner_id = "offerings";
    @link_class = "hidden"
    @offerings_active = "header-active"
    @program_active = "active"
  end

  def gap
    @banner_text_l1 = "General"
    @banner_text_l2 = "Athletic Program"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @banner_id = "offerings";
    @program_active = "active"
    @offerings_active = "header-active"
  end

  def bmp
    @banner_text_l1 = "Big Mountain"
    @banner_text_l2 = "Program"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @program_active = "active"
    @offerings_active = "header-active"
  end

  def rip
    @banner_text_l1 = "Rock & Ice"
    @banner_text_l2 = "Program"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @program_active = "active"
    @offerings_active = "header-active"
  end

  def personalt
    @banner_text_l1 = "Personal"
    @banner_text_l2 = "Training"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @program_active = "active"
    @offerings_active = "header-active"
  end

  def semipersonalt
    @banner_text_l1 = "Semi-Private"
    @banner_text_l2 = "Training"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @program_active = "active"
    @offerings_active = "header-active"
  end

  def essentials
    @banner_text_l1 = "Essentials"
    @banner_text_l2 = "Pipeline"
    @banner_image = "what-we-offer-banner"
    @link_class = "back-to-offerings"
    @essentials_active = "active"
    @offerings_active = "header-active"
    @program_active = "active"
  end

  def faq
    @banner_text_l1 = "Frequently"
    @banner_text_l2 = "Asked Questions"
    @banner_image = "what-we-offer-banner"
    @faq_active = "active"
    @offerings_active = "header-active"
  end

end



