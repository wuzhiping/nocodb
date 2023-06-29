# https://github.com/nocodb/nocodb/releases
# https://www.nocodb.com
# https://caddyserver.com

### docker build -t shawoo/nocodb:0.109.3 .

### docker run --rm -it -p 80:1979 -v "$(pwd)"/nocodb:/usr/app/data/ shawoo/nocodb:0.109.3

<pre>

  noco:
    image: shawoo/nocodb:0.109.3
    volumes:
      - ./noco:/usr/app/data
      - ./amis/:/usr/src/app/amis/
    environment:
      VER: 2
      CPU: 1
      
      TZ: Asia/Shanghai
      
      NC_DB: pg://a.b.c.d:5432?u=uid&p=pwd&d=noco

      NC_PUBLIC_URL: https://nocodb.xxx.com
      NC_AUTOMATION_LOG_LEVEL: ERROR
  
      NC_SMTP_FROM: noco@copr.com
      NC_SMTP_HOST: xxxxxx.qiye.163.com
      NC_SMTP_PORT: 465
      NC_SMTP_USERNAME: xxxxxxxx
      NC_SMTP_PASSWORD: xxxxxxxx
      NC_SMTP_SECURE: "true"
      NC_SMTP_IGNORE_TLS: "false"
    ports:
      - 1979:1979

</pre>


<pre>
docker save -o nocodb.0.109.3.tar shawoo/nocodb:0.109.3
docker load -i nocodb.0.109.3.tar
</pre>
