class UserSessionController < ApplicationController
  def signed_in
    render :json => {:signed_in => user_signed_in?}
  end
end
