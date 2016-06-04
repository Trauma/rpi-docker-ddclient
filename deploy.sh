container="ddclient"
image="tromatik/rpi-docker-ddclient:latest"

docker inspect $image > /dev/null 2>&1
if [[ $? -eq 1 ]]
  then
    echo "Building $image..."
    docker build -t $image .
fi

docker inspect $container > /dev/null 2>&1
if [[ $? -eq 0 ]]
  then
    echo "Removing previous $container container..."
    docker rm -f $container
fi

docker run -ti --name=$container $image
