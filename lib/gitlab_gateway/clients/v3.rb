module GitlabGateway
  module Clients
    module V3
      autoload :DeployKeys,     "gitlab_gateway/clients/v3/deploy_keys"
      autoload :Groups,         "gitlab_gateway/clients/v3/groups"
      autoload :Issues,         "gitlab_gateway/clients/v3/issues"
      autoload :MergeRequests,  "gitlab_gateway/clients/v3/merge_requests"
      autoload :Milestones,     "gitlab_gateway/clients/v3/milestones"
      autoload :Notes,          "gitlab_gateway/clients/v3/notes"
      autoload :Projects,       "gitlab_gateway/clients/v3/projects"
      autoload :Repositories,   "gitlab_gateway/clients/v3/repositories"
      autoload :Sessions,       "gitlab_gateway/clients/v3/sessions"
      autoload :Snippets,       "gitlab_gateway/clients/v3/snippets"
      autoload :SystemHooks,    "gitlab_gateway/clients/v3/system_hooks"
      autoload :UserTeams,      "gitlab_gateway/clients/v3/notes"
      autoload :Users,          "gitlab_gateway/clients/v3/notes"
    end
  end
end
