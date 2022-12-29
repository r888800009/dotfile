if [ -z "$1" ]
  then
    echo "./setup.sh path"
    echo 'example: ./dotfile/filebrowser/setup.sh $(pwd)'
    exit
fi
echo $1
docker run \
    -d \
    -v $1:/srv \
    -v $1/filebrowser/filebrowser.db:/database.db \
    -v $1/filebrowser/.filebrowser.json:/.filebrowser.json \
    -u $(id -u):$(id -g) \
    -p 8080:80 \
    --name filebrowser1\
    --restart=always\
    filebrowser-trash-cli
