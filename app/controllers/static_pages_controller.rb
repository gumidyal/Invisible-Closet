class StaticPagesController < ApplicationController
  def home
    @needs = Need.all
  end

  def help
  end

  def donation
  end

  def search
  end

  def about
  end

  def contact
  end
end
