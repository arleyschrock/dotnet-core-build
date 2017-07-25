# dotnet-core-build
Dotnet Core build utilities

To use the images from hub.docker.com

  docker pull arleyschrock/dotnet-core-buld
  # run the image for build
  docker run --rm -d -v `pwd`:/opt/project arleyschrock/dotnet-core-build bash -c "dotnet restore && dotnet build"
 
  # create a temporary instance for builds
  docker run --name bob --rm -d -v `pwd`:/opt/project arleyschrock/dotnet-core-build sleep 65365
  docker exec bob "build command here"
