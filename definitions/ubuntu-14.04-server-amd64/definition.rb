Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size => '1024',
  :disk_size => '65536',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'Ubuntu_64',
  :iso_file => "ubuntu-14.04-server-amd64.iso",
  :iso_src => "http://releases.ubuntu.com/14.04/ubuntu-14.04.3-server-amd64.iso",
  :iso_md5 => "9e5fecc94b3925bededed0fdca1bd417",
  :iso_download_timeout => "1000",
  :boot_wait => "4",
  :boot_cmd_sequence => [
    '<Esc><Esc><Enter>',
    '/install/vmlinuz noapic preseed/url=http://%IP%:%PORT%/preseed.cfg ',
    'debian-installer=en_GB auto locale=en_GB kbd-chooser/method=gb ',
    'hostname=%NAME% ',
    'fb=false debconf/frontend=noninteractive ',
    'keyboard-configuration/modelcode=SKIP keyboard-configuration/layout=gb keyboard-configuration/variant=gb console-setup/ask_detect=false ',
    'initrd=/install/initrd.gz -- <Enter>'
],
  :kickstart_port => "7122",
  :kickstart_timeout => "300",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "shutdown -P now",
  :postinstall_files => [
   "build_time.sh",
   "apt.sh",
   "sudo.sh",
   "vagrant.sh",
   "cleanup.sh"
  ],
  :postinstall_timeout => "10000"
})
