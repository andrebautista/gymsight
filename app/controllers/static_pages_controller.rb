class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
  end

  def offerings
  end

  def gap
  end

  def gallery
    @images = Image.all
  end
end



