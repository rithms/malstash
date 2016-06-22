# MalStash
MalStash is a web application that allows users to store their malware data files (CSV) to an online database. The application also provides a table as a visual to provide overall information about each malware classification type that is stored.

### Demo
[A demo of this project can be found here](http://192.241.199.180:3000)


### Tech Stack
- **Platform:** Node.js
- **Framework**: Express.js
- **Template Engine**: Handlebars
- **CSS Framework**: Bootstrap
- **Database**: MySQL

# Setup

These setup instructions are for (and have been tested on) Ubuntu 14.04.
Instructions may vary between distros.

## Install Dependencies

### Installing MySQL
```bash
sudo apt-get update
sudo apt-get install mysql-server
sudo mysql_secure_installation
sudo mysql_install_db
```

### Installing Node.js and npm
```bash
sudo apt-get update
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get install -y build-essential

sudo apt-get install npm
```

### Installing Node Modules
Before you run the project, you will need to install all of its modules, using the following command:
```
npm install
```

## Setup Database
A file named db_setup.sh is provided to help setup the database, tables, and create a user with privileges.

Run the file with the following command:
```bash
sh db_setup.sh
```

The app accesses this database information (host/user/password) through environment variables. These environment variables are assigned, and can be found in the included .env file. Feel free to make changes to this file if needed.

## Run the Project
To run the project, run the following command:
```
nodejs server.js
```
or (depending on your distro)
```
node server.js
```
The server will be listening on port 3000 by default.
