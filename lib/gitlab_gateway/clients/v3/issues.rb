module GitlabGateway
  module Clients
    module V3
      class Issues < GitlabGateway::Client

        get :issues, "/api/v3/issues"

        get :project_issues, "/api/v3/projects/:id/issues" do |resource|
          resource.required :id
        end

        get :project_issue, "/api/v3/projects/:id/issues/issue_id" do |resource|
          resource.required :id, :issue_id
        end

        post :create_issue, "/api/v3/projects/:id/issues" do |resource|
          resource.required :id, :title

          resource.optional :description, :assignee_id, :milestone_id, :labels
        end

        put :update_issue, "/api/v3/projects/:id/issues/:issue_id" do |resource|
          resource.required :id, :issue_id

          resource.optional :title, :description, :assignee_id,
            :milestone_id, :labels, :state_event
        end
      end
    end
  end
end
