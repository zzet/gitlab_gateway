require "gitlab_gateway/version"
require "gitlab_gateway/config"

module GitlabGateway
  autoload :Client, "gitlab_gateway/client"
  autoload :Clients, "gitlab_gateway/clients"

  extend GitlabGateway::Config

  class << self
    def client_path
      "gitlab_gateway/clients/#{GitlabGateway.options[:api_version]}"
    end
  end

  autoload :DeployKeys,     "#{client_path}/deploy_keys"
  autoload :Groups,         "#{client_path}/groups"
  autoload :Issues,         "#{client_path}/issues"
  autoload :MergeRequests,  "#{client_path}/merge_requests"
  autoload :Milestones,     "#{client_path}/milestones"
  autoload :Notes,          "#{client_path}/notes"
  autoload :Projects,       "#{client_path}/projects"
  autoload :Repositories,   "#{client_path}/repositories"
  autoload :Sessions,       "#{client_path}/sessions"
  autoload :Snippets,       "#{client_path}/snippets"
  autoload :SystemHooks,    "#{client_path}/system_hooks"
  autoload :UserTeams,      "#{client_path}/notes"
  autoload :Users,          "#{client_path}/notes"
end
