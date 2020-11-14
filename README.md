# RsaCtfTool-Docker
[Ganapati's RsaCtfTool](https://github.com/Ganapati/RsaCtfTool) with Python 3


Mount your files under /data for relative path access.
```
docker run --rm -it -v $PWD:/data barchok/rsactftool-docker <arguments> 
```