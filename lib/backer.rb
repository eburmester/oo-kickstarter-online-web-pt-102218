class Backer
  attr_accessor :name, :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project 
    
    backer.back_project(self) unless backer.back_projects.include?(self)
  end
  
end