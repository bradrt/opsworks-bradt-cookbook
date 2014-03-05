bash "change system greeting" do
  user "root"
  code <<-EOH
  echo "#{node[:motd1]} #{node[:motd2]}" >> /etc/motd
  echo "hostname: #{node[:opsworks][:instance][:hostname]}" >> /etc/motd
  EOH
end
