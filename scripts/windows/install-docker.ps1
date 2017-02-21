Install-PackageProvider -Name NuGet -RequiredVersion 2.8.5.208 -Force

Install-Module -Name DockerMsftProvider -Repository PSGallery -RequiredVersion 1.0.0.1 -Force

Install-Package -Name docker -ProviderName DockerMsftProvider -RequiredVersion 1.13.1 -Force
