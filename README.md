# levpoem
Yitzhak Bar Geva's [hugo](http://gohugo.io/) blog using Tom Maiaroto's [redlounge](https://github.com/tmaiaroto) theme.

## Additions and deployment

### [remarkjs](http://remarkjs.com/#1)

Incorporated remarkjs slide presentations.

1. Added branch content/slide.

2. Added the following two parameters to the front matter:
slides = "true"
slidesFile = "wrdma.md"

where slidesFile is the name of slide .md file in static/slides. There is no content in the content file, only the front matter.

3. Added conditionals on the .Params.slides parameter in:
layouts/partials/bodyend.html, layouts/partials/headend.html and layouts/slide/single.html

4. Added layouts/partials/remarkheader.html which pulls in both your (optional) remark css file and remarkjs itself.

5. The action is in layouts/partials/bodyend.html:

### [Docker](https://www.docker.com/)

Two Docker containers: docker-hugo pulls in the latest hugo and builds the site with watching on but no server.  
**docker-compose build** builds the containers. **docker-compose up -d** deploys.  

### [Caddy](https://caddyserver.com/)
docker-caddy serves the site from a volume mapped to the hugo-rendered site. Caddy serves to port 80 in user mode.  
See: [Do I have to run Caddy as root to serve on port 80 or 443?](https://caddyserver.com/docs/faq)
