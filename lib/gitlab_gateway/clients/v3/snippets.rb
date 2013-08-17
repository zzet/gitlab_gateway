module GitlabGateway
  module Clients
    module V3
      class Snippets < GitlabGateway::Client

        get :snippets, "/api/v3/projects/:id/snippets" do |resource|
          resource.required :id
        end

        get :snippet, "/api/v3/projects/:id/snippets/snippet_id" do |resource|
          resource.required :id, :snippet_id
        end

        get :snippet_content, "/api/v3/projects/:id/snippets/snippet_id/raw" do |resource|
          resource.required :id, :snippet_id
        end

        post :create_snippet, "/api/v3/projects/:id/snippets" do |resource|
          resource.required :id, :title, :file_name

          resource.optional :lifetime, :code
        end

        put :update_snippet, "/api/v3/projects/:id/snippets/:snippet_id" do |resource|
          resource.required :id, :snippet_id

          resource.optional :title, :file_name, :lifetime, :code
        end

        delete :remove_snippet, "/api/v3/projects/:id/snippets/:snippet_id" do |resource|
          resource.required :id, :snippet_id
        end


      end
    end
  end
end
