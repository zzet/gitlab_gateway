module GitlabGateway
  module Clients
    module V3
      class Projects < GitlabGateway::Client

        get :projects, "/api/v3/projects"

        get :project, "/api/v3/projects/:id" do |resource|
          resource.required :id
        end

        post :create_project, "/api/v3/projects" do |resource|
          resource.required :name

          resource.optional :description, :default_branch,
            :issues_enabled, :wall_enabled,
            :merge_requests_enabled, :wiki_enabled,
            :snippets_enabled, :public
        end

        post :create_project_for_user, "/api/v3/projects/user/:user_id" do |resource|
          resource.required :user_id, :name


          resource.optional :description, :default_branch,
            :issues_enabled, :wall_enabled,
            :merge_requests_enabled, :wiki_enabled,
            :snippets_enabled, :public
        end

        get :members, "/api/v3/projects/:id/members" do |resource|
          resource.required :id

          resource.optional :query
        end

        get :member, "/api/v3/projects/:id/members/:user_id" do |resource|
          resource.required :id, :user_id
        end

        post :add_member, "/api/v3/projects/:id/members" do |resource|
          resource.required :id, :user_id, :access_level
        end

        put :update_member, "/api/v3/projects/:id/members/:user_id" do |resource|
          resource.required :id, :user_id, :access_level
        end

        delete :remove_member, "/api/v3/projects/:id/members/:user_id" do |resource|
          resource.required :id, :user_id
        end

        # Hooks
        get :hooks, "/api/v3/projects/:id/hooks" do |resource|
          resource.required :id
        end

        get :hook, "/api/v3/projects/:id/hooks/:hook_id" do |resource|
          resource.required :id, :hook_id
        end

        post :create_hook, "/api/v3/projects/:id/hooks" do |resource|
          resource.required :id, :url
        end

        put :update_hook, "/api/v3/projects/:id/hooks/:hook_id" do |resource|
          resource.required :id, :hook_id, :url
        end

        delete :remove_hook, "/api/v3/projects/:id/hooks/:hook_id" do |resource|
          resource.required :id, :hook_id
        end

        # Branches
        get :branches, "/api/v3/projects/:id/repository/branches" do |resource|
          resource.required :id
        end

        get :branch, "/api/v3/projects/:id/repository/branches/:branch" do |resource|
          resource.required :id, :branch
        end

        put :protect_branch, "/api/v3/projects/:id/repository/branches/:branch/protect" do |resource|
          resource.required :id, :branch
        end

        put :unprotect_branch, "/api/v3/projects/:id/repository/branches/:branch/unprotect" do |resource|
          resource.required :id, :branch
        end

        # Forks
        post :create_fork, "/api/v3/projects/:id/fork/:forked_from_id" do |resource|
          resource.required :id, :forked_from_id
        end

        delete :remove_fork, "/api/v3/projects/:id/fork" do |resource|
          resource.required :id
        end
      end
    end
  end
end
