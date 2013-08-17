module GitlabGateway
  module Clients
    module V3
      class Sessions < GitlabGateway::Client

        post :session, "/api/v3/session" do |resource|
          resource.required :login, :email, :password
        end

      end
    end
  end
end
