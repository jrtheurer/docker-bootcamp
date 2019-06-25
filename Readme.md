# Docker Bootcamp Lab

1. Install Docker Community Edition
2. Clone the alpine linux image locally by running
    docker pull alpine
3. Startup an instance of alpine linux
    docker run -it alpine /bin/sh
    / # uname -a
    / # exit
    docker ps -a
4. Startup an instance of alpine linux
    docker run -it alpine /bin/sh
    / # pwd
    / # CTRL-P CTRL-Q
    docker ps -a
5. Install node.js, npm, git
    docker attach $CONTAINER_ID_FROM_PREVIOUS_STEP
    / # apk add --no-cache nodejs nodejs-npm git
    / # node --version
    / # npm --version
    / # git --version
    / # exit
5. On windows, we have to allow drive mapping:
    Right click docker icon in tray
    Click settings
    Click shared drives
    Select the checkbox for C
    Click Apply
6. Map volume from host filesystem
    docker ps -a
    docker commit $CONTAINER_ID_FROM_STEP_4 docker-bootcamp
    docker image list
    docker run -it -v C:/PATH/TO/YOUR/CODE:/home/code docker-bootcamp /bin/sh
    / # ls /home/code
    / # cd /home/code
    / # npm i
7. Edit your code
    Open your code in VSCode in windows
    Verify code matches in editor & in terminal using `cat` command
8. Start your project
    / # npm run start
    Navigate to http://localhost:3000/
    / # CTRL-C
    / # exit
9. Map your ports
    docker run -it -v C:/PATH/TO/YOUR/CODE:/home/code -p 3000:3000 docker-bootcamp /bin/sh
    / # cd /home/code
    / # npm start
10. Navigate to http://localhost:3000
11. Build your docker image
    cd C:/PATH/TO/THIS/REPO
    docker build -t docker-bootcamp .
    docker image ls
    docker run -it -v C:/PATH/TO/YOUR/CODE:/home/code -P docker-bootcamp
    / # cd /home/code
    / # npm start
    / # CTRL-P CTRL-Q
12. Get port used by container
    docker ps -a
    Navigate to http://localhost:PORT_NUM


    
