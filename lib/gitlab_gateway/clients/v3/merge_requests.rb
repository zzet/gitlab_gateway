module GitlabGateway
  module Clients
    module V3
      class MergeRequests < GitlabGateway::Client

        get :merge_requests, "/api/v3/projects/:id/merge_requests" do |resource|
          resource.required :id
        end

        get :merge_request, "/api/v3/projects/:id/merge_requests/merge_request_id" do |resource|
          resource.required :id, :merge_request_id
        end

        post :create_merge_request, "/api/v3/projects/:id/merge_requests" do |resource|
          resource.required :id, :title, :source_branch, :target_branch

          resource.optional :assignee_id
        end

        put :update_merge_request, "/api/v3/projects/:id/merge_requests/:merge_request_id" do |resource|
          resource.required :id, :merge_request_id

          resource.optional :title, :description, :assignee_id,
            :source_branch, :target_branch, :close
        end

        post :comment_merge_request, "/api/v3/projects/:id/merge_request/:merge_request_id/comments" do |resource|
          resource.required :id, :merge_request_id, :note
        end
      end
    end
  end
end
