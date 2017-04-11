# Arctic Cooler Readme
## Notes
ERD diagram (erd.pdf) is in the root dir

Basic unit tests

Fan operations are delegated to motor

Dynamic method definitions based on states constant

Dynamic predicate method definitions based on states constant

Scopes for ventilation logs have not been tested

UI is incomplete

## Setup
Open a terminal

Clone the repo
`git clone https://github.com/netlogics/arctic_cooler.git`

Change to the repo dir
`cd [repo-dir]`

Setup up the database
`rake db:setup`

Start the webserver
`rails s`

Open a browser and browse
`localhost:3000`
