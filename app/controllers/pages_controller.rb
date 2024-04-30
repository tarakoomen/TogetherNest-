class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def grouprec   # Matt's temporary page
  end

  def mentor_info

  end
end
