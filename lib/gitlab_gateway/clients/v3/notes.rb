module GitlabGateway
  module Clients
    module V3
      class Notes < GitlabGateway::Client

        get :project_wall_notes, "/api/v3/projects/:id/notes" do |resource|
          resource.required :id
        end

        get :project_wall_note, "/api/v3/projects/:id/notes/note_id" do |resource|
          resource.required :id, :note_id
        end

        post :create_project_wall_note, "/api/v3/projects/:id/notes" do |resource|
          resource.required :id, :body
        end

        # Issues
        get :issue_notes, "/api/v3/projects/:id/issues/:issue_id/notes" do |resource|
          resource.required :id, :issue_id
        end

        get :project_wall_note, "/api/v3/projects/:id/issues/issue_id/notes/note_id" do |resource|
          resource.required :id, :issue_id, :note_id
        end

        post :create_project_wall_note, "/api/v3/projects/:id/issues/issue_id/notes" do |resource|
          resource.required :id, :issue_id, :body
        end

        # Snippets
        get :snippet_notes, "/api/v3/projects/:id/snippets/:snippet_id/notes" do |resource|
          resource.required :id, :snippet_id
        end

        get :project_wall_note, "/api/v3/projects/:id/snippets/snippet_id/notes/note_id" do |resource|
          resource.required :id, :snippet_id, :note_id
        end

        post :create_project_wall_note, "/api/v3/projects/:id/snippets/snippet_id/notes" do |resource|
          resource.required :id, :snippet_id, :body
        end

        # MergeRequests
        get :merge_request_notes, "/api/v3/projects/:id/merge_requests/:merge_request_id/notes" do |resource|
          resource.required :id, :merge_request_id
        end

        get :project_wall_note, "/api/v3/projects/:id/merge_requests/merge_request_id/notes/note_id" do |resource|
          resource.required :id, :merge_request_id, :note_id
        end

        post :create_project_wall_note, "/api/v3/projects/:id/merge_requests/merge_request_id/notes" do |resource|
          resource.required :id, :merge_request_id, :body
        end
      end
    end
  end
end
