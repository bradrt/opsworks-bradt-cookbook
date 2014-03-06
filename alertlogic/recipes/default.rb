package "alertlogic" do
  action :install
  source "al-threat-host_LATEST.amd64.deb"
end

service "al-threat-host" do
  supports :start => true
  action [ :enable, :start ]
end

bash "provision alertlogic protected host" do
  user "root"
  code <<-EOH
  /etc/init.d/al-threat-host provision --key #{[:alertlogic][:key]} --inst-type host
  EOH
  notifies :start, resources(:service => "al-threat-host")
end
