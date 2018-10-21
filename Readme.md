# docker-nexus-oss

## Exposed ports / volumes

+ 8081 (http)
+ 8443 (https)
+ /opt/sonatype-work
+ /opt/nexus-3.14.0-04/etc

### Examples:

docker run --name nexus_oss -p 8081:8081 -v /opt/nexus-oss/sonartype-work:/opt/sonatype-work/ -v /opt/nexus-oss/etc:/opt/nexus-3.14.0-04/etc -d chrisro89/docker-nexus-oss