# https://www.nocodb.com
# https://caddyserver.com

### docker build -t shawoo/nocodb:0.106.1 .

### docker run --rm -it -p 80:1979 -v "$(pwd)"/nocodb:/usr/app/data/ shawoo/nocodb:0.106.1

<pre>

  noco:
    image: shawoo/nocodb:0.106.1
    volumes:
      - ./noco:/usr/app/data
      - ./amis/:/usr/src/app/amis/
    environment:
      VER: 2
      CPU: 1
      
      TZ: Asia/Shanghai
      
      NC_DB: pg://a.b.c.d:5432?u=uid&p=pwd&d=noco

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
