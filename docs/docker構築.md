# dockerの基本
## images
```
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
$ docker rm $(docker ps -a -q)

# run
$ docker run -i -t book/book:base-centos-7_20180531 /bin/bash
```

# docker-compose
## containerを作成する
```
# run containers in the background
$ docker-compose up -d
```

## containerへ入る
```
$ docker-compose exec app bash
```

## container起動できない場合は
```
$ docker-compose --verbose up
```

# 使い方
```
# create images
$ cd dockerfile/
$ ./build_all.sh
```

# TODO
1. bookユーザーでサーバーへ入る
1. add ruby
1. add rails
1. add bundle 
