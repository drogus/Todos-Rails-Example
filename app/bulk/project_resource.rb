class ProjectResource < ApplicationResource
  def as_json_options(klass)
    {:include => { :todos => { :only => :id } } }
  end
end
