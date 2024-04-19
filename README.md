


# vnc-alpine

This container provides a [VNC](https://en.wikipedia.org/wiki/Virtual_Network_Computing)-enabled and wine container based on Alpine Linux.

The container is meant to serve a basis for containerised X11 applications wine . It has the following features:

- Openbox minimal Window Manager
- Graphical login
- wine64

Based on Alpine Linux, the container is less than 250 MB in size. Most of this is the X11 window system wine. 
# Extra:

- Metatrader 5 64bit (need to create a dir "Metatrader" with all the content of a Metatrader5 installation dir)



## Usage

Metatrader 5 on docker and VNC

git clone the repo

change the name of metatrader5 directory created in one number from 1 to 253 (this number will be used for differentiate containers (if you want run many mt5 in the same host)

### VNC LOGIN (password set in docker-compose.yaml)

For graphical login page (after vnc login)
```
login: root
password: root
```

