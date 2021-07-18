FROM pihole/pihole:latest

# to run the image use the command:
# docker run -p 53:53/tcp -p 53:53/udp -p 9000:80 -p 443:443 -p 9080:8080 --name pihole -d fedexu/pihole
# to get the random password use: 
# docker logs pihole | grep random
# to set a new password use: 
# docker exec -it pihole pihole -a -p
# to add blocksite:
# docker exec -it pihole pihole --regex '(^|\.)test\.com$'
# to remove blocksite:  
# docker exec -it pihole pihole -b -d --regex '(^|\.)test\.com$'
