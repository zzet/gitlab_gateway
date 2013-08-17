module GitlabGateway
  module Clients
    module V3
      class Milestones < GitlabGateway::Client

        get :milestones, "/api/v3/projects/:id/milestones" do |resource|
          resource.required :id
        end

        get :milestone, "/api/v3/projects/:id/milestones/milestone_id" do |resource|
          resource.required :id, :milestone_id
        end

        post :create_milestone, "/api/v3/projects/:id/milestones" do |resource|
          resource.required :id, :title

          resource.optional :description, :due_date
        end

        put :update_milestone, "/api/v3/projects/:id/milestones/:milestone_id" do |resource|
          resource.required :id, :milestone_id

          resource.optional :title, :description, :due_date, :state_event
        end
      end
    end
  end
end
