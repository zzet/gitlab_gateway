module GitlabGateway
  module Clients
    module V3
      class UserTeams < GitlabGateway::Client

        get :user_teams, "/api/v3/user_teams"

        get :user_team, "/api/v3/user_teams/:id" do |resource|
          resource.required :id
        end

        post :create_user_team, "/api/v3/user_teams" do |resource|
          resource.required :name, :path
        end

        # Team members
        get :team_members, "/api/v3/user_teams/:id/members" do |resource|
          resource.required :id
        end

        post :add_member_into_team, "/api/v3/user_teams/:id/members" do |resource|
          resource.required :id, :user_id, :access_level
        end

        get :team_member, "/api/v3/user_teams/:id/members/:user_id" do |resource|
          resource.required :id, :user_id
        end

        delete :team_member, "/api/v3/user_teams/:id/members/:user_id" do |resource|
          resource.required :id, :user_id
        end

        # Team projects
        get :team_projects, "/api/v3/user_teams/:id/projects" do |resource|
          resource.required :id
        end

        post :add_project_into_team, "/api/v3/user_teams/:id/projects" do |resource|
          resource.required :id, :project_id, :greatest_access_level
        end

        get :team_project, "/api/v3/user_teams/:id/projects/:project_id" do |resource|
          resource.required :id, :project_id
        end

        delete :team_project, "/api/v3/user_teams/:id/projects/:project_id" do |resource|
          resource.required :id, :project_id
        end


      end
    end
  end
end
