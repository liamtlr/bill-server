# Sky Tech Test - Bill Server

## Setup

 - Clone the repo in your chosen folder
 ````
 git clone https://github.com/wirsindpapst/bill-server.git
 ````
 - Navigate to the newly created folder and run the app:
 ````
 cd bill-server
 ````
 - Install and run Bundler:
 ````
 gem install bundler
 bundle
 ````
 - Run the app:
````
ruby lib/app.rb
````
 - In your chosen browser, enter the following:
````
localhost:4567
````

## Testing

Tested using RSpec and Capybara, to run tests run the following (from within the bill-server folder):
````
rspec
````

## Notes on the build

 - Given I have applied for a Ruby role, and it the language I'm most comfortable with - Ruby was the obvious choice to build the app;
 - As the app is a simple API consumer, Sinatra was the natural choice as it is lightweight but provides everything required for the brief;
 - I wanted to use Bootstrap as it is possible to quickly come up with something professional looking;
 - Simple JQuery used to hide the itemised list of calls - it can be viewed and hidden by clicking a 'Show more/less' button;
 - In addition, I was keen to make sure the bill contents are viewable on multiple devices.  I opted to Bootstrap's grid functionality to enable by bill to respond to different sizes;
 - The Caller object is responsible for making the API call and parsing the results;
 - The Bill object receives a hash (to ensure there are no argument errors if the API call does not provide all bill elements expected), which are then assigned to instance variables in in initialize method. This is the only place in the code where complicated hash internal are exposed;
 - The app's only controller method initiates a caller and passes its output to a bill on instantiation;
 - Partials are utilised to keep the index.erb tidy and to minimise the amount of HTML in one file;
 - Additional formatting of integers to standard 'money format' strings is handled in the instance method 'format
 cost', which is called in the initialize method.

## Potential future optimisations

The following are things I have noted as being possible optimisations should requirements change. I have not implemented these as there is currently no explicit requirement to do so:

 - Default values specified to bill instance variables when the relevant data is not contained in the hash it receives on initialisation (i.e. there are no rentals and there is no key for this field);
 - Related to the above, alternate views rendered if certain data is not present (e.g. 'You made no rentals this month').
