line 600

614
648
469



docker build -t mcmhtmldemo:v1 .
docker run --rm -p 80:80 mcmhtmldemo:v1

# COMPLETE BUILD AND PUSH

cp ShowController.js Dockerfile_complete/MCM_DEMO_COMPLETE/assets/player/ShowController.js

docker build -t mcmhtmldemo:mcmcomplete-1.1.0 Dockerfile_complete
#docker run --rm -p 44480:80 mcmhtmldemo:cmcomplete-1.0.0
docker tag mcmhtmldemo:mcmcomplete-1.1.0 niklaushirt/mcmhtmldemo:mcmcomplete-1.1.0
docker push niklaushirt/mcmhtmldemo:mcmcomplete-1.1.0


# SIMPLE VERSION BUILD AND PUSH

cp ShowController.js Dockerfile_simple/MCM_DEMO_SIMPLE/assets/player/ShowController.js

docker build -t mcmhtmldemo:mcmsimple-1.1.0 Dockerfile_simple
#docker run --rm -p 44480:80 mcmhtmldemo:mcmsimple-1.0.0
docker tag mcmhtmldemo:mcmsimple-1.1.0 niklaushirt/mcmhtmldemo:mcmsimple-1.1.0
docker push niklaushirt/mcmhtmldemo:mcmsimple-1.1.0



