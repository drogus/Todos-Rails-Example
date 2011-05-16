class ApplicationResource < Bulk::Resource
  # In production you should filter resources that you want to handle.
  # To do so, just uncomment the next line and set resources that should be
  # available in Bulk API:
  #
  # resources :tasks, :projects

  delegate :current_user, :user_signed_in?, :to => :controller

  def authenticate(action)
    user_signed_in?
  end
end
