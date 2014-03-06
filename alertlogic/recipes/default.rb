package "alertlogic" do
  action :install
  version "latest"
  source "#{Chef::Config[:file_cache_path]}/site-cookbooks/alertlogic/files/default/al-threat-host_LATEST.amd64.deb"
end

service "al-threat-host" do
  supports :start => true
end

bash "provision alertlogic protected host" do
  user "root"
  code <<-EOH
  /etc/init.d/al-threat-host provision --key 0dfda93eec9e6fa584ee26baf049eef4c428e2de651e4ae022 --inst-type host
  EOH
  notifies :start, resources(:service => "al-threat-host")
end
