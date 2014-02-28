bash "change system greeting" do
  user "root"
  code <<-EOH
  echo "#{node[:motd1]} #{node[:motd2]}" >> /etc/motd
  EOH
end
