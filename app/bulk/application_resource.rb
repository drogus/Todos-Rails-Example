class ApplicationResource < Bulk::Resource
  resources :todos, :projects

  delegate :current_user, :user_signed_in?, :to => :controller

  def authenticate(action)
    user_signed_in?
  end

  def authorize_records(action, klass)
    # we don't want to allow fetching any User records for now
    # return true for all other types
    klass != User
  end

  def authorize_record(action, record)
    case record
    when Project then record.owner == current_user
    when Todo then record.project.owner == current_user
    end
  end
end
