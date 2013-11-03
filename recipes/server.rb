include_recipe "mariadb::mariadb_repo"
include_recipe "mysql::server"

# override my.cnf
begin
  t = resources(:template => "#{node['mysql']['conf_dir']}/my.cnf")
  t.source "my.cnf.erb"
  t.cookbook "mariadb"
rescue Chef::Exceptions::ResourceNotFound
  Chef::Log.warn "could not find template #{node['mysql']['conf_dir']}/my.cnf to modify"
end
