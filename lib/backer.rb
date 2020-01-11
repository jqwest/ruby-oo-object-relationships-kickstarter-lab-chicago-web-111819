class Backer

    attr_reader :name
    def initialize(name)
        @name = name
    end

  
    def back_project(project)
        #instance method that accepts a project as an argument
        # creates a project backer
        # associating the project with this backer
        # expect(ProjectBacker.all.first.project).to eq(magic)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backer_array = ProjectBacker.all.select do |project|
        project.backer == self
        end
      backer_array.map { |backer| backer.project}
    end

end
