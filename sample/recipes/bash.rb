bash "change system greeting" do
  user "root"
  code <<-EOH
  echo "Hello OpsWorks World Updated!" >> /etc/motd
  EOH
end
