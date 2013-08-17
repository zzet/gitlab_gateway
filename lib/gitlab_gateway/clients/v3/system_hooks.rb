module GitlabGateway
  module Clients
    module V3
      class SystemHooks < GitlabGateway::Client

        get :system_hooks, "/api/v3/hooks"

        post :system_hooks, "/api/v3/hooks" do |resource|
          resource.required :url
        end

        get :test_system_hook, "/api/v3/hooks/:id" do |resource|
          resource.required :id
        end

        delete :remove_system_hook, "/api/v3/hooks/:id" do |resource|
          resource.required :id
        end
      end
    end
  end
end
