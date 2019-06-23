execute 'add_port_tosemanage' do
  command 'semanage port -m -t ssh_port_t -p tcp 12022'
end
