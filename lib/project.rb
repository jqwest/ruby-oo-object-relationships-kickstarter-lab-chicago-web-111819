require 'pry'

class Project

    attr_reader :title
   

    def initialize(title)
        @title = title
       
    end

    
    def add_backer(backer)
       ProjectBacker.new(self, backer)
    end
    
    def backers       
        #returns an array of projects that are assoicated with
        #this project instance

        pjbackers = ProjectBacker.all.select { |pj| pj.project == self}

        pjbackers.map { |pbi| pbi.backer}
        
    end


end







