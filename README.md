# levpoem
Yitzhak Bar Geva's [hugo](http://gohugo.io/) blog using Tom Maiaroto's [redlounge](https://github.com/tmaiaroto) theme.

## Additions and deployment

### [remarkjs](http://remarkjs.com/#1)

Incorporated for slide presentations. A tad unwieldy at the moment since hugo presently can't import non-rendering files. The workaround was to import the slide presentation file as a partial. Define __slides__ "true" in the head matter and everything else false if you don't want the screen cluttered up. See contents/slide/wrdma.md, really just a dummy file with no content and the line {{ partial "slide/wrdmacontent.md" }} in the custom layouts/slide/single.html for an example.

### [Docker](https://www.docker.com/)

Two Docker containers: docker-hugo pulls in the latest hugo and builds the site with watching on but no server.  
**docker-compose build** builds the containers. **docker-compose up -d** deploys.  

### Caddy
docker-caddy serves the site from a volume mapped to the hugo-rendered site. Caddy serves to port 80 in user mode.  
See: [Do I have to run Caddy as root to serve on port 80 or 443?](https://caddyserver.com/docs/faq)
