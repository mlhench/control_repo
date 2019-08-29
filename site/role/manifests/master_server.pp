class role::master_server {
  include profile::base
  include profile::agent_nodes
  file { '/etc/docker/agent/Dockerfile':
    content => "ENV HTTP_PROXY \"http://10.139.70.40:8080\"\n
                ENV HTTPS_PROXY \"http://10.139.70.40:8080\"
               "
    }
}
