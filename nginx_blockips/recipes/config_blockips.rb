template "/etc/nginx/conf.d/blockips.conf" do
  source "blockips.conf.erb"
  owner "root"
  group "root"
  mode "0644"  
end

service "nginx" do
  action :reload
end
