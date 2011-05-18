class ProjectResource < ApplicationResource
  def as_json_options(klass)
    {:include => { :todos => { :only => :id } } }
  end

  def create(hashes)
    super(hashes) do |project|
      project.owner = current_user
    end
  end

  def get(ids)
    super(ids) do |ids|
      projects = current_user.projects
      ids ? projects.where(:id => ids) : projects
    end
  end
end
