# dockerの基本
## images
```
# build image use Dockerfile
$ docker build -t book/book:base-centos-7_20180531 .

# show all images
$ docker images

# delete all images
$ docker rmi -f $(docker images -q)
```

## containers
```
# show all container
$ docker ps --all

# delete all container
$ docker stop $(docker ps -a -q)
$ docker rm $(docker ps -a -q)

# run
$ docker run -it book/book:base-centos-7_20180531 /bin/bash
```

# docker-compose
## containerを作成する(imageから作り直す)
```
# run containers in the background
$ docker-compose up -d
```

## containerへ入る
```
# root
$ docker-compose exec app bash
```

## container起動できない場合の詳細確認
```
$ docker-compose --verbose up
```

# 使い方
```
# create images
$ cd dockerfile/
$ ./build_all.sh

# create container
$ docker-compose up -d

# serverへ入る
$ docker-compose exec app bash
```

# TODO
1. bookユーザーでサーバーへ入る
1. add ruby
1. add rails
1. add bundle
