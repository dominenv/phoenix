# export current user id
export USER_ID=$(id -u -r)

# change shell appearance to notify user he can use tools
PS1="\[\e[0;33m\](dominenv)\[\e[0m\] $PS1"

# if project folder is not present, run setup script
if [ ! -d $PWD/project ]; then
  ./setup
fi

docker-compose stop
docker-compose rm --force
docker-compose up -d
