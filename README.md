# Zeus-Docker
Let Zeus CLI run in docker

## Steps
1. Clone the project
2. Change dir to the folder and run docker compose
    ``` sh
    cd Zeus-Docker
    docker-compose up -d
    ```
3. To connect to the shell of container
    ``` sh
    docker exec -it $CONTAINERNAME bash
    ```
## Login to Zepp Account
1. After connected to the shell, run
    ``` sh
    zeus login
    ```
    It will prompt that it has opened the default browser
2. Cat `/root/url`, copy and paste the url to the web browser.
3. Open another shell of the container and use `ssh` to set a reverse port forwarding to the computer with browser. The port is the second line of the content.
    ``` sh
    ssh $USERNAME@$COMPUTERIP -R $PORT:lcoalhost:$PORT
    ```
4. Authenticate on the website and it will correctly login!