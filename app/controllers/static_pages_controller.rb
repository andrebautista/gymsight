class StaticPagesController < ApplicationController
  def home
    @header_image  = "header-image"
  end

  def about
    @images = Image.all
    @banner_id = "about"
    @about_active = "header-active"
  end

  def offerings
    @banner_id = "offerings";
    @link_class = "hidden"
    @offerings_active = "header-active"
    @program_active = "active"
    @offerings_header_active = "active"
  end

  def gap
    @banner_text_l1 = "General"
    @banner_text_l2 = "Athletic Program"
    @banner_image = "gap-banner"
    @link_class = "back-to-offerings"
    @banner_id = "offerings";
    @program_active = "active"
    @offerings_active = "header-active"
    @offerings_header_active = "active"
  end

  def bmp
    @banner_text_l1 = "Big Mountain"
    @banner_text_l2 = "Program"
    @banner_image = "bmp-banner"
    @link_class = "back-to-offerings"
    @program_active = "active"
    @offerings_active = "header-active"
    @offerings_header_active = "active"
  end

  def rss
    @banner_text_l1 = "Run Strong"
    @banner_text_l2 = "Strength"
    @banner_image = "rss-banner"
    @link_class = "back-to-offerings"
    @program_active = "active"
    @offerings_active = "header-active"
    @offerings_header_active = "active"
  end

  def personalt
    @banner_text_l1 = "Private"
    @banner_text_l2 = "Training"
    @banner_image = "personalt-banner"
    @link_class = "back-to-offerings"
    @program_active = "active"
    @offerings_active = "header-active"
    @offerings_header_active = "active"
  end

  # def semipersonalt
  #   @banner_text_l1 = "Semi-Private"
  #   @banner_text_l2 = "Training"
  #   @banner_image = "semip-banner"
  #   @link_class = "back-to-offerings"
  #   @program_active = "active"
  #   @offerings_active = "header-active"
  #   @offerings_header_active = "active"
  # end

  def essentials
    @banner_text_l1 = "Essentials"
    @banner_text_l2 = "Pipeline"
    @banner_image = "essentials-banner"
    @link_class = "back-to-offerings"
    @essentials_active = "active"
    @offerings_active = "header-active"
    @program_active = "active"
    @offerings_header_active = "active"
  end

  def faq
    @banner_text_l1 = "Frequently"
    @banner_text_l2 = "Asked Questions"
    @faq_active = "active"
    @offerings_active = "active"
    @offerings_header_active = "active"
  end

  def terms_and_conditions
    @gs_active = "header-active"
    @gs_header_active = "active"
  end

end



