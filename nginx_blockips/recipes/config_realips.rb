template "/etc/nginx/conf.d/realips.conf" do
  source "realips.conf.erb"
  owner "root"
  group "root"
  mode "0644"  
end
