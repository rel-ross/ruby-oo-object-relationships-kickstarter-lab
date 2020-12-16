class Project
    attr_reader :title
    def initialize title
       @title=title
    end

    def add_backer backer
        ProjectBacker.new(self, backer)
    end

    def backers
        this_projects_projectbackers = ProjectBacker.all.select do |project_backers|
            project_backers.project == self
        end
        this_projects_backers = this_projects_projectbackers.map do |project_backers|
            project_backers.backer
        end
        this_projects_backers
    end
end