bash "start_iperf3_server" do
   user "root"
   group "root"
   environment 'LD_LIBRARY_PATH' => "/usr/local/lib"
   code <<-EOH
     iperf3 -s -D
     EOH
end
