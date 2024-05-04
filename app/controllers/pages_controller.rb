class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def group_rec   # Matt's temporary page
  end

  def mentor_info # Yumi's temporary page
  end

  def mentor_form   # Matt's temporary page
  end

  def mentor_rec   # Matt's temporary page
  end

  def mentoree_show   # Matt's temporary page
  end

end
