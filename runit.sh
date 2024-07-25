
# use 'docker ps' command to check if there're containers hanging
#docker run --privileged -v "$PWD"/projects:/workspace/projects --name cs61c_24_kel -it --rm cs61c_24_kel bash

# i used this last time
docker run --privileged -v "$PWD"/proj --name cs61c_24_kel -it --rm cs61c_24_kel bash
