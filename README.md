<p align="center">
	<a target="_blank"><img src="https://user-images.githubusercontent.com/22296699/126440646-15082017-40d2-43ea-adcb-0dd8af5d1cb6.png" width="120" alt="PiHole Logo" /></a>
</p>

# Pi Hole

This is a Dockerfile project to install a container with a running pi-hole application ready to be used in any environment.

# Commands

## Build

To build the image simple download this repository and run the following command in the root folder: 

`docker build . -t your-tag`

## Run

To run the image use the command:

`docker run -p 53:53/tcp -p 53:53/udp -p 20000:80 -p 443:443 --name pihole -d your-tag`

you can customize the port 20000 to be your desired ports.

## Personalization

To get the random password that is generated automatically type: 

`docker logs pihole | grep random`

To set a new password use: 

`docker exec -it pihole pihole -a -p`

To add blocksite by command line use:

`docker exec -it pihole pihole --regex '(^|\.)test\.com$'`

To remove blocksite:  

`docker exec -it pihole pihole -b -d --regex '(^|\.)test\.com$'`

# Pump with steroids the block lists

To increase the number of domains blocked of all kind of sites, i created a file with lists that i can find on internets of site to be blocked (malware, ransomware, ads etc...).

To do so you need to copy the file adlists.list into the GUI Group Management -> Adlists 

Then you need to copy and paste in the form and press the add button, followed by the refresh of the Pihole gravity in the Tools -> update Gravity
It will take a while, take a coffe in the meantime.


