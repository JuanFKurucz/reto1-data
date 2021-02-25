# Django Backend example

In this example you will see a simple application that sends the logs to Graylog server

## Settings

In the file `app/settings.py` at [the end](backend/app/settings.py#L123) you will see a configuration for `LOGGING`

## Usage

In the file `helloworld/views.py` [you will see a simple endpoint](backend/helloworld/views.py#L9) sending different levels of logs that will be sent to Greylog depending on the configurations provided in settings.
