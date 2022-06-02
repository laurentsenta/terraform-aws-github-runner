custom_shell_commands = [
  "curl -OL https://golang.org/dl/go1.18.3.linux-amd64.tar.gz",
  "sudo tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz",
  "export PATH=$PATH:/usr/local/go/bin",
  "sudo apt-get -y install build-essential",
]

post_install_custom_shell_commands = [
  "TMPFOLDER=`mktemp -d`",
  "git clone https://github.com/testground/testground.git $TMPFOLDER",
  "cd $TMPFOLDER",
  "make install",
]

root_volume_size_gb = 16