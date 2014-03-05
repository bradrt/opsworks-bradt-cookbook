bash "add ip to blockips.conf" do
  user "root"
  code <<-EOH
  echo "deny #{node[:ipaddress]};" >> /etc/nginx/conf.d/blockips.conf
  EOH
end

service "nginx" do
  action :reload
end
