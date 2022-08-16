app="zx"
version=$(date +%Y-%m-%d-%H-%M-%S)

# build
docker build -t "heathhopkins/$app:$version" .
docker tag "heathhopkins/$app:$version" "heathhopkins/$app:latest"

# push
docker push "heathhopkins/$app:$version"
docker push "heathhopkins/$app:latest"

# clean up
docker image rm "heathhopkins/$app:$version"
docker image rm "heathhopkins/$app:latest"