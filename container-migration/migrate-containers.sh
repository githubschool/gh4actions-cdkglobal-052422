#/bin/bash

while read container;
  do
    # Pull container
    docker pull "$container"

    # Tag the container
    docker tag "$container" ghcr.io/"$ORGANIZATION"/"$container"

    # Push the container
    docker push ghcr.io/"$ORGANIZATION"/"$container"

done < "data/$FILE_CONTAINERS"