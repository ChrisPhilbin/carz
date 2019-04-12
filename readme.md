# ///MaintenanceMgr

A simple Sinatra app that incorporates postgresql to persist data.  The app is designed to allow registered users to keep track of maintenance and service history of their vehicles.

### System requirements
In order to avoid using two different databases for production and development, this app requires the use of the pg gem, along with Postgres. [This is a very detailed walk thru on how to install Postgres](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-18-04) assuming you're running Ubuntu 18.04.

### Installation

`git clone git@github.com:ChrisPhilbin/carz.git`

`cd carz`

`bundle install`

`shotgun`

OR

Visit: [https://quiet-refuge-82432.herokuapp.com](https://quiet-refuge-82432.herokuapp.com)

### License

This project is licensed under the MIT License - see [LICENSE](https://github.com/ChrisPhilbin/carz/blob/master/LICENSE) file for details