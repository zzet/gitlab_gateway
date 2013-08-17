module GitlabGateway
  module Clients
    module V3
      class Users < GitlabGateway::Client
        get :users, "/api/v3/users"

        get :user, "/api/v3/users/:id", do |resource|
          resource.required :id
        end

        post :create_user, "/api/v3/users" do |resource|
          resource.required :email, :password, :username, :name

          resource.optional :skype, :linkedin, :twitter, :projects_limit,
            :extern_uid, :provider, :bio
        end

        put :update_user, "/api/v3/users/:id" do |resource|
          resource.required :id

          resource.optional :email, :password, :username, :name,
            :skype, :linkedin, :twitter, :projects_limit,
            :extern_uid, :provider, :bio
        end

        delete :remove_user, "/api/v3/users/:id" do |resource|
          resource.required :id
        end

        get :current_user, "/api/v3/user"

        get :current_user_keys, "/api/v3/user/keys"

        get :current_user_key, "/api/v3/user/keys/:id"

        post :add_key_to_current_user, "/api/v3/user/keys" do |resource|
          resource.required :title, :key
        end

        delete :remove_current_user_key, "/api/v3/user/keys/:key_id" do |resource|
          resource.required :key_id
        end

        post :add_key_to_user, "/api/v3/users/:id/keys" do |resource|
          resource.required :id, :title, :key
        end
      end
    end
  end
end
