yum install expect -y
set timeout -1
spawn ssh-keygen -t rsa
match_max 100000
expect -exact "Generating public/private rsa key pair.\r
Enter file in which to save the key (/root/.ssh/id_rsa): "
send -- "\r"
expect -exact "\r
Enter passphrase (empty for no passphrase): "
send -- "\r"
expect -exact "\r
Enter same passphrase again: "
send -- "\r"
expect eof
