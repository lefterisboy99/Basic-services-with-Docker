ASKISI 1  HY548 CSDP1289  

Askisi 1 

a)katevasa ta 2 nginx me entoli docker pull nginx:1.23.3,nginx:1.23.3-alpine 

b)to alpine einai pio mikro apo to kanoniko  

c)ekana docker run –d –p 80:80 imageid kai meta curl http://localhost:80/ 

StatusCode        : 200 

StatusDescription : OK 

Content           : <!DOCTYPE html> 

                    <html> 

                    <head> 

                    <title>Welcome to nginx!</title> 

                    <style> 

                    html { color-scheme: light dark; } 

                    body { width: 35em; margin: 0 auto; 

                    font-family: Tahoma, Verdana, Arial, sans-serif; } 

                    </style... 

RawContent        : HTTP/1.1 200 OK 

                    Connection: keep-alive 

                    Accept-Ranges: bytes 

                    Content-Length: 615 

                    Content-Type: text/html 

                    Date: Sat, 11 Mar 2023 21:44:32 GMT 

                    ETag: "6398a011-267" 

                    Last-Modified: Tue, 13 Dec 2022 ... 

Forms             : {} 

Headers           : {[Connection, keep-alive], [Accept-Ranges, bytes], [Content-Length, 615], [Content-Type, text/html]...} 

Images            : {} 

InputFields       : {} 

Links             : {@{innerHTML=nginx.org; innerText=nginx.org; outerHTML=<A href="http://nginx.org/">nginx.org</A>; outerText=nginx.org; tagName=A; href=http://nginx.or 

                    g/}, @{innerHTML=nginx.com; innerText=nginx.com; outerHTML=<A href="http://nginx.com/">nginx.com</A>; outerText=nginx.com; tagName=A; href=http://ngin 

                    x.com/}} 

ParsedHtml        : System.__ComObject 

RawContentLength  : 615 

d)docker ps 

PS C:\Users\Lefteris> docker ps 

CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                NAMES 

2081341d6632   904b8cb13b93   "/docker-entrypoint.…"   55 seconds ago   Up 55 seconds   0.0.0.0:80->80/tcp   goofy_pasteur 

e)docker logs container 

PS C:\Users\Lefteris> docker logs goofy_pasteur 

/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration 

/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/ 

/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh 

10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf 

10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf 

/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh 

/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh 

/docker-entrypoint.sh: Configuration complete; ready for start up 

2023/03/11 21:44:26 [notice] 1#1: using the "epoll" event method 

2023/03/11 21:44:26 [notice] 1#1: nginx/1.23.3 

2023/03/11 21:44:26 [notice] 1#1: built by gcc 10.2.1 20210110 (Debian 10.2.1-6) 

2023/03/11 21:44:26 [notice] 1#1: OS: Linux 5.10.16.3-microsoft-standard-WSL2 

2023/03/11 21:44:26 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576 

2023/03/11 21:44:26 [notice] 1#1: start worker processes 

2023/03/11 21:44:26 [notice] 1#1: start worker process 29 

2023/03/11 21:44:26 [notice] 1#1: start worker process 30 

2023/03/11 21:44:26 [notice] 1#1: start worker process 31 

2023/03/11 21:44:26 [notice] 1#1: start worker process 32 

2023/03/11 21:44:26 [notice] 1#1: start worker process 33 

2023/03/11 21:44:26 [notice] 1#1: start worker process 34 

2023/03/11 21:44:26 [notice] 1#1: start worker process 35 

2023/03/11 21:44:26 [notice] 1#1: start worker process 36 

2023/03/11 21:44:26 [notice] 1#1: start worker process 37 

2023/03/11 21:44:26 [notice] 1#1: start worker process 38 

2023/03/11 21:44:26 [notice] 1#1: start worker process 39 

2023/03/11 21:44:26 [notice] 1#1: start worker process 40 

2023/03/11 21:44:26 [notice] 1#1: start worker process 41 

2023/03/11 21:44:26 [notice] 1#1: start worker process 42 

2023/03/11 21:44:26 [notice] 1#1: start worker process 43 

2023/03/11 21:44:26 [notice] 1#1: start worker process 44 

172.17.0.1 - - [11/Mar/2023:21:44:32 +0000] "GET / HTTP/1.1" 200 615 "-" "Mozilla/5.0 (Windows NT; Windows NT 10.0; el-GR) WindowsPowerShell/5.1.19041.2364" "-" 

f)docker stop container 

g) docker start container 

h) docker stop container 

     docker rm container 

 

Askisi 2 

a)docker exec –it container sh meta mpika sto /usr/share/nginx/html anoiksa to arxeio index.html kai egrapsa to MY (episis katevasa editor gt den eixe kapoio default) 

b)docker cp container:usr/share/nginx/html/index.html k.html gia download tis selidas 

    docker cp k.html container:usr/share/nginx/html/index.html afou tin ekana ligo edit 

 c)vlepo to arxiko page prin ginei kapoia allagi kai o logos einai oti ekana to instance rm opote den thimatai ti tou anevasa opote an ksanaftiakso to kainourgio instance einai kainourgio nginx 

 

Askisi 3 

Katevasa to make to git kai to hugo meta ekana git clone to hy548 apo to git meta 

cd hy548;git submodule init;git submodule update meta copy ta files tou fakelou sto fakelo to 

/usr/share/nginx/html kai anoiksa tin selida apo to browser sto localhost 

 

Askisi 4 

a)to exo paradosei (meta egrapsa docker build –t lala . Kai to ekana run me tin entoli sto proto erotima) 

b)docker push lefterisboy99/idk 

c)to diko m einai megalutero gt eprepe na metafero ola ta arxeia gia na ginei build h selida eno to arxiko image exei ena index.html 

d)to ekana builder kai meta ekana copy mono tous fakelous pou xreiazomoun episis gia afto to erotima to ekana me to alphine kai m vgike 47.4mb 

Askisi 5
.github/workflows/docker-image.yml