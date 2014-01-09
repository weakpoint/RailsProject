# Load the rails application
require File.expand_path('../application', __FILE__)


# Initialize the rails application
RailsProject::Application.initialize!

QUEUE=tracking rake jobs:work
QUEUES=mailers,tasks rake jobs:work
