
## Prerequisites
* Install docker-compose from [here](https://docs.docker.com/compose/install/)

## Installation Steps
* Make sure you complete the prerequisites installation
* Run `bootstrap.sh`
* This will start downloading images and will setup the jenkins master-agent duo.
* After jenkins starts up, the script will ask you to plug in a token to the jenkins UI
* Once the token is provided, jenkins will start a manual setup UI.
* Go for "Choose what plugins to install" on the Plugin configuration screen.
* Select "None" at the top to select no plugins and proceed.
* Enter details for a new jenkins username `admin` and password `admin`.
* Hit continue and go back to the shell script running in the terminal and hit enter.
* The script will now start installation of a minimialistic set of plugins.
