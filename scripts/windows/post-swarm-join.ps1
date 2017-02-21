netsh advfirewall firewall add rule name="docker_ucp" dir=in action=allow protocol=TCP localport=12376

Stop-Service docker

dockerd --unregister-service

dockerd -H npipe:// -H 0.0.0.0:12376 --tlsverify --tlscacert=c:\ProgramData\docker\ucp\ca.pem --tlscert=c:\ProgramData\docker\ucp\cert.pem --tlskey=c:\ProgramData\docker\ucp\key.pem --register-service

Start-Service docker
