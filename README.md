# qualifications-viewer

`qualifications-viewer` is a simple web app with the following functionality:
* Reads the following JSON feed: https://api.gojimo.net/api/v4/qualifications.
* Displays a list of qualifications based on the data provided by the feed.
* Allows users to click a qualification to be presented with a list of subjects for that qualification.

## Installation

You need to have [Rails](http://installrails.com/) installed. Then, type the following commands in a terminal:

    $ git clone https://github.com/kirascheibelhut/qualifications-viewer.git
    $ cd qualifications-viewer
    $ bundle install
    $ rake db:migrate
    $ rake db:seed

## Usage

In a terminal, navigate to the `qualifications-viewer` directory and type the following	command:

    $ rails server

While the server is running, open a browser window and navigate	to http://localhost:3000.

To stop	the server, hit	Ctrl+C in the terminal window where it is running.
