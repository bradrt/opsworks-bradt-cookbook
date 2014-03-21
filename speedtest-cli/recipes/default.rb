git "#{Chef::Config[:file_cache_path]}/speedtest-cli" do
   repository "git://github.com/sivel/speedtest-cli.git"
   reference "master"
   action :sync
end

bash "install_speedtest-cli" do
   cwd "#{Chef::Config[:file_cache_path]}/speedtest-cli"
   user "root"
   group "root"
   code <<-EOH
     cp speedtest_cli.py /usr/local/bin
     EOH
end
