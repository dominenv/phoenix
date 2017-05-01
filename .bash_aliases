# export current user id
export USER_ID=$(id -u -r)
export USER_NAME=$(whoami)

# change shell appearance to notify user he can use tools
PS1="\[\e[0;33m\](dominenv)\[\e[0m\] $PS1"

# if project folder is not present, run setup script
if [ ! -d $PWD/project ]; then
  docker-compose build --build-arg USER_NAME=${USER_NAME} --build-arg USER_ID=${USER_ID} web
  ./setup
fi

mix() {
    docker-compose run --user="${USER_ID}" --workdir="/app/project" web mix "$@"
}

docker-compose stop
docker-compose rm --force
docker-compose up -d

echo "Project available at http://localhost:4000. If this is the first time, wait a minute (project first compile could be still going on)."
