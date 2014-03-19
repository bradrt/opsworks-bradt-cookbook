git "#{Chef::Config[:file_cache_path]}/iperf3" do
   repository "git://github.com/esnet/iperf.git"
   reference "master"
   action :sync
end

bash "install_iperf3_build" do
   cwd "#{Chef::Config[:file_cache_path]}/iperf3"
   user "root"
   group "root"
   code <<-EOH
     autoreconf
     (./configure && make && make install)
     EOH
end
