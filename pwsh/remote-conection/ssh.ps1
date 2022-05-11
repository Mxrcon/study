# multipass launch --name godzilla --cloud-init .cloud-init.yaml
# starting the VM
multipass start godzilla

# config of ssh on the VM
# install powershell into the VM
# $ multipass exec godzilla -- sudo snap install powershell --classic
# find pwsh
# $ multipass exec godzilla -- which pwsh
# $ multipass exec godzilla -- sudo vim /etc/ssh/sshd_config
# add "Subsystem powershell snap/bin/pwsh" to the config
# $ multipass exec godzilla -- sudo systemctl restart sshd 

# creating a network
# $ multipass launch --network en0 --network name=bridge0,mode=manual

# print the ip of the VM
multipass exec godzilla -- hostname -I

$ssh_ip = $(multipass exec godzilla -- hostname -I)
$username = "davi"
$rsa_key = "/home/davi_marcon/.ssh/multipass_rsa"

$session = New-PSSession -HostName $ssh_ip -UserName $username -KeyFilePath $rsa_key

# to enter the session
# $Enter-PSSession $session 

#execute a command into the session
Invoke-Command -Session $session -ScriptBlock {Write-Host "hello word ssh"}


multipass stop godzilla


