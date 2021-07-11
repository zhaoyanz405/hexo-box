# hexo-box
This repo is to build hexo blog by docker

# Get started

## 1. Clone this repo to local

```bash
$ git clone git@github.com:zhaoyanz405/hexo-box.git
```

## 2. Create your local directory for blog

For example,

```bash
$ cd hexo-box
$ mkdir lakeeee
```

## 3. Attach your blog directory

Replace the content between "{" and "}" with your own information.

```docker-compose
version: "3"

services: 
  {your blog name}:
    image: hexo:build
    container_name: {your container name}
    ports: 
      - {your blog port}:4000
    volumes: 
      - {your blog directory}:/home/hexo/.hexo/
```
See example in [here](https://github.com/zhaoyanz405/hexo-box/blob/master/docker-compose.yml).

## 4. Init your hexo blog

Start the box by docker compose, the blog will be inited to your directory metioned above. If the blog has been inited, the box will start your blog in the port configured in the compose file, for the example, it is `4000`,

```bash
$ docker compose up -d
```

If there are somthings showed in the port, congratulations，you have built sucessfully.

## 5. Write your first blog

Run `hexo new <post name>` in your container, for example,

```bash
$ docker exec -it lakeeee hexo new "My first post"
```

Open the file and write something,
![my-first-post](https://github.com/zhaoyanz405/hexo-box/blob/master/images/my-first-post.png)
![my-first-post-content](https://github.com/zhaoyanz405/hexo-box/blob/master/images/my-first-post-content.png)

## 6. Build the blog

Restart the hexo-box, the blog will be built automatically. 

```bash
$ docker compose restart
```

## 7. View the blog

The hexo-box will start the blog server in http://localhost:4000 as default, type the URL in browser,
![blog](https://github.com/zhaoyanz405/hexo-box/blob/master/images/hexo-blog.png)
