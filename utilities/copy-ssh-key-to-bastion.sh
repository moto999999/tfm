bastion=`cd ../terraform/gcp && terraform output | tr -d '"' | grep "bastion_public_ip:" | sed 's/^.*: //'`

scp -i ../ssh_key/admin ../ssh_key/admin admin@$bastion:~/.ssh
scp -i ../ssh_key/admin ../ssh_key/admin.pub admin@$bastion:~/.ssh