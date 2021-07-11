FROM taskbjorn/hexo-dockerized

# RUN export http_proxy=proxy-mtl.ubisoft.org:3128 && export https_proxy=proxy-mtl.ubisoft.org:3128

# RUN npm install hexo-cli -g

COPY entrypoint.sh /home/hexo/.docker/entrypoint.sh
