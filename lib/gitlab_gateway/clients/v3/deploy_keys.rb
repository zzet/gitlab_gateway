module GitlabGateway
  module Clients
    module V3
      class DeployKeys < GitlabGateway::Client

        get :deploy_keys, "/api/v3/projects/:id/keys" do |resource|
          resource.required :id
        end

        get :deploy_key, "/api/v3/projects/:id/keys/:key_id" do |resource|
          resource.required :id, :key_id
        end

        post :create_deploy_key, "/api/v3/projects/:id/keys" do |resource|
          resource.required :id, :title, :key
        end

        delete :remove_deploy_key, "/api/v3/projects/:id/keys/:key_id" do |resource|
          resource.required :id, :key_id
        end
      end
    end
  end
end
