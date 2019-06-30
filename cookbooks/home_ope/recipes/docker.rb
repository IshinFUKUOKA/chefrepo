# source https://docs.docker.com/install/linux/docker-ce/centos/

yum_package %w(yum-utils device-mapper-persistent-data lvm2) do
  action :install
end

execute 'add docker repository' do
  command 'yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo'
end

yum_package %w(docker-ce docker-ce-cli containerd.io) do
  action :install
end

service 'docker' do
  action :start
end
