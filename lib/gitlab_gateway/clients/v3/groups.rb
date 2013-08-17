module GitlabGateway
  module Clients
    module V3
      class Groups < GitlabGateway::Client

        get :groups, "/api/v3/groups"

        get :group, "/api/v3/groups/:id" do |resource|
          resource.required :id
        end

        post :create_group, "/api/v3/groups" do |resource|
          resource.required :name, :path
        end

        post :transfer_project, "/api/v3/groups/:id/projects/:project_id" do |resource|
          resource.required :id, :project_id
        end
      end
    end
  end
end
