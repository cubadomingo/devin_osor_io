class StaticPagesController < ApplicationController
  def home
    @ip = request.remote_ip
  end

end
