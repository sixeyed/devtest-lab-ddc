$tag = '10.0.14393.1198'

docker pull "microsoft/windowsservercore:$tag"
docker pull "microsoft/nanoserver:$tag"

docker tag "microsoft/windowsservercore:$tag" microsoft/windowsservercore:latest
docker tag "microsoft/nanoserver:$tag" microsoft/nanoserver:latest
